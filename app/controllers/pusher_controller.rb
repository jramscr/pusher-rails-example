class PusherController < ApplicationController
  def auth
    user_id = (1..10).to_a.shuffle.first
    response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
      :user_id => user_id,
      :user_message => "#{""}",
      :user_info => {
        :name => "User #{user_id}"
      }
    })
    render :json => response
  end

  def post
    console.log("Hey mae")
  end


end
