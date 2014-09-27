class Tweet < ActiveRecord::Base
   client = Twitter::REST::Client.new do |config|
   config.consumer_key        = "eRylMoIZCqIJbfvn8qKIwqnW5"
   config.consumer_secret     = "g3zWUvPsjaIV7hUrWKQb8gaSriGn4rNqTxZHupB12rj1O0LEqT"
   config.access_token        = "344334932-aDCfHC98erUevFvEWex2jHMr4KjCVJ2RehR6X9gv"
   config.access_token_secret = "4EHV1xLOtb00cOoNgyoD7NMnTH7zwlon27SqZhZ5McoxB"

  end
  puts client.user("sferik")
  
  def read_message
    #return "No hay usuario" if self.user.blank?
    puts "HOLA"
    puts client.inspect
    client.user_timeline('_daso_').first.text
  end

end
