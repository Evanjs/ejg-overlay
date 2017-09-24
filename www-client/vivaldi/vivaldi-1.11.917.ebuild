# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

inherit ninja-utils
#inherit distutils-r1
inherit git-r3

EGIT_REPO_URI="https://chromium.googlesource.com/chromium/tools/depot_tools.git"
EGIT_CLONE_TYPE="shallow"
EGIT3_STORE_DIR="${WORKDIR}/${P}/depot_tools"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DESCRIPTION="A Browser for Our Friends"
HOMEPAGE="https://vivaldi.com"
SRC_URI="https://vivaldi.com/source/vivaldi-source_${PV}.tar.xz"

LICENSE=""
SLOT="1"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_compile(){
	./chromium/build/install-build-deps.sh --no-syms --no-arm --no-chromeos-fonts --no-nac1 --no-prompt
	#git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
	export PATH="$PATH":$PWD/depot_tools
	export GYP_DEFINES="ffmpeg_branding=Chrome"
	python scripts/runhooks.py
	 out/Release vivaldi
}
