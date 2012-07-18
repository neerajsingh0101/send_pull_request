# -*- encoding: utf-8 -*-
require File.expand_path('../lib/send_pull_request/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Neeraj Singh"]
  gem.email         = ["neerajdotname@gmail.com"]
  gem.description   =  'sends pull request for the same issue number'
  gem.summary       = 'this gem ensures that pull request number is same as issue number'
  gem.homepage      = "http://BigBinary.com"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "send_pull_request"
  gem.require_paths = ["lib"]
  gem.version       = SendPullRequest::VERSION
end
