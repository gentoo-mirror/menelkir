# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VALA_MIN_API_VERSION=0.26

inherit fdo-mime gnome2-utils vala cmake-utils multilib

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/elementary/files.git"
	KEYWORDS=""
else
	SRC_URI="https://launchpad.net/${PN}/loki/${PV}/+download/${P}.tar.xz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="A simple, powerful, sexy file manager for the Pantheon desktop"
HOMEPAGE="http://launchpad.net/${PN}"

LICENSE="GPL-3"
SLOT="0"
IUSE="+gvfs nls"

RDEPEND="
	dev-db/sqlite:3
	dev-libs/dbus-glib
	dev-libs/glib:2
	>=x11-libs/granite-0.3
	dev-libs/libgee:0.8
	gnome-extra/zeitgeist
	pantheon-base/plank
	>=x11-libs/gtk+-3.4:3
	x11-libs/libnotify
	x11-libs/pango
	gvfs? ( gnome-base/gvfs )"
DEPEND="${RDEPEND}
	$(vala_depend)
	virtual/pkgconfig
	nls? ( sys-devel/gettext )"

DOCS=( AUTHORS COPYING )

src_prepare() {
	eapply_user

	# Disable generation of the translations (if needed)
	use nls || sed -i -e '/add_subdirectory (po)/d' CMakeLists.txt

	# Replace hard-coded "/usr/lib" in CMakeLists (.so files destination)
	if [[ $(get_libdir) != lib ]]; then
		sed -e "s|\\(\\\${CMAKE_INSTALL_PREFIX}\\)/lib|\\1/$(get_libdir)|g" \
			-i {,lib{core,widgets}/}CMakeLists.txt || die
		sed -e "s|DESTINATION lib/|DESTINATION $(get_libdir)/|g" \
			-i plugins/{contractor,network-places,pantheon-files-{trash,ctags}}/CMakeLists.txt || die
	fi

	cmake-utils_src_prepare
	vala_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DGSETTINGS_COMPILE=OFF
		-DICON_UPDATE=OFF
		-DUSE_UNITY=OFF
		-DVALA_EXECUTABLE="${VALAC}"
	)
	cmake-utils_src_configure
}

pkg_preinst() {
	gnome2_icon_savelist
	gnome2_schemas_savelist
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update
	gnome2_icon_cache_update
	gnome2_schemas_update
}

pkg_postrm() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update
	gnome2_icon_cache_update
	gnome2_schemas_update
}
