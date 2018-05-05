# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} )
inherit distutils-r1

DESCRIPTION="Color palettes for Python"
HOMEPAGE="https://jiffyclub.github.io/palettable/"
SRC_URI="https://github.com/jiffyclub/palettable/archive/v${PV}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
