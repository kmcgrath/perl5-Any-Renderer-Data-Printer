#!/usr/bin/perl

use 5.006;
use strict;
use warnings;
use Test::More tests => 2;

use Any::Renderer;

my $r = Any::Renderer->new( 'Data::Printer');

ok( $r, 'Object Creation' );

my $hash = {
    foo => 'bar',
    bar => ['foo1','foo2','foo3']
};

my $output = $r->render($hash);

my $expected_output = q[\ {
    bar   [
        [0] "foo1",
        [1] "foo2",
        [2] "foo3"
    ],
    foo   "bar"
}];


ok($output eq $expected_output, 'Output')