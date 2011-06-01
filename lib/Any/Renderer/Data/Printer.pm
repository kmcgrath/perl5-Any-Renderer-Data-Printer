package Any::Renderer::Data::Printer;
use strict;

use Data::Printer alias => '_dp_printer';

our $VERSION = '0.01';


sub new {
    my ( $class, $format, $options ) = @_;
    die("Invalid format $format") unless($format eq 'Data::Printer');
    return bless({options=>$options}, $class); 
}


sub render {
    my ( $self, $data ) = @_;
    return _dp_printer($data, %{$self->{options}});
}


sub available_formats {
    return [ 'Data::Printer' ];
}


1; # End of Any::Renderer::Data::Printer

__END__

=pod

=head1 NAME

Any::Renderer::Data::Printer - The great new Any::Renderer::Data::Printer!

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Any::Renderer::Data::Printer;

    my $foo = Any::Renderer::Data::Printer->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 new

=head2 

=head1 AUTHOR

Kevin McGrath, C<< <kmcgrath at baknet.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-any-renderer-data-printer at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Any-Renderer-Data-Printer>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Any::Renderer::Data::Printer


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Any-Renderer-Data-Printer>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Any-Renderer-Data-Printer>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Any-Renderer-Data-Printer>

=item * Search CPAN

L<http://search.cpan.org/dist/Any-Renderer-Data-Printer/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2011 Kevin McGrath.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut
