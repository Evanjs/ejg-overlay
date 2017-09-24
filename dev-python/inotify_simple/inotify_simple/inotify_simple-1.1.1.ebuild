# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="A simple Python wrapper around inotify. No fancy bells and whistles, just a literal wrapper with ctypes."
HOMEPAGE="http://inotify_simple.readthedocs.org/"
SRC_URI="https://github.com/chrisjbillington/inotify_simple/archive/v${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
