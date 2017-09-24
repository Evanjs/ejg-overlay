# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 qmake-utils

DESCRIPTION="Razer Chroma, Corsair RGB, and other RGB peripherals spectrograph visualizer for Windows and Linux"
HOMEPAGE=""
SRC_URI=""

EGIT_REPO_URI="https://github.com/CalcProgrammer1/KeyboardVisualizer.git"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="media-libs/openal
		dev-libs/hidapi
		dev-qt/qt-creator"
RDEPEND="${DEPEND}"


src_compile() {
	eqmake5
	make
	default
}

src_install() {
	dobin ${PN}
}
