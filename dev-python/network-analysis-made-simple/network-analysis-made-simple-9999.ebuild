# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_6 )
inherit git-r3

DESCRIPTION="For PyCon, PyData, ODSC, and beyond!"
HOMEPAGE="http://ericmjl.github.io/Network-Analysis-Made-Simple"

EGIT_REPO_URI="https://github.com/ericmjl/Network-Analysis-Made-Simple.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""


DEPEND="app-text/pandoc"
RDEPEND="${RDEPEND}
dev-python/matplotlib
dev-python/networkx
dev-python/pandas
dev-python/hiveplot
dev-python/nxviz
dev-python/jupyter
sci-libs/scipy
dev-python/python-louvain"

src_compile() {
	echo ""
}

src_install() {
	echo ""
}

pkg_postinst() {
	echo "All requirements for network-analysis-made-simple have been installed."
	echo "Please clone the repository from https://github.com/ericmjl/Network-Analysis-Made-Simple.git to a directory of your choice"
}
