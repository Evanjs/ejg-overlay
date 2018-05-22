# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="Take a modern Python codebase to the next level of performance."
HOMEPAGE="https://github.com/jreese/aiomultiprocess"
SRC_URI="https://github.com/jreese/aiomultiprocess/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-python/setuptools-38.6.0"
RDEPEND="${DEPEND}"
