# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Tiling window manager based on binary space partitioning"
HOMEPAGE="https://github.com/baskerville/bspwm"
SRC_URI="https://github.com/baskerville/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="x11-libs/xcb-util
x11-libs/xcb-util-wm"
RDEPEND="${DEPEND}"

src_compile() {
	make PREFIX=/usr
}

src_install() {
	make PREFIX=/usr DESTDIR="${D}" install

	dodoc README.asciidoc
	dodoc LICENSE
}
