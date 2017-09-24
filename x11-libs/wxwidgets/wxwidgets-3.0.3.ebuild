# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="wxWidgets is a C++ library that lets developers create applications for Windows, Mac OS X, Linux and other platforms with a single code base. It has popular language bindings for Python, Perl, Ruby and many other languages, and unlike other cross-platform toolkits, wxWidgets gives applications a truly native look and feel because it uses the platform's native API rather than emulating the GUI. It's also extensive, free, open-source and mature."
HOMEPAGE="https://www.wxwidgets.org/"
SRC_URI="https://github.com/wxWidgets/wxWidgets/releases/download/v${PV}/${P}.tar.bz2"

#MY_P="wxWidgets-{PV}"

LICENSE="wxWindows Library Licence"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

#${S} = ${FILESDIR}/${MY_PV}
MY_P="wxWidgets-${PV}"
S=${WORKDIR}/${MY_P}

DEPEND=""
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
