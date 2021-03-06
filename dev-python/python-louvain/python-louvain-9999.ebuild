# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,6} )

inherit git-r3 distutils-r1

DESCRIPTION="Louvain Community Detection"
HOMEPAGE="https://github.com/taynaud/python-louvain"
EGIT_REPO_URI="https://github.com/taynaud/python-louvain.git"
LICENSE="GPL-2"
SLOT="0"

python_test() {
	py.test -v || die
}
