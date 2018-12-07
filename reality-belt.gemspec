# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name               = %q{reality-belt}
  s.version            = '1.0.1'
  s.platform           = Gem::Platform::RUBY

  s.authors            = ['Peter Donald']
  s.email              = %q{peter@realityforge.org}

  s.homepage           = %q{https://github.com/realityforge/reality-belt}
  s.summary            = %q{A super simple domain model to represent projects.}
  s.description        = %q{A super simple domain model to represent projects.}

  s.rubyforge_project  = %q{reality-belt}
  s.licenses           = ['Apache-2.0']

  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- {spec}/*`.split("\n")
  s.executables        = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths      = %w(lib)

  s.rdoc_options       = %w(--line-numbers --inline-source --title reality-belt)

  s.add_dependency 'reality-core', '>= 1.8.0'
  s.add_dependency 'reality-model', '>= 1.2.0'
end
