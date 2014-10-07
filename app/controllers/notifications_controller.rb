class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    message = client.messages.create from: '+1 843-593-9721', to: '+1 843-263-3471', body: 'Learning to send SMS you are.'
    render plain: message.status
  end
 
end