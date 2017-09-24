# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="1Password Command Line Interface"
HOMEPAGE="https://1password.com/"
SRC_URI="https://cache.agilebits.com/dist/1P/op/pkg/v0.1.1/op_linux_amd64_v0.1.1.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install() {
	default
	dobin op
}
