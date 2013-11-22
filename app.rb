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

get '/signup' do
  haml :signup
end

get '/profile' do
  haml :profile
end

get '/about' do 
  haml :about
end

get '/home' do
	haml :home
end

post '/signup' do
	@user = User.new(params['user'])
	if @user.save
		flash[:notice] = "Good times, now sign in and make a first post!"
		redirect '/'
	else
		flash[:alert] = "Try again!"
		redirect '/signup'
	end
end