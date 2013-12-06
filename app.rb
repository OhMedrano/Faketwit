require 'sinatra'
require 'haml'
require 'rake'
require 'sinatra/activerecord'
require 'sqlite3'
require 'rack-flash'
require 'bcrypt'

set :database, 'sqlite3:///users.sqlite3'


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

#This post is just a temporary fix.
post '/signup' do
	@user = User.new(params['user'])
	redirect '/home'
#I commented this out because it was giving me tons of problems with a 'Stack Too Deep' error.
#Apparently, something is running and creating an infinite loop once someone creates an account,
#Will work on it later on tonight. 

	if @user.save
		flash[:notice] = "Good times, now sign in and make a first post!"
		
	else
		flash[:alert] = "Try again!"
		redirect '/signup'
	end

end

post '/home' do
  @user = User.authenticate(params['user']['email'], params['user']['password'])
  if @user
    session[:user_id] = @user.uname
    
    redirect '/profile'
  else
    
    redirect '/signup'
  end
end