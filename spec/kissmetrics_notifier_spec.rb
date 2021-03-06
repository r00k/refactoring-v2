require 'spec_helper'

describe KissmetricsNotifier, 'notify_of' do
  it 'calls send_event on the client' do
    purchase = stub('purchase', product_name: 'Clean Code',
                    amount: 99)
    client = double('client')
    client.should_receive(:send_event).with('purchase', 'Clean Code', 99)
    reporter = KissmetricsNotifier.new(client)

    reporter.notify_of(purchase)
  end
end
