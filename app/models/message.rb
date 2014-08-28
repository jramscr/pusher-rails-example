class Message < ActiveRecord::Base
   @message = Message.create(:message => 'El primer mensaje', :datetime => datetime.now)
end
