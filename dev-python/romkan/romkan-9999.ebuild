# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1 git-r3

DESCRIPTION="A Romaji/Kana conversion library for Python"
HOMEPAGE="https://github.com/soimort/python-romkan"
SRC_URI=""

EGIT_REPO_URI="https://github.com/soimort/python-romkan"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86_64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
