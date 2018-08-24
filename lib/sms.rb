require 'twilio-ruby'
require 'dotenv/load'

class SMS

  attr_reader :time

  def initialize(time = Time.new + 3600)
    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    @time = time
  end

  def send_sms
    @client.messages.create(
    from: ENV['FROM'],
    to: ENV['TO'],
    body: "Thank you! Your order was placed and will be delivered before #{ @time.strftime('%H:%M') }"
    )
  end

end
