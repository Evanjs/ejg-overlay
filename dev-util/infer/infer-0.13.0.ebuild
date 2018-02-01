# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION="Infer is a static analysis tool for Java, Objective-C and C, written in OCaml."
HOMEPAGE="http://fbinfer.com/"
SRC_URI="https://github.com/facebook/infer/archive/v0.13.0.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+c java"

DEPEND="dev-ml/opam
dev-lang/python
virtual/pkgconfig
c? ( || ( sys-devel/gcc sys-devel/llvm ) )
sys-devel/automake
sys-devel/autoconf
java? ( virtual/jdk )"
RDEPEND="${DEPEND}"

src_prepare() {
	eapply_user
	default
	eautoreconf
}

src_compile() {
	emake
}
