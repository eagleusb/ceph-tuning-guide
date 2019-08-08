# Ceph Tuning Guide

## Benchmark

Giving hell to I/O for fun.

### RBD Bench

```shell
bash rbd/bench.sh
```

### CBT

### fio

```shell
export FIO_BLOCKSIZE=4k FIO_FORKS=2
fio --parse-only rbd-15g-read.fio
fio [--output-format json] rbd-15g-read.fio
```
