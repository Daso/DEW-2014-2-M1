class Tweet < ActiveRecord::Base
  def initialize()
   client = Twitter::REST::Client.new do |config|
   config.consumer_key        = "UgV1xvQTDwIsWTxaGR1RLIkdt"
   config.consumer_secret     = "s0XpyLDY2RDnGBMET08TcmaU0MG7RiFAyWcrtTSSgMpFrEBhGz"
   config.access_token        = "344334932-aDCfHC98erUevFvEWex2jHMr4KjCVJ2RehR6X9gv"
   config.access_token_secret = "4EHV1xLOtb00cOoNgyoD7NMnTH7zwlon27SqZhZ5McoxB"
  
  end
end
 
  
  
  
  def read_message
    client.user_timeline('_daso_').first.text
  end

end
