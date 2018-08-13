# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{6,7} )
inherit distutils-r1 python-r1

DESCRIPTION="Get and set values in your .env file in local and production servers."
HOMEPAGE="https://github.com/theskumar/python-dotenv"
SRC_URI="https://github.com/theskumar/python-dotenv/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-util/bumpversion
dev-python/flake8
dev-python/click
dev-python/sh
dev-python/wheel
dev-python/ipython
dev-python/pypandoc"

#S="${WORKDIR}/${MY_P}"

python_test() {
	py.test -v
}
