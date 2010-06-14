gem 'rspec',   '= 1.3.0'
gem 'sinatra', '= 1.0'

require 'spec/rake/spectask'
require File.join(File.dirname(__FILE__), 'spec', 'spec_helper')

task :default => :spec

desc "Run all specs"
task :spec do
  Spec::Rake::SpecTask.new do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ['--options', 'spec/spec.opts']
  end
end