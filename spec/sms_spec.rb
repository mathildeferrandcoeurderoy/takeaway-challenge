describe SMS do
  subject(:sms) { described_class.new }
  let(:client) { double :client }
  let(:client_messages) { double :messages }
  info = { 'body' => 'data' }

  it 'sends a confirmation message to the customer' do
    allow(client).to receive(:message).and_return(client_messages)
    allow(client_messages).to receive(:create).with(info)
  end

end
