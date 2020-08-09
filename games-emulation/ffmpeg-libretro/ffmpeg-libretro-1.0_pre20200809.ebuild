# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/FFmpeg"
LIBRETRO_COMMIT_SHA="c8b21be5c01ebe0fdd84d80d29b7298488bed0c2"

inherit libretro-core

DESCRIPTION="FFmpeg frontend for libretro"
HOMEPAGE="https://github.com/libretro/FFmpeg"
KEYWORDS="amd64 x86"

LICENSE="LGPL-2.1 GPL-2 GPL-3 LGPL-3"

SLOT="0"

DEPEND="media-video/ffmpeg"
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

S="${S}/libretro"
