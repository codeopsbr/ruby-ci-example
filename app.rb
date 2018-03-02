require 'sinatra'

get '/' do
  "codeops v2 NG fucker+ "
end

get '/customer' do
  "customer - codeops"
end

get '/api/v1/auth' do
  "api auth"
end

get '/api/doc' do
  "api doc"
end

get '/users' do
  "show users"
end

get '/api/version' do
  "1.1.8"
end

get '/api/hostname' do
  Socket.gethostname
end
