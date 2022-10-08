from Verilog_VCD import *
from argparse import ArgumentParser as AP
from sortedcontainers import SortedList  # in package sortedcontainers from pip
from itertools import zip_longest
import os

import logging 

parser = AP('Convert VCD file into synchronized signals')
parser.add_argument('filename', help='VCD filename')
parser.add_argument('--clock', help='Net name of clock, used to detect clock cycles')
parser.add_argument('--list-sigs', default=False, action='store_true', help='Only list the signals')
parser.add_argument('--sigs', nargs='+', help='Signals to dump')
parser.add_argument('--output-folder', help='Folder to output')
parser.add_argument('--verbose', default=False, action='store_true')

args = parser.parse_args()

logging.basicConfig(level=logging.DEBUG if args.verbose else logging.WARNING)

if args.list_sigs:
    res = list_sigs(args.filename)
    print('\n'.join(res))
    exit(0)

def get_signal_by_name(v, name):
    for k, s in v.items():
        for sigs in s['nets']:
            sig_name = sigs['name']
            sig_hier = sigs['hier']
            if '{}.{}'.format(sig_hier, sig_name) == name:
                return [sigs], SortedList(s['tv'])
    return None, None

def detect_clock_period(tv):
    a, b = tv[0:2]
    half_period = b[0] - a[0]
    for cur, nxt in zip(tv, tv[1:]):
        assert nxt[0] - cur[0] == half_period, 'Irregular clock (period not the same throughout the tv), please check'
    return 2 * half_period

v = parse_vcd(args.filename)

nets, tv = get_signal_by_name(v, args.clock)
if not nets:
    print('Cannot locate signal name {}'.format(args.clock))
    exit(0)


# period = detect_clock_period(tv)
# logging.info('Clock period: {}'.format(period))

clock_tv = tv


if not args.sigs:
    siglist = list_sigs(args.filename)
else:
    siglist = args.sigs

for sig_name in siglist:
    if '\\' in sig_name:
        print("Skipping: ", sig_name)
        continue
    # end_pos = sig_name.find('[')
    # if end_pos == -1:
    #     end_pos = len(sig_name)
    sig_file_name = os.path.join(args.output_folder, sig_name + '.x')
    nets, tv = get_signal_by_name(v, sig_name)
    if tv is None:
        print("Signal for {} is not found, skipping".format(sig_name))
        continue
    sig_iter = zip_longest(iter(tv), iter(tv[1:]))
    (cur_sig_time, cur_sig_value), nxt  = next(sig_iter)
    if nxt is not None:
        nxt_sig_time, nxt_sig_value = nxt
    txt = []
    done = True

    for cur_clock_time, _ in clock_tv:
        if nxt is not None and nxt_sig_time <= cur_clock_time:
            (cur_sig_time, cur_sig_value), nxt = next(sig_iter)
            if nxt is not None:
                nxt_sig_time, nxt_sig_value = nxt
        try:
            # f.writelines(['{:b}\n'.format(int(cur_sig_value, 2))])
            txt.append('{:b}\n'.format(int(cur_sig_value, 2)))
        except:
            txt.append('x\n')

    if done:
        with open(sig_file_name, 'w+') as f:
            f.writelines(txt)
