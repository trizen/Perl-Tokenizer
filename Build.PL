
use utf8;
use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Perl::Tokenizer',
    license           => 'artistic_2',
    dist_author       => q<Daniel Șuteu <trizen@cpan.org>>,
    dist_version_from => 'lib/Perl/Tokenizer.pm',
    release_status    => 'stable',

    sign              => 1,
    dynamic_config    => 0,
    extra_manify_args => { utf8 => 1 },

    configure_requires => {
                           'Module::Build' => 0,
                          },
    build_requires => {
                       'Test::More' => 0,
                      },

    meta_merge => {
                   resources => {
                                 bugtracker => "https://github.com/trizen/Perl-Tokenizer/issues",
                                 homepage   => "https://github.com/trizen/Perl-Tokenizer",
                                 repository => "https://github.com/trizen/Perl-Tokenizer",
                                }
                  },
    requires => {
                 'perl'     => '5.18.0',
                 'utf8'     => 0,
                 'strict'   => 0,
                 'warnings' => 0,
                 'Exporter' => 0,
                },

    # This modules are required only by the bin/* scripts
    recommends => {
                   'open'            => 0,
                   'Term::ANSIColor' => 0,
                   'HTML::Entities'  => 0,
                   'Getopt::Std'     => 0,
                  },
    add_to_cleanup     => ['Perl-Tokenizer-*'],
    create_makefile_pl => 'traditional',
                                );

$builder->script_files([glob('bin/*')]);
$builder->create_build_script();
