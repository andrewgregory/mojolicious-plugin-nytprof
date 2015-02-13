#!perl

use strict;
use warnings;

use Test::More;

use File::Find;
use File::Spec::Functions qw/catfile catdir splitpath catpath/;
use File::Which;

require Mojolicious::Plugin::NYTProf;

my $nytprofhtml_path = Mojolicious::Plugin::NYTProf::_find_bin('nytprofhtml');
BAIL_OUT( "Couldn't find nytprofhtml in PATH or in same location as $^X" )
	if ! -e $nytprofhtml_path;

ok( -e $nytprofhtml_path );
done_testing();
