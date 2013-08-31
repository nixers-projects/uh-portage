# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Launch applications from interactive bash sessions."
HOMEPAGE="http://bashrun2.googlecode.com"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="-noxterm"

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}
!noxterm? ( x11-terms/xterm )"
