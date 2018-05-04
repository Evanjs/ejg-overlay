# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="JupyterLab computational environment."
HOMEPAGE="https://github.com/jupyterlab/jupyterlab"
SRC_URI="https://github.com/jupyterlab/jupyterlab/archive/v${PV}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-apps/yarn
>=dev-python/notebook-4.3.1
=dev-python/jupyterlab_launcher-0.10*
dev-python/ipython_genutils
virtual/python-futures[$(python_gen_usedep 'python2*')]
dev-python/subprocess32[$(python_gen_usedep 'python2*')]"
RDEPEND="${DEPEND}"

src_compile() {
	yarn
}
