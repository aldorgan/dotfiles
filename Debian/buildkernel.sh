#!/bin/bash
export CONCURRENCY_LEVEL=5
fakeroot make-kpkg --initrd kernel_image kernel_headers
