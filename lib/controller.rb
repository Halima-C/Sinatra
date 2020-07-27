require 'gossip'

class ApplicationController < Sinatra::Base
  
  get '/' do
  erb :index, locals: {gossips: Gossip.all}
end

	get '/gossips/new/' do
	erb :new_gossip
end

post '/gossips/new/' do
  Gossip.new(params["gossips_author"],params["gossips_content"]).save
  redirect '/'
end

get '/gossips/:id/' do
  erb :show, locals: {gossips: Gossip.find(params[:id])}
end
end

