require 'sinatra'
require 'googlebooks'

get '/' do
 

 erb :index
end


post "/" do
  @input = params['query']
  @results = GoogleBooks.search(@input)
  erb :index, :layout => :results


end
