# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1 git-r3

DESCRIPTION="For PyCon, PyData, ODSC, and beyond!"
HOMEPAGE="http://ericmjl.github.io/Network-Analysis-Made-Simple"

EGIT_REPO_URI="https://github.com/ericmjl/Network-Analysis-Made-Simple.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-python/matplotlib
dev-python/networkx
dev-python/pandas
dev-python/hiveplot
dev-python/nxviz
dev-python/jupyter
sci-libs/scipy
dev-python/python-louvain"
RDEPEND="${DEPEND}"
