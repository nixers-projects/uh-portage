# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Simple X hotkey daemon"
HOMEPAGE="https://github.com/baskerville/sxhkd"
SRC_URI="https://github.com/baskerville/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/xcb-util
x11-libs/xcb-util-keysyms"
RDEPEND="${DEPEND}"

src_compile() {
	make PREFIX=/usr
}

src_install() {
	make PREFIX=/usr DESTDIR="${D}"

	dodoc README.asciidoc
	dodoc LICENSE
}
