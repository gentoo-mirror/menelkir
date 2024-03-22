# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multiprocessing

DESCRIPTION="Multiplatform Sega Dreamcast emulator"
HOMEPAGE="https://github.com/flyinghead/flycast"
SRC_URI="
	https://github.com/flyinghead/flycast/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/libsdl-org/SDL/archive/5adbf3765a57dc5931c2a3137390bfee2370c945.tar.gz -> ${P}-core_deps_SDL.tar.gz
	https://github.com/KhronosGroup/Vulkan-Headers/archive/85c2334e92e215cce34e8e0ed8b2dce4700f4a50.tar.gz -> ${P}-core_deps_Vulkan-Headers.tar.gz
	https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/6eb62e1515072827db992c2befd80b71b2d04329.tar.gz -> ${P}-core_deps_VulkanMemoryAllocator.tar.gz
	https://github.com/flyinghead/mingw-breakpad/archive/1ab24bcc817ebe629bf77daa53529d02361cb1e9.tar.gz -> ${P}-core_deps_breakpad.tar.gz
	https://github.com/KhronosGroup/glslang/archive/76b52ebf77833908dc4c0dd6c70a9c357ac720bd.tar.gz -> ${P}-core_deps_glslang.tar.gz
	https://github.com/flyinghead/libchdr/archive/7239eab39c961a27959cfb58c8877cb2ab1fbf2d.tar.gz -> ${P}-core_deps_libchdr.tar.gz
	https://github.com/vinniefalco/LuaBridge/archive/fab7b33b896a42dcc865ba5ecdbacd9f409137f8.tar.gz -> ${P}-core_deps_luabridge.tar.gz
"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
IUSE="gles +opengl vulkan"

REQUIRED_USE="
	|| ( gles opengl )
	opengl? ( !gles )
"

RDEPEND="
	opengl? ( virtual/opengl )
	vulkan? ( media-libs/vulkan-loader )
	gles? ( media-libs/mesa[egl(+),gles2] )
"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-build/ninja
	dev-build/cmake
"

S="${WORKDIR}/flycast-${PV}"
BUILD_DIR="${WORKDIR}/${P}_build"

src_unpack() {
	unpack ${P}.tar.gz

	cd "${S}" || die
	local list=(
		core_deps_SDL
		core_deps_Vulkan-Headers
		core_deps_VulkanMemoryAllocator
		core_deps_breakpad
		core_deps_glslang
		core_deps_libchdr
		core_deps_luabridge
	)

	local i
	for i in "${list[@]}"; do
		tar xf "${DISTDIR}/${P}-${i}.tar.gz" --strip-components 1 -C "${i//_//}" ||
			die "Failed to unpack ${P}-${i}.tar.gz"
	done
}

src_configure() {
	mkdir "${BUILD_DIR}"
	pushd  "${BUILD_DIR}"

	local mycmakeargs=(
		-DLIBRETRO=ON
		-DUSE_OPENMP=OFF
		-DUSE_GLES2=$(usex gles)
		-DUSE_VULKAN=$(usex vulkan)
		$(usex arm "-DARMv7=ON" "")
		$(usex arm64 "-DARM64=ON" "")
		-DCMAKE_BUILD_TYPE=Release
	)

	cmake "${mycmakeargs[@]}" -GNinja "${S}"

	find . -name flags.make -exec sed -i "s:isystem :I:g" \{} \;
	find . -name build.ninja -exec sed -i "s:isystem :I:g" \{} \;

	popd
}

src_compile() {
	pushd "${BUILD_DIR}"

	ninja -v ${makeopts_jobs}

	popd
}

src_install() {
	local libretro_lib_dir="/usr/$(get_libdir)/libretro"
	exeinto "${libretro_lib_dir}"
	doexe "${BUILD_DIR}"/flycast_libretro.so
}
