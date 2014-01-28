require './environments'
require 'sinatra/mapping'



class Post < ActiveRecord::Base

end
class App < Sinatra::Base
 set :root, File.dirname(__FILE__) # You must set app root
 register Sinatra::AssetPack 
 use Rack::CommonLogger
 helpers Sinatra::WordWrap
  #map :home, ''

  assets {
    serve '/js',     from: 'app/js'        # Default
    serve '/css',    from: 'app/css'       # Default
    serve '/images', from: 'app/images'    # Default

    # The second parameter defines where the compressed version will be served.
    # (Note: that parameter is optional, AssetPack will figure it out.)
    js :app, '/js/app.js', [
      '/js/vendor/**/*.js',
      '/js/lib/**/*.js'
    ]

    css :application, '/css/application.css', [
      '/css/screen.css', '/css/kube.css'
    ]

    js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
    css_compression :simple   # :simple | :sass | :yui | :sqwish
  }
  
 
 get '/' do
    @posts = Post.order("created_at DESC")
    @title = "Welcome."
    erb :home, :locals => { :posts => @posts}
  end

end
App.run!


