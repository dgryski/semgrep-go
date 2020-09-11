#!/usr/bin/perl

# for i in ../../dgryski/semgrep-go/*yml; do echo $i >/dev/stderr; semgrep -q -f $i . ; done 2>timings.out

use warnings;
use strict;

my %timings;
my $path;
while (<>) {
    chomp;
    if (/semgrep-go/) { $path = $_; }
    if (/^real/) {
        my @f = split;
        $f[1] =~ s/0m(.*)s/$1/;
        $timings{$path}= $f[1];
    }
}

for my $k (sort {$timings{$a} <=> $timings{$b} } keys %timings) {
    print "$k, $timings{$k}\n";
}
