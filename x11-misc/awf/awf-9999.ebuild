# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="A theme preview application for gtk2/3"
HOMEPAGE="https://github.com/valr/awf"
SRC_URI=""
EGIT_REPO_URI="https://github.com/valr/awf.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/gtk+"
RDEPEND="${DEPEND}"

src_configure() {
	./autogen.sh
	econf --prefix=/usr
}
