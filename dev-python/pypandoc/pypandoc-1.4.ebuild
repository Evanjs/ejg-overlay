# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{6,7} )
inherit distutils-r1

DESCRIPTION="Thin wrapper for \"pandoc\" (MIT)"
HOMEPAGE="http://pypi.python.org/pypi/pypandoc/"
SRC_URI="https://github.com/bebraw/pypandoc/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/wheel"
RDEPEND="${DEPEND}"
