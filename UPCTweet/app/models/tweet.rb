OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
class Tweet < ActiveRecord::Base
  def initialize(params={})    
    @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "XXXXXXXXXXXXXXXXXXXXXx"
    config.consumer_secret     = "XXXXXXXXXXXXXXXXXXXXXx"
    config.access_token        = "XXXXXXXXXXXXXXXXXXXXXx-XXXXXXXXXXXXXXXXXXXXXx"
    config.access_token_secret = "XXXXXXXXXXXXXXXXXXXXXx"  
    end
	super
  end 
  
  
  def read_message
    @client.user_timeline(self.user).first.text
  end

end
