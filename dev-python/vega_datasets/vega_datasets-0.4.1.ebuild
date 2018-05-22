# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{5,6} )
inherit distutils-r1 git-r3

DESCRIPTION="A Python package for offline access to vega datasets"
HOMEPAGE="https://github.com/altair-viz/vega_datasets"
SRC_URI="https://github.com/altair-viz/vega_datasets/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/pandas"
RDEPEND="${DEPEND}"

python_test() {
	py.test -v
}
