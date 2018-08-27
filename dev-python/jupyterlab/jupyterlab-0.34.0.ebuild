# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_6 )
inherit distutils-r1

DESCRIPTION="JupyterLab computational environment."
HOMEPAGE="https://github.com/jupyterlab/jupyterlab"
SRC_URI="https://github.com/jupyterlab/jupyterlab/archive/v${PV}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-apps/yarn"
RDEPEND="${DEPEND}
>=dev-python/notebook-4.3.1
dev-python/jupyterlab_launcher
dev-python/ipython_genutils
$(python_gen_cond_dep 'virtual/python-futures[${PYTHON_USEDEP}]' python3_6 )
$(python_gen_cond_dep 'dev-python/subprocess32[${PYTHON_USEDEP}]' python3_6 )"

src_compile() {
	yarn
}
