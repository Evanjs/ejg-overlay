# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Write translations for any software or web site that uses Gettext for localization. Gettext is used widely, in many programming languages and many projects – from WordPress to many PHP projects, Django or pretty much anything on Linux."
HOMEPAGE="https://poedit.net/"
SRC_URI="https://github.com/vslavik/poedit/releases/download/v${PV}-oss/${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

#MY_P="wxWidgets-${PV}"
#S=${WORKDIR}/${MY_P}

DEPEND="app-text/gtkspell"
RDEPEND="${DEPEND}"


src_prepare(){
    default;
}

src_configure(){
    default
}

src_compile(){
	default
}

src_install(){
	default
}
