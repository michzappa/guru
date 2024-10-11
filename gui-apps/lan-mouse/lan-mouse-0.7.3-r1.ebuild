# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.3
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	anyhow@1.0.81
	arraydeque@0.4.5
	arrayvec@0.4.12
	ashpd@0.8.1
	async-broadcast@0.7.0
	async-channel@2.2.0
	async-io@2.3.2
	async-lock@2.8.0
	async-lock@3.3.0
	async-process@2.1.0
	async-recursion@1.1.0
	async-signal@0.2.5
	async-task@4.7.0
	async-trait@0.1.78
	atomic-waker@1.1.2
	autocfg@1.1.0
	backtrace@0.3.69
	bitflags@1.3.2
	bitflags@2.5.0
	block-buffer@0.10.4
	blocking@1.5.1
	bytes@1.5.0
	cairo-rs@0.19.2
	cairo-sys-rs@0.19.2
	cc@1.0.90
	cfg-expr@0.15.7
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	clap@4.5.3
	clap_builder@4.5.2
	clap_derive@4.5.3
	clap_lex@0.7.0
	colorchoice@1.0.0
	concurrent-queue@2.4.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics@0.23.1
	cpufeatures@0.2.12
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	data-encoding@2.5.0
	derivative@2.2.0
	digest@0.10.7
	dlib@0.5.2
	downcast-rs@1.2.0
	endi@1.1.0
	enum-as-inner@0.6.0
	enumflags2@0.7.9
	enumflags2_derive@0.7.9
	env_filter@0.1.0
	env_logger@0.11.3
	equivalent@1.0.1
	errno@0.3.8
	event-listener-strategy@0.4.0
	event-listener-strategy@0.5.0
	event-listener@2.5.3
	event-listener@4.0.3
	event-listener@5.2.0
	fastrand@2.0.1
	field-offset@0.3.6
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@2.3.0
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	gdk-pixbuf-sys@0.19.0
	gdk-pixbuf@0.19.2
	gdk4-sys@0.8.1
	gdk4@0.8.1
	generic-array@0.14.7
	getrandom@0.2.12
	gimli@0.28.1
	gio-sys@0.19.0
	gio@0.19.3
	glib-build-tools@0.19.0
	glib-macros@0.19.3
	glib-sys@0.19.0
	glib@0.19.3
	gobject-sys@0.19.0
	graphene-rs@0.19.2
	graphene-sys@0.19.0
	gsk4-sys@0.8.1
	gsk4@0.8.1
	gtk4-macros@0.8.1
	gtk4-sys@0.8.1
	gtk4@0.8.1
	hashbrown@0.14.3
	heck@0.3.3
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hex@0.4.3
	hostname@0.3.1
	humantime@2.1.0
	idna@0.4.0
	idna@0.5.0
	indexmap@2.2.5
	ipconfig@0.3.2
	ipnet@2.9.0
	itoa@1.0.10
	keycode@0.4.0
	keycode_macro@0.4.0
	libadwaita-sys@0.6.0
	libadwaita@0.6.0
	libc@0.2.153
	libloading@0.8.3
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.13
	lock_api@0.4.11
	log@0.4.21
	lru-cache@0.1.2
	match_cfg@0.1.0
	memchr@2.7.1
	memmap@0.7.0
	memoffset@0.9.0
	miniz_oxide@0.7.2
	mio@0.8.11
	nix@0.28.0
	nodrop@0.1.14
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	ordered-stream@0.2.0
	pango-sys@0.19.0
	pango@0.19.3
	parking@2.2.0
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	percent-encoding@2.3.1
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	piper@0.2.1
	pkg-config@0.3.30
	polling@3.5.0
	ppv-lite86@0.2.17
	proc-macro-crate@3.1.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.79
	quick-error@1.2.3
	quick-xml@0.31.0
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.4.1
	regex-automata@0.4.6
	regex-syntax@0.8.2
	regex@1.10.3
	reis@0.2.0
	resolv-conf@0.7.0
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.38.32
	ryu@1.0.17
	scoped-tls@1.0.1
	scopeguard@1.2.0
	semver@1.0.22
	serde@1.0.197
	serde_derive@1.0.197
	serde_json@1.0.114
	serde_repr@0.1.18
	serde_spanned@0.6.5
	sha1@0.10.6
	signal-hook-registry@1.4.1
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.6
	static_assertions@1.1.0
	strsim@0.11.0
	syn@1.0.109
	syn@2.0.53
	system-deps@6.2.2
	target-lexicon@0.12.14
	tempfile@3.10.1
	thiserror-impl@1.0.58
	thiserror@1.0.58
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio@1.36.0
	toml@0.8.12
	toml_datetime@0.6.5
	toml_edit@0.21.1
	toml_edit@0.22.9
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	trust-dns-proto@0.23.2
	trust-dns-resolver@0.23.2
	typenum@1.17.0
	uds_windows@1.1.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unicode-segmentation@1.11.0
	url@2.5.0
	utf8parse@0.2.1
	version-compare@0.2.0
	version_check@0.9.4
	wasi@0.11.0+wasi-snapshot-preview1
	wayland-backend@0.3.3
	wayland-client@0.31.2
	wayland-protocols-misc@0.2.0
	wayland-protocols-wlr@0.2.0
	wayland-protocols@0.31.2
	wayland-scanner@0.31.1
	wayland-sys@0.31.1
	widestring@1.0.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.54.0
	windows-result@0.1.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.4
	windows@0.54.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.4
	winnow@0.5.40
	winnow@0.6.5
	winreg@0.50.0
	x11@2.21.0
	xdg-home@1.1.0
	zbus@4.1.2
	zbus_macros@4.1.2
	zbus_names@3.0.0
	zvariant@4.0.2
	zvariant_derive@4.0.2
	zvariant_utils@1.1.0
"

inherit cargo desktop systemd xdg

DEPEND="
	dev-libs/glib:2
	gui-libs/gtk:4
	gui-libs/libadwaita:1
	x11-libs/cairo
	x11-libs/libX11
	x11-libs/libXtst
	x11-libs/pango
	x11-themes/hicolor-icon-theme
"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"

DESCRIPTION="Software KVM Switch / mouse & keyboard sharing software for Local Area Networks"
HOMEPAGE="https://github.com/feschber/lan-mouse"
SRC_URI="
	${CARGO_CRATE_URIS}
	https://github.com/feschber/lan-mouse/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
"

LICENSE="GPL-3+"
# Dependent crate licenses
LICENSE+="
	Apache-2.0-with-LLVM-exceptions ISC MIT Unicode-DFS-2016
	|| ( Apache-2.0 Boost-1.0 )
"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/lan-mouse"

src_install() {
	cargo_src_install
	doicon -s scalable resources/de.feschber.LanMouse.svg
	domenu de.feschber.LanMouse.desktop
	systemd_douserunit service/lan-mouse.service
}
