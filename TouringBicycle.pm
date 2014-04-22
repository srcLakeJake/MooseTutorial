package TouringBicycle;

use Moose;
use namespace::autoclean;

extends 'Bicycle';

# Call to TouringBicycle->size() .... $hillborne->size(4) 
around 'size' => sub {    
	my $orig = shift; # original method is always first argument in around - so, 'size' in example above
	my $self = shift;  # then the object - so, $hillborne in example above
	
	my $size = shift; # then, any arguments passed to the method - so, '4' in example above
	$size = $size *1.1;
	
	return $self->$orig($size);
};

before [qw(adjust_seat turn)] => sub {
    print "About to call adjust_seat or turn!\n";
};

1;