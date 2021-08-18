require 'sinatra/base'
require './lib/spaces.rb'
require 'sinatra/reloader'

class BnB < Sinatra::Base
  get '/test' do
    'Test page'
  end

get '/' do
  erb :homepage
end

get '/spaces' do
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
  #User.create(email: params[:email], password: params[:password])
  #redirect '/bookmarks'
  'Welcome, test@example.com'
end


  run! if app_file == $0
end

