# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Wow such top. So stats. More better than regular top."
HOMEPAGE="http://parall.ax/vtop"
SRC_URI=""

EGIT_REPO_URI="https://github.com/MrRio/vtop.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="net-libs/nodejs"
RDEPEND="${DEPEND}"

DOCS="${S}/docs"

src_install() {
	local destdir="/opt/${PN}"
	insinto ${destdir}
	doins *
	dodir node_modules
	doins -r node_modules
	dodir sensors
	doins -r sensors
	dodir themes
	doins -r themes
	dodir bin
	doins -r bin
	
	fperms +x ${destdir}/bin/vtop.js
	dosym ${destdir}/bin/vtop.js /usr/bin/vtop

	einstalldocs
}
