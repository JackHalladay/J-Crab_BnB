require 'sinatra/base'

class BnB < Sinatra::Base
  get '/test' do
    'Test page'
  end

get '/' do

  erb :homepage
  
end

get '/spaces' do
  erb :spaces
end

get '/addspaces' do
'Add a Space'
end
  run! if app_file == $0
end

