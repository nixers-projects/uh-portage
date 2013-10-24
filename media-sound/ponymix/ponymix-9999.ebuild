# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="Command-line mixer for PulseAudio"
HOMEPAGE="https://github.com/falconindy/ponymix"
SRC_URI=""
EGIT_REPO_URI="git://github.com/falconindy/ponymix.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="media-sound/pulseaudio
		  sys-libs/libcxx"
RDEPEND="${DEPEND}"
