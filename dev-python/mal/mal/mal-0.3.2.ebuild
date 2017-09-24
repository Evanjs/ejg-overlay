# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="MAL: A MyAnimeList Command Line Interface"
HOMEPAGE="http://mal.readthedocs.io"
SRC_URI="https://github.com/ryukinix/mal/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="=dev-python/decorating-0.5.2
        >=dev-python/appdirs-1.4.3
		>=dev-python/requests-2.18.1"
RDEPEND="${DEPEND}"
