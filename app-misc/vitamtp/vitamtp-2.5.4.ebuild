# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION="Library to interact with Vita's USB MTP protocol"
HOMEPAGE=""
SRC_URI="https://github.com/codestation/vitamtp/archive/v${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-devel/libtool
sys-devel/automake
sys-devel/gettext"
RDEPEND="${DEPEND}"

src_prepare() {
	eapply_user
	eautoreconf
}
