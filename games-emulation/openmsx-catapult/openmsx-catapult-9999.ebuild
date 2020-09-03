# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop wxwidgets llvm git-r3

DESCRIPTION="OpenMSX emulator GUI"
HOMEPAGE="https://openmsx.org/"
EGIT_REPO_URI="https://github.com/openMSX/wxcatapult.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	dev-lang/tcl:0=
	dev-libs/libxml2
	>=x11-libs/wxGTK-2.6
	games-emulation/openmsx
"

RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${P}"

src_prepare() {
	default
	sed -i 's@SYMLINK_FOR_BINARY:=true@SYMLINK_FOR_BINARY:=false@' build/custom.mk
	sed -i 's@INSTALL_BASE:=/opt/openMSX@INSTALL_BASE:=/usr/share/openmsx@' build/custom.mk
	echo 'INSTALL_DOC_DIR:=/usr/share/doc/openmsx' >> build/custom.mk
	echo 'INSTALL_SHARE_DIR:=/usr/share/openmsx' >> build/custom.mk
	echo 'INSTALL_BINARY_DIR:=/usr/bin' >> build/custom.mk
}

src_install() {
	emake \
		V=1 \
		INSTALL_BINARY_DIR="${ED}/usr/bin" \
		INSTALL_SHARE_DIR="${ED}/usr/share/${PN}" \
		INSTALL_DOC_DIR="${D}"/usr/share/doc/${PF} \
		install

	einstalldocs

	make_desktop_entry "catapult"
}

