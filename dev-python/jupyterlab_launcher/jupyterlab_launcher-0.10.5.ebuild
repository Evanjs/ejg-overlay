# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Launch an application built using JupyterLab"
HOMEPAGE="https://github.com/jupyterlab/jupyterlab_launcher"
SRC_URI="https://github.com/jupyterlab/jupyterlab_launcher/archive/v${PV}.tar.gz"

LICENSE="EULA"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-python/jsonschema-2.6.0
>=dev-python/notebook-4.2.0"
RDEPEND="${DEPEND}"

python_test() {
	esetup.py test
}
