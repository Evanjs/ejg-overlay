# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Control NetworkManager via dmenu"
HOMEPAGE="https://github.com/firecat53/networkmanager-dmenu"
SRC_URI=""

EGIT_REPO_URI="https://github.com/firecat53/networkmanager-dmenu.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="net-misc/networkmanager"
RDEPEND="${DEPEND}"

src_install() {
	dobin networkmanager_dmenu
	dodoc README.rst
}
