# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A standalone StatusNotifierItem/AppIndicator tray"
HOMEPAGE="https://github.com/IvanMalison/gtk-sni-tray#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cairo:=[profile?]
	>=dev-haskell/dbus-1.0.0:=[profile?] <dev-haskell/dbus-2.0.0:=[profile?]
	>=dev-haskell/dbus-hslogger-0.1.0.1:=[profile?] <dev-haskell/dbus-hslogger-0.2.0.0:=[profile?]
	>=dev-haskell/enclosed-exceptions-1.0.0.1:=[profile?]
	dev-haskell/gi-cairo:=[profile?]
	dev-haskell/gi-dbusmenugtk3:=[profile?]
	dev-haskell/gi-gdk:=[profile?]
	>=dev-haskell/gi-gdkpixbuf-2.0.16:=[profile?]
	dev-haskell/gi-glib:=[profile?]
	>=dev-haskell/gi-gtk-3.0.21:=[profile?]
	>=dev-haskell/gtk-strut-0.1.2.1:=[profile?]
	>=dev-haskell/haskell-gi-0.21.2:=[profile?]
	>=dev-haskell/haskell-gi-base-0.21.1:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-haskell/status-notifier-item-0.3.0.0:=[profile?] <dev-haskell/status-notifier-item-0.4.0.0:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
