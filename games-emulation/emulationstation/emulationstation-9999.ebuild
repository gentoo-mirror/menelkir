# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

EGIT_REPO_URI="https://github.com/RetroPie/EmulationStation.git"
inherit git-r3 cmake-utils

DESCRIPTION="Emulator front-end supporting keyboardless navigation and custom system themes"
HOMEPAGE="https://github.com/RetroPie/EmulationStation/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	dev-cpp/eigen:3
	dev-libs/boost
	media-libs/freeimage
	media-libs/freetype
	media-libs/libsdl2[sound,joystick,opengl]
	net-misc/curl"
RDEPEND="${DEPEND}"
