# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop wxwidgets llvm

DESCRIPTION="OpenMSX emulator GUI"
HOMEPAGE="https://openmsx.org/"
SRC_URI="https://github.com/openMSX/openMSX/releases/download/RELEASE_16_0/${PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND="dev-lang/tcl
	dev-libs/libxml2
	>=x11-libs/wxGTK-2.6"
RDEPEND="${DEPEND}
	games-emulation/openmsx"

RESTRICT="strip"

S="${WORKDIR}/${P}"

PATCHES=(
	"${FILESDIR}/${PV}-custom.mk.patch"
	"${FILESDIR}/${PV}-main.mk.patch"
)

src_prepare() {
	default
	# Setting up installation environment
	einfo "Patching installation files"
	sed -i \
		-e "/CXXFLAGS:=/s:$:${CXXFLAGS}:" \
		-e "/LINK_FLAGS:=/s:$:${LDFLAGS}:" \
		-e 's:/usr/share/applications:${DESKTOP_HOOKS_DIR}:g' \
		build/main.mk || die "sed failed" || die
	sed -i \
		-e "/INSTALL_BASE:=/s:/opt/openMSX-Catapult:${GAMES_PREFIX}:" \
		-e "/SYMLINK_FOR_BINARY:=/s:true:false:" \
		-e "/CATAPULT_OPENMSX_BINARY:=/s:/opt/openMSX/bin/openmsx:${GAMES_BINDIR}/openmsx:" \
		-e "/CATAPULT_OPENMSX_SHARE:=/s:/opt/openMSX/share:${GAMES_DATADIR}/openmsx:" \
		build/custom.mk || die "sed custom.mk failed" || die
	# Making workaround for lack of OPENMSX_USER_DATA and OPENMSX_SYSTEM_DATA variables
	# which not let us to use our GAMES_DATADIR properly
	einfo "Patching initialization files"
	sed -i	-e "s:../resources:${GAMES_DATADIR}/${PN}/resources:g" \
		-e "s:../../resources:${GAMES_DATADIR}/${PN}/resources:g" \
			`find dialogs -name "*.wxg"` || die
	sed -i "s:\$(INSTALL_BASE):${GAMES_DATADIR}/${PN}:" build/info2code.mk || die

	# don't give a damn about our nice libraries
	sed -i -e 's:($(COMPONENT_CORE),false):(true,false):g' build/main.mk || die
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	emake \
		INSTALL_BINARY_DIR="${D}${GAMES_BINDIR}" \
		INSTALL_SHARE_DIR="${D}${GAMES_DATADIR}/${PN}" \
		INSTALL_DOC_DIR="${D}"/usr/share/doc/${PF} \
		DESKTOP_HOOKS_DIR="${D}/usr/share/applications" \
		install \
		|| die "install failed"
}
