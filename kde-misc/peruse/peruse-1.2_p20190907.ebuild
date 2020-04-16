# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KDE_HANDBOOK="forceoptional"
VIRTUALX_REQUIRED="test"
inherit kde.org 

DESCRIPTION="A comic book viewer based on Framework 5, for use on multiple form factors."
HOMEPAGE="http://peruse.kde.org"

if [[ ${PV} == 9999 ]];then
	inherit git-r3
	SRC_URI=""
	KEYWORDS=""
	EGIT_REPO_URI="git://anongit.kde.org/${PN}.git"
else
	COMMIT="8c27d0130c3965c19b95e25c9ac1aa7241141964"
	SRC_URI="https://github.com/KDE/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~arm ~arm64 ~x86"
	S="${WORKDIR}/${PN}-${COMMIT}"
fi

LICENSE="LGPL-2.1"
IUSE=""

CDEPEND="
	$(add_frameworks_dep baloo)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kiconthemes)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep kdeclarative)
	$(add_frameworks_dep kfilemetadata)
	$(add_frameworks_dep kirigami)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep karchive)
	$(add_qt_dep qtdeclarative)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtwidgets)
	$(add_qt_dep qtopengl)
	$(add_qt_dep qtsql)
"
DEPEND="${CDEPEND}
	sys-devel/gettext
"

pkg_postinst(){
	echo
	elog "For cb* (cbr, cbz, etc.), pdf, deja-vu and epub support, you can do it by"
	elog "installing kde-apps/okular"
	echo
}
