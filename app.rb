require 'sinatra'

get '/' do
  "codeops"
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
