require 'sinatra'
require 'googlebooks'

get '/' do
 'hello pudding cup'

 erb :index
end


post "/" do
  @input = params['query']
  @results = GoogleBooks.search(@input)
  erb :results


end
