use strict;
use warnings;

use Module::Build;

Module::Build->new(
    module_name       => 'HTML::Template::Compiled::Filter::Whitespace',
    license           => 'perl',
    dist_abstract     => 'HTML::Template::Compiled::Filter::Whitespace - whitespace filter for HTML output',
    dist_author       => 'Steffen Winkler <steffenw at cpan.org>, Volker Voit <volker.voit at googlemail.com>',
    dist_version_from => 'lib/HTML/Template/Compiled/Filter/Whitespace.pm',
    requires          => {
        perl                   => 5.006001,
        'Perl6::Export::Attrs' => 0,
    },
    build_requires => {
        # Cwd              => 0, # perl dist
        'Test::Simple'     => 0, # for Test::More
        'Test::NoWarnings' => 0,
    },
    recommends => {
        # build
        'Test::Pod'           => '1.14',
        'Test::Pod::Coverage' => '1.04',
        'Test::More'          => 0,
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 1,
    add_to_cleanup       => [ qw(
        META.yml *.bak *.gz Makefile.PL
    ) ],
)->create_build_script();