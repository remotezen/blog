$: << File.dirname(__FILE__) + "/lib"
$: << File.dirname(__FILE__) + "/config"
$: << File.dirname(__FILE__) + "/models"
require 'rubygems'

#require 'routes'
require 'bundler/setup'
require 'active_record'
require "sinatra/base"
require "sinatra/activerecord"
require "sinatra/assetpack"
require "sinatra/trails"
Dir.glob('./lib/*').each do |folder|
  Dir.glob(folder +"/*.rb").each do |file|
    require file
  end
end
ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'blog.db'
)
require File.expand_path('../../models/post.rb', __FILE__)

