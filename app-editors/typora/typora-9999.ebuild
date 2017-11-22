# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A truly minimal markdown editor."
HOMEPAGE="https://typora.io/"
SRC_URI="https://typora.io/linux/Typora-linux-x64.tar.gz
x86? ( https://typora.io/linux/Typora-linux-ia32.tar.gz )"

MY_PN="Typora-linux-x64"
LICENSE="EULA"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_PN}

src_install() {
	local destdir="/opt/${PN}"
	insinto $destdir
	doins -r locales resources
	doins icudtl.dat \
	blink_image_resources_200_percent.pak \
	content_resources_200_percent.pak \
	content_shell.pak \
	pdf_viewer_resources.pak \
	ui_resources_200_percent.pak \
	views_resources_200_percent.pak \
	libffmpeg.so \
	libnode.so \
	natives_blob.bin \
	snapshot_blob.bin
	LICENSE \
	LICENSES.chromium.html \
	version

	exeinto $destdir
	newexe Typora typora

	dosym $destdir/typora /usr/bin/typora
}

pkg_preinst() {
    xdg_pkg_preinst
    gnome2_icon_savelist
}

pkg_postinst() {
    xdg_pkg_postinst
    gnome2_icon_cache_update
}

pkg_postrm() {
    xdg_pkg_postrm
    gnome2_icon_cache_update
}

