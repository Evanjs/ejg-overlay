# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit autotools eutils toolchain-funcs git-2

DESCRIPTION="Simple screen locker"
HOMEPAGE="https://github.com/Arcaena/i3lock-color"
EGIT_REPO_URI="https://github.com/Arcaena/i3lock-color.git"
EGIT_BRANCH=master

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

MY_PN=i3lock

RDEPEND="!x11-misc/i3lock
	virtual/pam
	dev-libs/libev
	>=x11-libs/libxkbcommon-0.5.0[X]
	x11-libs/libxcb[xkb]
	x11-libs/xcb-util
	x11-libs/cairo[xcb]"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
DOCS=( CHANGELOG README.md )

pkg_setup() {
	tc-export CC
}

src_prepare() {
	pushd pam
	sed -i -e 's:login:system-auth:' ${MY_PN} || die
	popd
	sed -i -e '/MANDIR/d' Makefile.am || die
	epatch_user
	eautoreconf
}

src_install() {
	default
	doman ${MY_PN}.1
	# mv -v "${D}"/etc/pam.d/${MY_PN} "${D}"/etc/pam.d/${PN} || die
}
