# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://github.com/less/less.js/archive/v${PV}.tar.gz"

MY_PN="less.js"
MY_P="${MY_PN}-${PV}"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"
