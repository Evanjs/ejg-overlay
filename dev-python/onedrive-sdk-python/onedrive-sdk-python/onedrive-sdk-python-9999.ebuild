# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1
inherit git-r3

DESCRIPTION="OneDrive SDK for Python!"
HOMEPAGE="https://dev.onedrive.com/"
SRC_URI=""

EGIT_REPO_URI="https://github.com/OneDrive/onedrive-sdk-python"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-python/requests-2.6.1"
RDEPEND="${DEPEND}"
