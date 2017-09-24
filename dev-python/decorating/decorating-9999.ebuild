# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
inherit distutils-r1 git-r3

DESCRIPTION="decorating: Literally decorating your terminal with decorators"
HOMEPAGE="http://decorating.readthedocs.io"
SRC_URI=""

EGIT_REPO_URI="https://github.com/ryukinix/decorating"

LICENSE="MIT"
SLOT="9999"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
