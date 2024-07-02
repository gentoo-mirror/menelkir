# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7


CRATES="
	addr2line-0.17.0
	adler-1.0.2
	aes-0.6.0
	aes-ctr-0.6.0
	aesni-0.10.0
	aes-soft-0.6.4
	aho-corasick-0.7.18
	alsa-0.6.0
	alsa-sys-0.3.1
	anyhow-1.0.58
	array-init-2.0.1
	async-trait-0.1.56
	atty-0.2.14
	autocfg-1.1.0
	backtrace-0.3.66
	base64-0.13.0
	bindgen-0.59.2
	bitflags-1.3.2
	block-buffer-0.10.2
	block-buffer-0.9.0
	bumpalo-3.10.0
	byteorder-1.4.3
	bytes-1.2.0
	cc-1.0.73
	cesu8-1.1.0
	cexpr-0.6.0
	cfg-expr-0.10.3
	cfg-if-1.0.0
	chrono-0.4.19
	cipher-0.2.5
	clang-sys-1.3.3
	colored-2.0.0
	combine-4.6.4
	coreaudio-rs-0.10.0
	coreaudio-sys-0.2.10
	core-foundation-sys-0.8.3
	cpal-0.13.5
	cpufeatures-0.2.2
	crypto-common-0.1.6
	crypto-mac-0.11.1
	ctr-0.6.0
	darling-0.13.4
	darling_core-0.13.4
	darling_macro-0.13.4
	digest-0.10.3
	digest-0.9.0
	dns-sd-0.1.3
	env_logger-0.9.0
	fastrand-1.8.0
	fixedbitset-0.4.2
	fnv-1.0.7
	form_urlencoded-1.0.1
	futures-0.3.21
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-executor-0.3.21
	futures-io-0.3.21
	futures-macro-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	generic-array-0.14.5
	getopts-0.2.21
	getrandom-0.2.7
	gimli-0.26.2
	glib-0.15.12
	glib-macros-0.15.11
	glib-sys-0.15.10
	glob-0.3.0
	gobject-sys-0.15.10
	gstreamer-0.18.8
	gstreamer-app-0.18.7
	gstreamer-app-sys-0.18.0
	gstreamer-audio-0.18.7
	gstreamer-audio-sys-0.18.3
	gstreamer-base-0.18.0
	gstreamer-base-sys-0.18.0
	gstreamer-sys-0.18.0
	hashbrown-0.12.3
	headers-0.3.7
	headers-core-0.2.0
	heck-0.4.0
	hermit-abi-0.1.19
	hex-0.4.3
	hmac-0.11.0
	hostname-0.3.1
	http-0.2.8
	httparse-1.7.1
	http-body-0.4.5
	httpdate-1.0.2
	humantime-2.1.0
	hyper-0.14.20
	hyper-proxy-0.9.1
	ident_case-1.0.1
	idna-0.2.3
	if-addrs-0.7.0
	indexmap-1.9.1
	instant-0.1.12
	itoa-1.0.2
	jack-0.10.0
	jack-0.8.3
	jack-sys-0.2.2
	jack-sys-0.4.0
	jni-0.19.0
	jni-sys-0.3.0
	jobserver-0.1.24
	js-sys-0.3.59
	lazycell-1.3.0
	lazy_static-1.4.0
	lewton-0.10.2
	libc-0.2.126
	libloading-0.6.7
	libloading-0.7.3
	libm-0.2.2
	libmdns-0.7.0
	libpulse-binding-2.26.0
	libpulse-simple-binding-2.25.0
	libpulse-simple-sys-1.19.2
	libpulse-sys-1.19.3
	lock_api-0.4.7
	log-0.4.17
	mach-0.3.2
	match_cfg-0.1.0
	matches-0.1.9
	memchr-2.5.0
	memoffset-0.6.5
	mime-0.3.16
	minimal-lexical-0.2.1
	miniz_oxide-0.5.3
	mio-0.8.4
	muldiv-1.0.0
	multimap-0.8.3
	ndk-0.6.0
	ndk-context-0.1.1
	ndk-glue-0.6.2
	ndk-macro-0.3.0
	ndk-sys-0.3.0
	nix-0.23.1
	nom-7.1.1
	num-bigint-0.4.3
	num_cpus-1.13.1
	num-derive-0.3.3
	num_enum-0.5.7
	num_enum_derive-0.5.7
	num-integer-0.1.45
	num-rational-0.4.1
	num_threads-0.1.6
	num-traits-0.2.15
	object-0.29.0
	oboe-0.4.6
	oboe-sys-0.4.5
	ogg-0.8.0
	once_cell-1.13.0
	opaque-debug-0.3.0
	option-operations-0.4.1
	parking_lot-0.11.2
	parking_lot-0.12.1
	parking_lot_core-0.8.5
	parking_lot_core-0.9.3
	paste-1.0.7
	pbkdf2-0.8.0
	peeking_take_while-0.1.2
	percent-encoding-2.1.0
	petgraph-0.6.2
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.25
	portaudio-rs-0.3.2
	portaudio-sys-0.1.1
	ppv-lite86-0.2.16
	pretty-hex-0.3.0
	priority-queue-1.2.3
	proc-macro2-1.0.42
	proc-macro-crate-1.1.3
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	protobuf-2.27.1
	protobuf-codegen-2.27.1
	protobuf-codegen-pure-2.27.1
	quote-1.0.20
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	rand_distr-0.4.3
	redox_syscall-0.2.16
	regex-1.6.0
	regex-syntax-0.6.27
	remove_dir_all-0.5.3
	rodio-0.15.0
	rpassword-6.0.1
	rustc-demangle-0.1.21
	rustc-hash-1.1.0
	rustc_version-0.4.0
	ryu-1.0.10
	same-file-1.0.6
	scopeguard-1.1.0
	sdl2-0.35.2
	sdl2-sys-0.35.2
	semver-1.0.12
	serde-1.0.140
	serde_derive-1.0.140
	serde_json-1.0.82
	sha-1-0.10.0
	sha-1-0.9.8
	shannon-0.2.0
	shell-words-1.1.0
	shlex-1.1.0
	signal-hook-registry-1.4.0
	simple_logger-2.2.0
	slab-0.4.7
	smallvec-1.9.0
	socket2-0.4.4
	stdweb-0.1.3
	strsim-0.10.0
	subtle-2.4.1
	syn-1.0.98
	synstructure-0.12.6
	system-deps-6.0.2
	tempfile-3.3.0
	termcolor-1.1.3
	thiserror-1.0.31
	thiserror-impl-1.0.31
	thread-id-4.0.0
	time-0.1.44
	time-0.3.11
	time-macros-0.2.4
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	tokio-1.20.1
	tokio-macros-1.8.0
	tokio-stream-0.1.9
	tokio-util-0.7.3
	toml-0.5.9
	tower-service-0.3.2
	tracing-0.1.35
	tracing-core-0.1.28
	tracing-core-0.1.29
	try-lock-0.2.3
	typenum-1.15.0
	unicode-bidi-0.3.8
	unicode-ident-1.0.2
	unicode-normalization-0.1.21
	unicode-width-0.1.9
	unicode-xid-0.2.3
	url-2.2.2
	uuid-1.1.2
	vergen-3.2.0
	version_check-0.9.4
	version-compare-0.1.0
	walkdir-2.3.2
	want-0.3.0
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.82
	wasm-bindgen-backend-0.2.82
	wasm-bindgen-macro-0.2.82
	wasm-bindgen-macro-support-0.2.82
	wasm-bindgen-shared-0.2.82
	web-sys-0.3.59
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows_aarch64_msvc-0.36.1
	windows_i686_gnu-0.36.1
	windows_i686_msvc-0.36.1
	windows-sys-0.36.1
	windows_x86_64_gnu-0.36.1
	windows_x86_64_msvc-0.36.1
	zerocopy-0.6.1
	zerocopy-derive-0.3.1
	librespot-audio-0.4.2
	librespot-connect-0.4.2
	librespot-core-0.4.2
	librespot-discovery-0.4.2
	librespot-metadata-0.4.2
	librespot-playback-0.4.2
	librespot-protocol-0.4.2
	librespot-0.4.2
