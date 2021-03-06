# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils toolchain-funcs git-r3

DESCRIPTION="Simple screen locker"
HOMEPAGE="https://github.com/meskarune/i3lock-fancy"
EGIT_REPO_URI="https://github.com/meskarune/i3lock-fancy.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="multi_monitor"

MY_PN=i3lock

RDEPEND="media-gfx/imagemagick[png]
	media-gfx/scrot
	media-libs/imlib2[png]
	x11-misc/i3lock-color"
DEPEND=""
DOCS=( README.md )

pkg_setup() {
	use multi_monitor && EGIT_BRANCH=dualmonitors
}

src_prepare() {
	path=/usr/share/${PN}
	sed -i "s:scriptpath=.*:scriptpath=${path}:" lock || die
	epatch_user
}

src_install() {
	newbin lock ${PN}
	insinto /usr/share/${PN}/icons
	doins icons/circlelock{,dark}.png 
	doins icons/circlelockclear{,dark}.png
	doins icons/lock{,dark}.png
	doins icons/token{,dark}.png
}
