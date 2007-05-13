use Test::Base;
use Template;

plan tests => 16;

use_ok('Template::Plugin::Filter::VisualTruncate');

my $tt = Template->new({
    PLUGINS => {
        VisualTruncate => 'Template::Plugin::Filter::VisualTruncate'
    }
});

ok($tt);
ok(UNIVERSAL::isa($tt, 'Template'));
ok($tt->process(\'[% USE VisualTruncate %]'));

sub default_sanitize {
    my $input = $_[0];
    my $output;
    $tt->process(\$input, undef, \$output);

    if (utf8::is_utf8($output)) {
        $output = 'INVALID';
    }

    return $output;
}

spec_file('t/test_base_spec.txt');

filters('default_sanitize');
run_is 'input' => 'expected';
