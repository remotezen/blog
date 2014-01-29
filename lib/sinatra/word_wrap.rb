
module Sinatra
  module WordWrap 
    def wrap_long_string(text,max_width = 20)
      (text.length < max_width) ? 
        text : 
        text.scan(/.{1,#{max_width}}/).join("<wbr>")
    end
  end
  helpers WordWrap
end