"

inherit cargo systemd

DESCRIPTION="An open source client library for Spotify, with support for Spotify Connect"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/librespot-org/librespot"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="alsa pulseaudio portaudio jack sdl"

get_features() {
	local out=( )
	if use alsa; then
   		out+=( alsa-backend )
	fi
	if use pulseaudio; then
		out+=( pulseaudio-backend )
	fi
	if use portaudio; then
		out+=( portaudio-backend )
	fi
	if use jack; then
		out+=( jackaudio-backend )
	fi
	if use sdl; then
		out+=( sdl-backend )
	fi

	printf "%s," "${out[@]}" | sed 's/,$//g'
}

DEPEND="
	media-libs/alsa-lib
	pulseaudio? ( media-sound/pulseaudio )
	portaudio? ( media-libs/portaudio )
	jack? ( virtual/jack )
	sdl? ( media-libs/libsdl2 )
"
RDEPEND=""

src_compile() {
	debug-print-function ${FUNCNAME} "$@"

	local features="$(get_features)"
	if [[ "${features}" ]]; then
		cargo_src_compile --features "${features}"
	else
		cargo_src_compile
	fi
}

src_install() {
	debug-print-function ${FUNCNAME} "$@"

	local features="$(get_features)"
	if [[ "${features}" ]]; then
		cargo_src_install --features "${features}"
	else
		cargo_src_install
	fi

	systemd_dounit "${FILESDIR}"/"${PN}".service
	systemd_install_serviced "${FILESDIR}"/"${PN}".service.conf
}
