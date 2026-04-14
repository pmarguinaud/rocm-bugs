#!/usr/bin/perl -w
#
use strict;
use FileHandle;


for my $mod (@ARGV)
  {
    my @line = do { my $fh = 'FileHandle'->new ("<$mod"); <$fh> };

    for my $line (@line)
      {
        if ($line =~ m/^private.*\$/o)
          {
            $line =~ s/\$.*//o;
          }
        if ($line =~ m/^use.*\$/o)
          {
            $line =~ s/\$.*//o;
            $line =~ s/,only:.*//o;
          }
      }

    'FileHandle'->new (">$mod")->print (join ("", @line, ""));
#   print join ("", @line, "");
  }
