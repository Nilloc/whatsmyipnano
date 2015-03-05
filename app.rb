require 'rubygems'
require 'sinatra'
require 'haml'
set :haml, { :format => :html5 }


get '/' do
  @ip = request.env['HTTP_X_FORWARDED_FOR'] #.split(',').first
  
  @appDate = File.mtime(File.join('public', 'iStat nano.wdgt.zip'))
  puts @appDate
  
  # puts request.env
  haml :index
end

get '/ip' do
  @ip = request.env['HTTP_X_FORWARDED_FOR'] #.split(',').first
  # puts request.env
  haml :ip
end

get '/update' do
  # Some stuff to display the latest version number... which I'm not interested in supporting yet.
  redirect to('/')
end