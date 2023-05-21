# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop xdg

DESCRIPTION="A Community-led Hyper-Hackable Text Editor"
HOMEPAGE="https://pulsar-edit.dev/"
SRC_URI="https://github.com/pulsar-edit/pulsar/releases/download/v${PV}/Linux.pulsar-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
# Need different downloads for other architectures; untested
KEYWORDS="-* ~amd64"
RESTRICT="test"

S="${WORKDIR}/pulsar-${PV}"

RDEPEND="
	>=app-accessibility/at-spi2-core-2.46.0
	app-crypt/libsecret
	dev-libs/nss
	dev-libs/openssl
	dev-libs/openssl-compat
	dev-vcs/git
	media-libs/alsa-lib
	net-print/cups
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/gtk+
	x11-libs/libnotify
	x11-libs/libX11
	x11-libs/libxcb
	x11-libs/libXcomposite
	x11-libs/libXcursor
	x11-libs/libXdamage
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXi
	x11-libs/libxkbfile
	x11-libs/libXrandr
	x11-libs/libXrender
	x11-libs/libXScrnSaver
	x11-libs/libXtst
	x11-libs/pango
"

QA_PREBUILT="/opt/Pulsar/*"
QA_PRESTRIPPED="/opt/Pulsar/resources/*"  # Files are already stripped

src_prepare(){
	default

	# We do not install licenses
	rm resources/LICENSE.md || die "Failed to remove LICENSE"
}

src_install(){
	insinto /opt/Pulsar
	doins -r "${S}"/*
	dosym ../../opt/Pulsar/resources/pulsar.sh "${EPREFIX}"/usr/bin/pulsar
	fperms +x /opt/Pulsar/resources/pulsar.sh
	fperms +x /opt/Pulsar/pulsar

	# I will use only npm provided with package itself
	# as nodejs is not required to make it working (and it is really big).
	fperms +x /opt/Pulsar/resources/app/ppm/bin/{apm,node,npm}

	# Bug 798459
	fperms +x /opt/Pulsar/resources/app.asar.unpacked/node_modules/{vscode-ripgrep/bin/rg,dugite/git/bin/git}

	doicon resources/pulsar.png
	make_desktop_entry "/opt/pulsar-bin/pulsar %U" "Pulsar" "pulsar" \
		"GNOME;GTK;Utility;TextEditor;Development;" \
		"GenericName=Text Editor\nMimeType=text/plain;\nStartupNotify=true\nStartupWMClass=pulsar"

	einstalldocs

	find "${ED}" -name '*.la' -delete || die
}

pkg_postinst(){
	xdg_desktop_database_update

	elog "To migrate configurations & saved state from Atom Editor, execute:"
	elog "    cp -a \$HOME/.atom \$HOME/.pulsar"
	elog "    cp -a \$HOME/.config/Atom \$HOME/.config/Pulsar"
}
