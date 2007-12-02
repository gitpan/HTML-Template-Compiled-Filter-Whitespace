#!perl -T

use strict;
use warnings;

use Test::More;

BEGIN {
    my ($module, $version) = qw(HTML::Template::Compiled 0.84);
    eval "use $module $version";
    $@ ? plan skip_all => "$module $version required for testing template filter"
       : plan tests => 2;
    use_ok('HTML::Template::Compiled::Filter::Whitespace', 'get_whitespace_filter');
}

my $htc = HTML::Template::Compiled->new(
    tagstyle  => [qw(-classic -comment +asp)],
    filter    => get_whitespace_filter(),
    scalarref => \<<'EOT');
<html>

</html>
EOT
my $clean_html = <<'EOT';
<html>
</html>
EOT
$htc->param();
is $htc->output(), $clean_html, 'filtered';