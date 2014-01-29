require File.expand_path('../config/environments.rb', __FILE__)
$: << File.dirname(__FILE__) + "/lib"
require 'sinatra/word_wrap'



class App < Sinatra::Base
 set :root, File.dirname(__FILE__) # You must set app root
 register Sinatra::AssetPack 
 register Sinatra::Trails

#configure { set :server, :puma }
 #
 helpers Sinatra::WordWrap


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
      '/css/screen.css', '/css/kube.css', '/css/custom.css'
    ]

    js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
    css_compression :simple   # :simple | :sass | :yui | :sqwish
  }
after do
  ActiveRecord::Base.connection.close
end
 
  
 map :home, :to=> '/'
 
 get path_for(:home) do
    @posts = Post.order("created_at DESC")
    @title = "Welcome."
    erb :home, :locals => { :posts => @posts}
  end

end
App.run!


