require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World!!!!!!"
end

get '/secret' do
  "shh, it's a secret"
end

get '/random-cat' do
  @name = ["Fred", "bob", "will"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end


post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
