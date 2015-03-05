require 'rubygems'
require 'sinatra'
require 'haml'
set :haml, { :format => :html5 }


get '/' do
  @ip = request.env['HTTP_X_FORWARDED_FOR'] #.split(',').first
  # puts request.env
  haml :index
end

get '/ip' do
  @ip = request.env['HTTP_X_FORWARDED_FOR'] #.split(',').first
  # puts request.env
  haml :ip
end

get 'download' do
  # shows the link for downloading the zi
  
  haml :download
end