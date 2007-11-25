#!perl -T

use strict;
use warnings;
use Test::More tests => 2;

BEGIN {
    use_ok('HTML::Template::Compiled::Filter::Whitespace', 'whitespace_filter');
}

my $unclean_html = <<'EOT';
<html>

</html>
EOT
my $clean_html = <<'EOT';
<html>
</html>
EOT
is whitespace_filter($unclean_html), $clean_html, 'filtered';