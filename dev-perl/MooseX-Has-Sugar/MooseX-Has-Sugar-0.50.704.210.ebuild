# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.05070421
inherit perl-module

DESCRIPTION='Sugar Syntax for moose '\''has'\'' fields'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4002 ( 0.400.200 )
	echo \>=virtual/perl-Module-Build-0.400.200
}
perl_meta_build() {
	# Module::Build 0.4002 ( 0.400.200 )
	echo \>=virtual/perl-Module-Build-0.400.200
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Moose
	echo dev-perl/Moose
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
