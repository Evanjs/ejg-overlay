# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )
inherit distutils-r1 git-r3

DESCRIPTION="MAL: A MyAnimeList Command Line Interface"
HOMEPAGE="http://mal.readthedocs.io"
SRC_URI=""

EGIT_REPO_URI="https://github.com/ryukinix/mal"

LICENSE="GPL-3"
SLOT="9999"
KEYWORDS=""
IUSE=""

DEPEND="=dev-python/decorating-0.5.2
        >=dev-python/appdirs-1.4.3
        >=dev-python/requests-2.18.1"
RDEPEND="${DEPEND}"
