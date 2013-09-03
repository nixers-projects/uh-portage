# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

DESCRIPTION="Client for paste.xinu.at"
HOMEPAGE="http://paste.xinu.at"
SRC_URI="http://paste.xinu.at/data/client/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="net-misc/curl"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR=${D} install || die "Install failed"
}
