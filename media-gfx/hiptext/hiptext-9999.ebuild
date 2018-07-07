# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 autotools eutils

DESCRIPTION="Turn images into text better than caca/aalib"
HOMEPAGE="https://github.com/jart/hiptext"
EGIT_REPO_URI="https://github.com/jart/hiptext.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-cpp/gflags
dev-cpp/glog
virtual/ffmpeg
media-libs/freetype
dev-util/ragel
virtual/jpeg
media-libs/libpng
sys-devel/autoconf
sys-devel/automake
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}"

src_prepare() {
	#epatch "${FILESDIR}"/${PN}-deprecated-av-flags.diff
	EPATCH_FORCE=yes EPATCH_SUFFIX=patch EPATCH_SOURCE="${FILESDIR}" \
	epatch
	einfo "regenerating autotools files..."
	eautoreconf
	default
}

src_configure() {
	default
}
