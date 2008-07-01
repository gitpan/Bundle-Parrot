package main;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Bundle::Parrot',
    AUTHOR            => 'Jerry Gay a.k.a. particle <jerry.gay+cpan@gmail.com>', ## no critic (RequireInterpolationOfMetachars)
    VERSION_FROM      => 'Parrot.pm',
    ABSTRACT_FROM     => 'Parrot.pm',
    PL_FILES          => {},
    PREREQ_PM         => {},
);

sub MY::postamble {
return <<'MAKE_FRAG';
.PHONY: tags critic

critic:
	perlcritic -profile perlcriticrc -1 -quiet .

MAKE_FRAG
}

1;
