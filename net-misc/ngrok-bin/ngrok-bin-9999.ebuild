# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Introspected tunnels to localhost"
HOMEPAGE="https://ngrok.com/download"
SRC_URI="https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install() {
	default
	dobin ngrok
}
