# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION="Console-based Audio Visualizer for ALSA (MPD and Pulseaudio)"
HOMEPAGE="http://karlstav.github.io/cava"
SRC_URI="https://github.com/karlstav/cava/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-devel/libtool
		sys-libs/ncurses
		sci-libs/fftw:3.0+
		media-sound/pulseaudio
		dev-libs/iniparser
		media-libs/alsa-lib"
RDEPEND="${DEPEND}"

src_prepare() {
	einfo "Regenerating autotools files..."
	eautoreconf
	default
}
