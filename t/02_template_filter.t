#!perl -T

use strict;
use warnings;
use Test::More tests => 3;

BEGIN {
    use_ok('HTML::Template::Compiled');
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
$htc->param(dummy => 0);
is $htc->output(), $clean_html, 'filtered';