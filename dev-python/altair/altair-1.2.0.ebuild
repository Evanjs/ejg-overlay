# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Declarative statistical visualization library for Python"
HOMEPAGE="https://altair-viz.github.io/"
SRC_URI="https://github.com/altair-viz/${PN}/archive/v${PV}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""

RDEPEND="${DEPEND}
dev-python/entrypoints
dev-python/jsonschema
dev-python/numpy
dev-python/pandas
dev-python/six
dev-python/toolz
dev-python/typing"
