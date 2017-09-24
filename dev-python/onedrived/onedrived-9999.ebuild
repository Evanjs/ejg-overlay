# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A Microsoft OneDrive client for Linux, written in Python3."
HOMEPAGE="https://github.com/xybu/onedrived-dev"
SRC_URI=""

PYTHON_COMPAT=( python3_6 )

inherit git-r3
inherit distutils-r1

EGIT_REPO_URI="${HOMEPAGE}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="${PYTHON_DEPS}
		sys-devel/gcc:*
		>=dev-lang/python-3.4.5:=
		dev-python/inotify_simple
		dev-python/dbus-python
		>=dev-python/keyring-10.1
		dev-python/psutil
		dev-python/arrow
		dev-python/bidict
		>=dev-python/tabulate-0.7.7
		dev-python/send2trash
		>=dev-python/requests-2.9.1
		>=dev-python/click-6.6
		>=dev-python/colorama-0.3.7
		>=dev-python/setuptools-30.0.0
		dev-python/onedrive-sdk-python
		>=dev-python/daemonocle-1.0.1
		dev-python/zgitignore
		net-misc/ngrok-bin"
RDEPEND="${DEPEND}"
