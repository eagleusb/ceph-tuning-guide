#!/bin/env bash

set -e

# pool and image must exist
# rbd create benchmark/15GB-image --size 15G

RBD_POOL="benchmark"
RBD_IMG="15GB-image"


seqReadBench() {
  rbd bench \
    ${RBD_POOL}/${RBD_IMG} \
    --io-pattern seq \
    --io-type read \
    --io-total ${1}
}

seqWriteBench() {
  rbd bench \
    ${RBD_POOL}/${RBD_IMG} \
    --io-pattern seq \
    --io-type write \
    --io-total ${1}
}


seqReadBench 15G
seqWriteBench 15G
