require 'sinatra'
require 'haml'


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

post '/signup' do
  name = #{params[:name]}
  email = #{params[:Email]}
  id = #{params[:id]}
end
