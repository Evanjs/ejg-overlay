# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 cmake-utils

DESCRIPTION="A Microsoft project for cloud-based client-server communication in native code using a modern asynchronous C++ API design."
HOMEPAGE="https://github.com/Microsoft/cpprestsdk"
SRC_URI=""

EGIT_REPO_URI="https://github.com/Microsoft/cpprestsdk.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="-debug"

DEPEND="sys-devel/gcc
dev-vcs/git
sys-devel/make
sys-libs/zlib
dev-libs/boost
|| ( dev-libs/openssl dev-libs/libressl )
dev-util/cmake"
RDEPEND="${DEPEND}"

CMAKE_USE_DIR="${S}/Release"
