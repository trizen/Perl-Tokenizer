# Note: this file was auto-generated by Module::Build::Compat version 0.4234
require 5.018000;
use ExtUtils::MakeMaker;
WriteMakefile
(
  'NAME' => 'Perl::Tokenizer',
  'VERSION_FROM' => 'lib/Perl/Tokenizer.pm',
  'PREREQ_PM' => {
                   'Exporter' => 0,
                   'Test::More' => 0,
                   'strict' => 0,
                   'utf8' => 0,
                   'warnings' => 0
                 },
  'INSTALLDIRS' => 'site',
  'EXE_FILES' => [
                   'bin/pfilter',
                   'bin/pl2html',
                   'bin/pl2term'
                 ],
  'PL_FILES' => {}
)
;
