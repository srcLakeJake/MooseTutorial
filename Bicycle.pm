package Bicycle;

use Moose;
use namespace::autoclean;

has 'size' => (
    is => 'rw',
);

has 'seat' => (
    is => 'rw',
);

has 'direction' => (
    is => 'rw',
);

sub adjust_seat {
    my $self = shift;
	print "adjusted seat\n";
	return;
}

sub turn {
    my ( $self, $direction, $degrees ) = @_;
	print "Turning $direction $degrees degrees\n";
	return;
}

1;