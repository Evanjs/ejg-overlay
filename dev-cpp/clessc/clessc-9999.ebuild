# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 autotools

DESCRIPTION="A C++ implementation of the LESS CSS Compiler"
HOMEPAGE="https://github.com/BramvdKroef/clessc.git"
SRC_URI=""

EGIT_REPO_URI="https://github.com/BramvdKroef/clessc.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="media-libs/libpng
		virtual/jpeg
		dev-cpp/glog"
RDEPEND="${DEPEND}"

src_prepare() {
	einfo "Regenerating autotools files..."
	eautoreconf
	default
}

