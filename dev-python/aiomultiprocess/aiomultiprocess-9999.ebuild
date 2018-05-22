# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )
inherit distutils-r1 git-r3

DESCRIPTION="Take a modern Python codebase to the next level of performance."
HOMEPAGE="https://github.com/jreese/aiomultiprocess"

EGIT_REPO_URI="https://github.com/jreese/aiomultiprocess"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-python/setuptools-38.6.0"
RDEPEND="${DEPEND}"
