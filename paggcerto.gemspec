# frozen_string_literal: true

$LOAD_PATH.unshift(::File.join(::File.dirname(__FILE__), "lib"))

require "paggcerto/version"

Gem::Specification.new do |s|
  s.name = "paggcerto"
  s.version = Paggcerto::VERSION
  s.required_ruby_version = ">= 2.3.0"
  s.summary = "SDK Ruby para a API do Paggcerto"
  s.description = "Pagcerto - plataforma completa para gerenciar e receber pagamentos." \
                  "acesse http://pagcerto.com.br/ para mais detalhes."
  s.author = "Thiago Diniz"
  s.email = "thiagovsdiniz@gmail.com"
  s.homepage = "https://github.com/thiagodiniz/paggcerto-ruby"
  s.license = "MIT"

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/thiagodiniz/paggcerto-ruby/issues",
    "github_repo" => "ssh://github.com/thiagodiniz/paggcerto-ruby",
    "homepage_uri" => "https://github.com/thiagodiniz/paggcerto-rubyy",
    "source_code_uri" => "https://github.com/thiagodiniz/paggcerto-ruby",
  }

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n")
                                           .map { |f| ::File.basename(f) }
  s.require_paths = ["lib"]
end
