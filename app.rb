require 'sinatra'
require_relative "rando_names.rb"

get '/' do
    erb :index
end

post '/user_given_names' do
    name = params[:name]
    pairs = params[:pairs]
    pairs = pairing(name)
    erb :pairs_page, :locals => {:name => name, :pairs => pairs}
end

get '/pairs' do
    name = params[:name]
    pairs = params[:pairs]
    erb :pairs_page, :locals => {:name => name, :pairs => pairs}
end