# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "qw3common/version"

Gem::Specification.new do |s|
  s.name        = "qw3common"
  s.version     = Qw3common::VERSION
  s.authors     = ["QW3"]
  s.email       = ["contato@qw3.com.br"]
  s.homepage    = "http://www.qw3.com.br"
  s.summary     = %q{Componente com funcionalidades comuns da Plataforma QW3}
  s.description = %q{Componente que encapsula as funcionalidade comuns a todas as aplicações da Plataforma QW3}

  #s.rubyforge_project = "qw3common"

  s.add_dependency 'devise'
  s.add_dependency 'will_paginate'
  s.add_dependency 'paperclip'
  s.add_dependency 'brstring'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
