# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1 git-r3

DESCRIPTION="Hive Plots in using Python & matplotlib!"
HOMEPAGE="https://github.com/ericmjl/hiveplot"

EGIT_REPO_URI="https://github.com/ericmjl/hiveplot.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
>=dev-python/matplotlib-2.0.0
>=dev-python/pycodestyle-2.3.1"

python_test() {
	py.test -v
}
