require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/model.rb'
require 'json'

enable :sessions

get "/resetAll-0811" do
  
end

get "/" do
  redirect "choose_group"
end

get "/choose_group" do
  erb :choose_group
end

post "/choose_group/:groupname" do
  logger.info "test"
  logger.info Group.find_by(name: params[:groupname])
  session[:group] = Group.find_by(name: params[:groupname]).id
  true
end

get "/wait" do
  erb :wait
end

get "/round" do
  erb :round
end

post "/nextRound" do
  content_type :json
  group = Group.find_by(id: session[:group])
  group.round += 1
  group.save
  res = {
    round: group.round
  }
  res.to_json
end

post "/choose/a" do
  group = Group.find_by(id: session[:group])
  group.choose += "a"
  group.save
  true
end

post "/choose/b" do
  group = Group.find_by(id: session[:group])
  group.choose += "b"
  group.save
  true
end

# before do
#   if Count.all.size == 0
#     Count.create(number: 0)
#   end
# end

# get '/' do
#   @numbers = Count.all
#   erb :index
# end

# post "/createNew" do
#   Count.create(number: 0)
  
#   redirect "/"
# end

# post "/plus/:id" do
  
#   count = Count.find_by(id: params[:id])
#   count.number = count.number + 1
#   count.save
  
#   json :num => count.number
# end

# post "/minus/:id" do
  
#   count = Count.find_by(id: params[:id])
#   count.number = count.number - 1
#   count.save
  
#   json :num => count.number
# end

# post "/clear/:id" do
  
#   count = Count.find_by(id: params[:id])
#   count.number = 0
#   count.save
  
#   json :num => count.number
# end

# post "/delete/:id" do
  
#   count = Count.find_by(id: params[:id])
#   count.destroy
# end