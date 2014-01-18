require 'rubygems'
require 'sinatra'
require 'haml'
require 'sinatra/partial'

set :haml, {:format => :html5, :attr_wrapper => '"'}

class ReminderSinatra < Sinatra::Base

  register Sinatra::Partial

  set :public_folder => "public", :static => true
  set :partial_underscores, true

  get "/" do
    haml :index
  end
end
