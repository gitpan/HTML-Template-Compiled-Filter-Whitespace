use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name       => 'HTML::Template::Compiled::Filter::Whitespace',
    license           => 'perl',
    dist_author       => 'Steffen Winkler - steffenw@cpan.org, Volker Voit - volker.voit@googlemail.com',
    dist_version_from => 'lib/HTML/Template/Compiled/Filter/Whitespace.pm',
    requires          => {
        'Perl6::Export::Attrs' => '0',
    },
    build_requires => {
        'Test::More' => '0',
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 1,
    add_to_cleanup       => [
        'META.yml', '*.bak', '*.gz', 'Makefile.PL',
    ],
);

$build->create_build_script();
