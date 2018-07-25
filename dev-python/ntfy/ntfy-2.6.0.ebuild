# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="A utility for sending notifications, on demand and when commands finish."
HOMEPAGE="http://ntfy.rtfd.io"
SRC_URI="https://github.com/dschep/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-python/ruamel-yaml
dev-python/appdirs"
