# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1
inherit git-r3

DESCRIPTION="Check if a file is ignored by a .zgitignore file (which is compatible with a .gitignore file)"
HOMEPAGE=""
SRC_URI=""

EGIT_REPO_URI="https://github.com/zb3/zgitignore.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
