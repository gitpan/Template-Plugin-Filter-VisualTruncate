use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Template::Plugin::Filter::VisualTruncate',
    AUTHOR              => 'bokutin <bokutin@cpan.org>',
    VERSION_FROM        => 'lib/Template/Plugin/Filter/VisualTruncate.pm',
    ABSTRACT_FROM       => 'lib/Template/Plugin/Filter/VisualTruncate.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Encode'             => '2.23',
        'Test::More'         => 0,
        'Test::Base'         => 0,
        'Template'           => 0,
        'Text::CharWidth'    => '0.04',
        'Text::VisualWidth'  => '0.01',
        'UNIVERSAL::require' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Template-Plugin-Filter-VisualTruncate-*' },
);
