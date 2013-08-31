# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 savedconfig

DESCRIPTION="Lightweight xcb-based bar."
HOMEPAGE="https://github.com/LemonBoy/bar"
SRC_URI=""
EGIT_REPO_URI="git://github.com/LemonBoy/bar"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/libxcb"
RDEPEND="${DEPEND}"

src_compile() {
	restore_config config.h
	emake || die "Compile failed"
}

src_install() {
	emake "PREFIX=${D}/usr" install || die "Install failed"
	save_config config.h
}
