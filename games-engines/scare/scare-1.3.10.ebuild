# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="SCARE is a secondary clone of jAsea, the Java GPL clone of the Adrift runner by Mark J. Tilford."
HOMEPAGE="https://sites.google.com/site/scarehome/"
SRC_URI="https://c861ddb2-a-62cb3a1a-s-sites.googlegroups.com/site/scarehome/${P}.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND="${DEPEND}"


src_install() {
	dobin source/scare
}
