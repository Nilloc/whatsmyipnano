require 'rubygems'
require 'sinatra'
require 'haml'
set :haml, { :format => :html5 }


get '/' do
  @ip = request.env['HTTP_X_FORWARDED_FOR'] #.split(',').first
  # puts request.env
  haml :index
end