# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Efficient, Pythonic bidirectional map implementation and related functionality."
HOMEPAGE="https://bidict.readthedocs.io/en/latest/"
SRC_URI="https://github.com/jab/bidict/archive/v${PV}.tar.gz"

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit distutils-r1

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
