# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit R-packages

DESCRIPTION='Syntax Highlighting for R Source Code'
KEYWORDS="~amd64"
LICENSE='GPL-2+'

DEPEND="
	>=dev-lang/R-3.2.3
	>=dev-R/xfun-0.18
"
RDEPEND="${DEPEND}"
