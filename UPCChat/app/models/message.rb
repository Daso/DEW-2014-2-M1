class Message < ActiveRecord::Base
  Pusher.app_id = 'XXXXX'
  Pusher.key = 'XXXXX'
  Pusher.secret = 'XXXXX'

  after_create :send_to_pusher

  def send_to_pusher
    logger.info "Hi?"
    Pusher.trigger('UPCChat2014', 'message:create', self.to_json)
    #Pusher['a_channel'].trigger('an_event', {:some => 'data'})
  end


end
