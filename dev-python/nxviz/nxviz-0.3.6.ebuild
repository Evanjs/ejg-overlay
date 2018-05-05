# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Visualization Package for NetworkX"
HOMEPAGE="http://nxviz.readthedocs.io/"
SRC_URI="https://github.com/ericmjl/nxviz/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="=dev-python/hypothesis-3.56.5
=dev-python/cryptography-2.2.2
=dev-python/pandas-0.22.0
=dev-python/matplotlib-2.2.2
=dev-python/palettable-3.1.0
=dev-python/numpy-1.14.3
=dev-python/pyyaml-3.12
=dev-python/seaborn-0.8.1
=dev-python/more-itertools-4.1.0"

RDEPEND="${DEPEND}"
