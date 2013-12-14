# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit eutils

MY_NAME="FlatStudio"
MY_ID="154296"

DESCRIPTION="Flat, simple and clean GTK theme"
HOMEPAGE="http://gnome-look.org/content/show.php?content=${MY_ID}"
SRC_URI="http://gnome-look.org/CONTENT/content-files/${MY_ID}-${MY_NAME}-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+gtk2 +gtk3 metacity unity"

DEPEND="gtk2? ( x11-themes/gtk-engines-murrine )
	gtk3? ( x11-themes/gtk-engines-unico )"
RDEPEND="${DEPEND}"

src_install() {
	for theme in FlatStudio FlatStudioDark FlatStudioGray FlatStudioLight; do
		insinto /usr/share/themes/${theme}
		use gtk2     && doins -r ${theme}/gtk-2.0
		use gtk3     && doins -r ${theme}/gtk-3.0
		use metacity && doins -r ${theme}/metacity-1
		use unity    && doins -r ${theme}/unity
	done

	dodoc FlatStudio/LICENSE
}
