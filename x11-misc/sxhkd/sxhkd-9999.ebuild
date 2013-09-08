# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="Simple X hotkey daemon"
HOMEPAGE="https://github.com/baskerville/sxhkd"
EGIT_REPO_URI="git://github.com/baskerville/${PN}.git"
SRC_URI=""

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
	make PREFIX=/usr DESTDIR="${D}" install

	dodoc README.asciidoc
	dodoc LICENSE
}
