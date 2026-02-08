#!/bin/bash

MONFILE=`ls -1rt ../mintz80_monitor/z80monitor_a000_SIO_*.bin | tail -n 1`
echo "Monfile: ${MONFILE}"

BASFILE=`ls -1rt ./basic8k_LF_*.bin | tail -n 1`
echo "Basfile: ${BASFILE}"

dd if=${BASFILE} of=part1.bin bs=1k count=8
dd if=${MONFILE} of=part2.bin bs=128 count=59
dd if=${BASFILE} of=part3.bin bs=128 count=1 skip=123
cat part1.bin part2.bin part3.bin > combined.bin
rm -f part?.bin
dd if=combined.bin of=/dev/sdb bs=512 seek=1

