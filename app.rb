require "sinatra"
require "sinatra/activerecord"
require './environments'


class Post < ActiveRecord::Base
  get '/' do
    erb :home, :locals => { :posts => @posts}
  end

end

