require 'sinatra'
require 'lib/couch_api'

before do
  @couch_api = CouchApi.new
end

after do
  @couch_api.close_connection
end


get '/' do
  redirect "/index.html"
end

get '/products/all' do
  content_type :json

  @couch_api.get_products.to_json
end