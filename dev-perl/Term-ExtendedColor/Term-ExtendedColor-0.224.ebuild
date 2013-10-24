# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR="WOLDRICH"
MODULE_VERSION=${PV}
inherit perl-module

DESCRIPTION="perl module"
HOMEPAGE="https://github.com/trapd00r/Term-ExtendedColor"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/perl-5.10"
DEPEND="${RDEPEND}"

