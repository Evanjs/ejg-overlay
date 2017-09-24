# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Random systemd utilities"
HOMEPAGE="https://github.com/kylemanna/systemd-utils.git"
SRC_URI=""

EGIT_REPO_URI="https://github.com/kylemanna/systemd-utils.git"

LICENSE="MIT"
SLOT="9999"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	cd units
	insinto /etc/systemd/user/
	doins youtube-tv.service
}
