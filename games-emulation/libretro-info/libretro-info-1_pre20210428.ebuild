# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="102f8671dde9243e072b1d87e93631ea5ea9c139"

DESCRIPTION="Libretro info files required for libretro cores"
HOMEPAGE="https://github.com/libretro/libretro-super"

if [[ ${PV} == *9999 ]]; then
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/libretro/libretro-super.git"

	inherit git-r3
else
	inherit vcs-snapshot

	SRC_URI="https://github.com/libretro/libretro-super/archive/${LIBRETRO_COMMIT_SHA}.tar.gz -> ${P}.tar.gz"

	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"

src_compile() {
	:
}

src_install() {
	insinto "/usr/share/libretro/info"
	doins dist/info/*.info
}
