require 'twilio-ruby'
require 'dotenv/load'

class SMS

  def initialize
    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    # from = ENV['FROM']
    # to = ENV['TO']
  end

  def send_sms
    @client.messages.create(
    from: ENV['FROM'],
    to: ENV['TO'],
    body: "Thank you! Your order was placed and will be delivered before #{ }"
    )
  end

end
