package Template::Plugin::Filter::VisualTruncate::UTF8;

use warnings;
use strict;

use base qw( Template::Plugin::Filter );

use Text::VisualWidth::UTF8;

sub new {
    my $class = shift;

    my $self = {};
    bless $self, $class;

    return $self;
}

sub width {
    shift;
    Text::VisualWidth::UTF8::width(@_);
}

sub trim {
    shift;
    Text::VisualWidth::UTF8::trim(@_);
}

1;
