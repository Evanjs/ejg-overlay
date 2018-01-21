# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION=""
HOMEPAGE=""
SRC_URI=""

EGIT_REPO_URI="https://github.com/hkbakke/bash-insulter"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	insinto /etc/
	doins src/bash.command-not-found
}
