class PusherController < ApplicationController
  def auth
    user_id = (1..100).to_a.shuffle.first
    response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
      :user_id => user_id,
      :user_message => "Sended Message",
      :user_info => {
        :name => "User #{user_id}"
      }
    })
    render :json => response
  end
end
