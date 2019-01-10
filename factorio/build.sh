#!/bin/bash

. ../common.sh

download() {
	wget -O factorio_headless.tar.xz https://factorio.com/get-download/stable/headless/linux64
}

downloadtest() {
	wget -O FactorioContest_0.0.2.zip https://www.dropbox.com/s/8ociy5o9qd0seft/FactorioContest_0.0.2.zip?dl=0
}

[[ ! `ls factorio_headless*.tar.xz` ]] && download
[[ -f FactorioContest_0.0.2.zip ]] || downloadtest


docker_build factorio
