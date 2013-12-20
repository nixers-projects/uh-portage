# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="Upload Files to IOPaste"
HOMEPAGE="http://git.stickypixl.net/dcat/ioup"
SRC_URI=""
EGIT_REPO_URI="http://git.stickypixl.net/dcat/ioup.git"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="net-misc/curl"
RDEPEND="${DEPEND}"

src_install() {
	dobin ioup
}
