# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit git-2

DESCRIPTION="PasteBin Client for UnixHub"
HOMEPAGE="https://github.com/UnixHub/UnixHub-PasteBin-Client"
SRC_URI=""
EGIT_REPO_URI="https://github.com/UnixHub/UnixHub-PasteBin-Client.git"

LICENSE="unixhub"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-python/mechanize"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e 's/python2/python' hub
}

src_install() {
	dobin hub
}
