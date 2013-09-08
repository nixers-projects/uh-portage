# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit eutils

DESCRIPTION="elementary GTK themes"
HOMEPAGE="http://elementaryos.org/"
SRC_URI="https://launchpad.net/egtk/3.x/${PV}/+download/elementary.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+gtk2 +gtk3 metacity xfwm"

DEPEND="gtk2? ( x11-themes/gtk-engines-murrine )
	gtk3? ( x11-themes/gtk-engines-unico )"
RDEPEND="${DEPEND}"

src_install() {
	cd elementary
	insinto /usr/share/themes/elementary
	use gtk2     && doins -r gtk-2.0
	use gtk3     && doins -r gtk-3.0
	use metacity && doins -r metacity-1
	use xfwm     && doins -r xfwm4
	doins index.theme

	dodoc AUTHORS CONTRIBUTORS COPYING
}
