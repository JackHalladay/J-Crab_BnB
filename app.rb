require 'sinatra/base'
require './lib/spaces.rb'
require 'sinatra/reloader'
require './lib/user.rb'



class BnB < Sinatra::Base
  get '/test' do
    'Test page'
  end
  
  enable :sessions

get '/' do
  erb :homepage
end

get '/spaces' do
  
  @user = User.find(session[:user_id])
  
  @spaces = Spaces.view
  erb :spaces
end

get '/addspaces' do
  erb :addspaces
end

get '/requestspaces' do
  erb :requests
end

post '/spaces' do
  #input = params['inputspacetextbox']
Spaces.create(name: params['inputspacetextbox'])
redirect '/spaces'
end

post '/newusers' do
  user = User.create(email: params[:email], password: params[:password])
  session[:user_id] = user.id
  redirect '/spaces'
  
end


  run! if app_file == $0
end

