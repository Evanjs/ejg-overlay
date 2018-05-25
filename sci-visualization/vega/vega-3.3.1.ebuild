# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A visualization grammar."
HOMEPAGE="http://vega.github.io/vega"
SRC_URI="https://github.com/vega/vega/archive/v${PV}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	yarn
}

src_install() {
	insinto opt/${PN}
	doins -r build
	doins -r CODE_OF_CONDUCT.md \
	index.d.ts \
	index.js \
	node_modules \
	package.json \
	README.md \
	test \
	yarn.lock
}
