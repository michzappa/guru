# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..12} )
inherit meson python-single-r1 xdg

if [[ "${PV}" == "9999" ]]
then
	inherit git-r3
	EGIT_REPO_URI="https://git.sr.ht/~sircmpwn/hiprompt-gtk-py"
else
	SRC_URI="https://git.sr.ht/~sircmpwn/hiprompt-gtk-py/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~arm64 ~riscv"
fi

DESCRIPTION="GTK+ Himitsu prompter for Wayland"
HOMEPAGE="https://git.sr.ht/~sircmpwn/hiprompt-gtk-py"
LICENSE="GPL-3"
SLOT="0"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	$(python_gen_cond_dep 'dev-python/pygobject[${PYTHON_USEDEP}]')
	x11-libs/gtk+:3[introspection]
	>=gui-libs/gtk-layer-shell-0.5.0[introspection]
"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	# Otherwise you get the fake "python" symlink present in $WORKDIR
	sed -i "s;@PYTHON@;/usr/bin/${EPYTHON};g" hiprompt_gtk/hiprompt-gtk.in || die
}
