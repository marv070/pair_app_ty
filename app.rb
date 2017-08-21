require 'sinatra'
require_relative "rando_names.rb"

get '/' do
    erb :index
end

post '/user_given_names' do
    name = params[:name]
    # pairs = params[:pairs]
    pairs = pairing(name)
    p "1 #{pairs}"
    "what is returned to pairs #{pairs}"

     erb :pairs_page, :locals => {:pairs => pairs}

end

# get '/pairs' do
#     name = params[:name]
#     pairs = params[:pairs]
#     p "2 #{pairs}"
#     erb :pairs_page, :locals => {:name => name, :pairs => pairs}
    
# end

post '/pairs_page' do
    # name = params[:name]
    pairs = params[:pairs]
    p "3 #{pairs}"
     "show pairs arr here: #{pairs}"
     erb :results, :locals => {:pairs => pairs}
    
end

get '/results' do
    # name = params[:name]
    pairs = params[:pairs]
    p "4 #{pairs}"

    # erb :results, :locals => {:name => name, :pairs => pairs}
   
end