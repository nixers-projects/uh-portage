# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils git-2

MY_P="tewi-font-${PV}"
DESCRIPTION="A Font"
HOMEPAGE="https://github.com/neeee/tewi-font"
SRC_URI=""
EGIT_REPO_URI="https://github.com/neeee/tewi-font.git"

LICENSE="GPL-3-with-font-exception"
SLOT="0"
KEYWORDS="alpha amd64 arm ia64 ppc s390 sh sparc x86 ~x86-fbsd"

DEPEND="x11-apps/bdftopcf"
RDEPEND="${DEPEND}"

src_compile() {
	bdftopcf -o Tewi-bold-11.pcf Tewi-bold-11.bdf
	bdftopcf -o Tewi-normal-11.pcf Tewi-normal-11.bdf
	bdftopcf -o Tewi2a-bold-11.pcf Tewi2a-bold-11.bdf
	bdftopcf -o Tewi2a-normal-11.pcf Tewi2a-normal-11.bdf
}

src_install() {
	insinto /usr/share/fonts/tewi
	for f in *.pcf; do
		doins $f
	done
}
