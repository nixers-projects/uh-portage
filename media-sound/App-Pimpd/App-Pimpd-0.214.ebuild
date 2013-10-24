# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR="WOLDRICH"
MODULE_VERSION=0.214
inherit perl-module

DESCRIPTION="Perl interface for MPD"
HOMEPAGE="https://github.com/trapd00r/pimpd2"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="media-sound/mpd"
RDEPEND="${DEPEND}
media-sound/mpd
dev-perl/Term-ExtendedColor
dev-perl/Term-ReadLine-Gnu
dev-perl/config-general
dev-perl/Audio-MPD
dev-perl/Time-Duration"
