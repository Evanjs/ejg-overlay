

EAPI=6

MY_PN="${PN/-bin/}"
MULTILIB_COMPAT=( abi_x86_64 )

inherit desktop gnome2-utils multilib-build pax-utils unpacker xdg-utils

DESCRIPTION="Team collaboration tool"
HOMEPAGE="http://www.slack.com/"
SRC_URI="https://downloads.slack-edge.com/linux_releases/${MY_PN}-desktop-${PV}-amd64.deb"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64 -*"
IUSE="pax_kernel dark_theme"
RESTRICT="bindist mirror"

RDEPEND="app-crypt/libsecret:0[${MULTILIB_USEDEP}]
	dev-libs/atk:0[${MULTILIB_USEDEP}]
	dev-libs/expat:0[${MULTILIB_USEDEP}]
	dev-libs/glib:2[${MULTILIB_USEDEP}]
	dev-libs/nspr:0[${MULTILIB_USEDEP}]
	dev-libs/nss:0[${MULTILIB_USEDEP}]
	gnome-base/gconf:2[${MULTILIB_USEDEP}]
	media-libs/alsa-lib:0[${MULTILIB_USEDEP}]
	media-libs/fontconfig:1.0[${MULTILIB_USEDEP}]
	media-libs/freetype:2[${MULTILIB_USEDEP}]
	net-misc/curl:0[${MULTILIB_USEDEP}]
	net-print/cups:0[${MULTILIB_USEDEP}]
	sys-apps/dbus:0[${MULTILIB_USEDEP}]
	x11-libs/cairo:0[${MULTILIB_USEDEP}]
	x11-libs/gdk-pixbuf:2[${MULTILIB_USEDEP}]
	x11-libs/gtk+:2[${MULTILIB_USEDEP}]
	x11-libs/libX11:0[${MULTILIB_USEDEP}]
	x11-libs/libxcb:0/1.12[${MULTILIB_USEDEP}]
	x11-libs/libXcomposite:0[${MULTILIB_USEDEP}]
	x11-libs/libXcursor:0[${MULTILIB_USEDEP}]
	x11-libs/libXdamage:0[${MULTILIB_USEDEP}]
	x11-libs/libXext:0[${MULTILIB_USEDEP}]
	x11-libs/libXfixes:0[${MULTILIB_USEDEP}]
	x11-libs/libXi:0[${MULTILIB_USEDEP}]
	x11-libs/libxkbfile:0[${MULTILIB_USEDEP}]
	x11-libs/libXrandr:0[${MULTILIB_USEDEP}]
	x11-libs/libXrender:0[${MULTILIB_USEDEP}]
	x11-libs/libXScrnSaver:0[${MULTILIB_USEDEP}]
	x11-libs/libXtst:0[${MULTILIB_USEDEP}]
	x11-libs/pango:0[${MULTILIB_USEDEP}]"

QA_PREBUILT="opt/slack/slack
	opt/slack/resources/app.asar.unpacked/node_modules/*
	opt/slack/libnode.so
	opt/slack/libffmpeg.so
	opt/slack/libCallsCore.so"

S="${WORKDIR}"

src_prepare() {
	default

	if use dark_theme ; then
		# apply dark theme "patch"
		cat ${FILESDIR}/slack-bin-dark-theme >> ${WORKDIR%/}/usr/lib/${MY_PN}/resources/app.asar.unpacked/src/static/ssb-interop.js
		cat ${FILESDIR}/slack-bin-dark-theme >> ${WORKDIR%/}/usr/lib/${MY_PN}/resources/app.asar.unpacked/src/static/index.js
	fi
}

src_install() {
	insinto /usr/share/pixmaps
	doins usr/share/pixmaps/${MY_PN}.png

	newicon -s 512 usr/share/pixmaps/${MY_PN}.png ${MY_PN}.png
	domenu usr/share/applications/${MY_PN}.desktop

	insinto /opt/${MY_PN}
	doins -r usr/lib/${MY_PN}/.
	fperms +x /opt/${MY_PN}/${MY_PN}
	dosym ../../opt/${MY_PN}/${MY_PN} usr/bin/${MY_PN}

	use pax_kernel && pax-mark -m ${ED%/}/opt/${MY_PN}/${MY_PN}

}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}
