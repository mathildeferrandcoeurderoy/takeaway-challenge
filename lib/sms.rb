require 'dotenv/load'
require 'twilio-ruby'

class SMS

  attr_reader :time, :client

  def initialize(time = Time.new + 3600,
    client = Twilio::REST::Client)
    @client = client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    @time = time.strftime('%H:%M')
  end

  def send_sms
    @client.messages.create(
    from: ENV['FROM'],
    to: ENV['TO'],
    body: "Thank you! Your order was placed and will be delivered before #{@time}"
    )
  end

end
