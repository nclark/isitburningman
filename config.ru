gem 'wbzyl-sinatra-static-assets'
gem 'haml'

require 'rubygems'
require 'sinatra'
require 'date'
require 'sinatra/static_assets'
require 'haml'
require 'sass'
require 'app.rb'

set :run, false
set :environment, :production
set :raise_errors, true

log = File.new("log/development.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application