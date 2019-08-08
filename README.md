# Ceph Tuning Guide

## Benchmark

### RBD Bench

### CBT

### fio

```shell
export BLOCKSIZE=4k
fio --parse-only rbd-15GB.fio
fio [--output-format json] rbd-15GB.fio
```
