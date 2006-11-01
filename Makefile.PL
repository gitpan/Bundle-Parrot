use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Bundle::Parrot',
    VERSION_FROM      => 'lib/Bundle/Parrot.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Bundle/Parrot.pm', # retrieve abstract from module
       AUTHOR         => 'Jerry Gay a.k.a. particle <jerry.gay@gmail.com>') : ()),
);
