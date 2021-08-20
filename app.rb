require 'sinatra/base'
require './lib/spaces.rb'
require 'sinatra/reloader'
require './lib/user.rb'
require 'pg'
require 'sinatra/flash'


class BnB < Sinatra::Base
  register Sinatra::Flash
  
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

  post '/requestspaces' do
    @@place = params[:blah]
    redirect '/requested'
  end

  get '/requested' do
    erb :requests
  end

  post '/spaces' do
    #input = params['inputspacetextbox']
    Spaces.create(name: params['inputspacetextbox'], description: params['inputdesctextbox'])
    redirect '/spaces'
  end

post '/newusers' do
  user = User.create(email: params[:email], password: params[:password])
  session[:user_id] = user.id
  redirect '/spaces'
  
end

get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  user = User.authenticate(email: params[:email], password: params[:password])
  if user
    session[:user_id] = user.id
    redirect('/spaces')
  else
    flash[:notice] = 'Please check your email or password.' 
    redirect('/sessions/new')
  end
end

post '/sessions/destroy' do
  session.clear
  flash[:notice] = 'You have signed out.'
  redirect('/')
end

  

  run! if app_file == $0
end