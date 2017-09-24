# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="A Python library for creating super fancy Unix daemons"
HOMEPAGE="https://github.com/jnrbsn/daemonocle"
SRC_URI="https://github.com/jnrbsn/daemonocle/archive/v1.0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
