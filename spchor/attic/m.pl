#!/usr/bin/perl -w

use strict;

use FileHandle;
use Data::Dumper;
use List::Util;
use File::Find;
use File::Basename;
use File::Copy;

my %mod;

&find 
(
{
  wanted => sub
  {
    my $f = $File::Find::name;
    return unless ($f =~ m/\.mod$/o);
    my $mod = &basename ($f, qw (.mod));
    $mod{$mod} = $f;
  },
  no_chdir => 1,
}, 
  '/tmp/IAL-bundle/build.GPUGFX942_O1_ROCM8873_OPENMPI5.0.7/',
  '/perm/sor/install/rocm/rocm-afar-8873-drop-22.2.0/',
);


my @use;

for my $mod (<*.mod>, <*.F90>)
  {
    my $code = do { my $fh = 'FileHandle'->new ("<$mod"); local $/ = undef; <$fh> };
    push @use, ($code =~ m{\nuse\s+(\w+)}igoms);
  }

for (@use)
  {
    $_ = lc ($_);
  }

@use = sort &List::Util::uniq (@use);

print &Dumper (\@use);

for my $use (@use)
  {
    if (-f "$use.mod")
      {

      }
    elsif ($mod{$use})
      {
        print "$mod{$use}\n";
        &copy ($mod{$use}, "$use.mod") unless (-f "$use.mod");
      }
    else
      {
        print "MISSING $use.mod\n";
      }
  }
