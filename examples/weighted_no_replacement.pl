use strict;
use warnings;
use 5.010;

use List::Util qw(sum);

my @items = qw(low mid high);
my @weights = (10, 100, 1000);

my $N = 10;

foreach (1 .. $N) {
    my $total = sum @weights;
    say $total;
    
    my $rand = int rand $total;
    say $rand;
    my $selected = 0;
    my $limit = $weights[$selected];
    while ($rand >= $limit) {
        $selected++;
        $limit += $weights[$selected];
    }
    say "Selected: $items[$selected]";

    $weights[$selected]--;
}


