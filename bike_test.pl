#! /usr/local/bin/perl

use strict;
use warnings;

use Bicycle;
use TouringBicycle;

my $regular_ass_bike = Bicycle->new(
    size => 5,
	seat => 'black',
	direction => 'north',
);

my $hillborne = TouringBicycle->new(
    size => 5,
	seat => 'Brooks',
	direction => 'south',
);

print 'Bicycle size is ' . $regular_ass_bike->size() . "\n";
print 'Bicycle seat is ' . $regular_ass_bike->seat() . "\n";
$regular_ass_bike->adjust_seat();
print 'Bicycle direction is ' . $regular_ass_bike->direction() . "\n";
$regular_ass_bike->turn('left', 30);

print 'Touring Bicycle size is ' . $hillborne->size(4) . "\n";
print 'Bicycle seat is ' . $hillborne->seat() . "\n";
$hillborne->adjust_seat();
print 'Bicycle direction is ' . $hillborne->direction() . "\n";
$hillborne->turn('left', 30);