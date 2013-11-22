require 'sinatra'
require 'haml'
require 'rake'
require 'sinatra/activerecord'
require 'sqlite3'
require 'rack-flash'
require 'bcrypt'

configure(:development){set :database, 'sqlite3:///users.sqlite3'}


require './models'

get '/' do 
  haml :home
end

get '/sign up' do
  haml :signup
end

get '/profile' do
  haml :profile
end

get '/about' do 
  haml :about
end


