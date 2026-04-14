#!/usr/bin/perl -w
#
use strict;
use FileHandle;


for my $mod (@ARGV)
  {
    my $data = do { my $fh = 'FileHandle'->new ("<$mod"); local $/ = undef; <$fh> };
    substr ($data, 0, 3, '');
    'FileHandle'->new (">$mod")->print ($data);
  }
