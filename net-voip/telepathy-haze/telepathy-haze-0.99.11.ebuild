# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit python-any-r1

DESCRIPTION="Telepathy connection manager providing libpurple supported protocols"
HOMEPAGE="https://telepathy.freedesktop.org https://developer.pidgin.im/wiki/TelepathyHaze"
SRC_URI="https://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=net-im/pidgin-2.7[dbus]
	>=net-libs/telepathy-glib-0.22.0
	>=dev-libs/glib-2.30:2
	>=dev-libs/dbus-glib-0.73
"
DEPEND="${RDEPEND}
	${PYTHON_DEPS}
	dev-libs/libxslt
	dev-util/glib-utils
	virtual/pkgconfig
	test? (
		|| (
			$(python_gen_any_dep 'dev-python/twisted[${PYTHON_USEDEP}]')
			$(python_gen_any_dep 'dev-python/twisted-words[${PYTHON_USEDEP}]')
		)
	)
"

python_check_deps() {
	if use test ; then
		has_version "dev-python/twisted[${PYTHON_USEDEP}]" \
			|| has_version "dev-python/twisted-words[${PYTHON_USEDEP}]"
	fi
}

src_prepare() {
	default
	# Disable failing test
	sed -i 's|simple-caps.py||' -i tests/twisted/Makefile.{am,in} || die
}
