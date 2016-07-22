all:
	mkdir -p auto
	for f in config build clean; do ln -s /usr/share/livecd-rootfs/live-build/auto/$$f auto/; done
	(export PROJECT=ubuntu-core SUBPROJECT=system-image EXTRA_PPAS='snappy-dev/image snappy-dev/edge' IMAGEFORMAT=plain SUITE=xenial ARCH=$(shell dpkg --print-architecture) lb clean; lb config; lb build)

install:
	echo foo
