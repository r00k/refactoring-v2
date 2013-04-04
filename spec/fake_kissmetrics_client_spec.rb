require 'spec_helper'

describe FakeKissmetricsClient, '#send_event' do
  it 'records events that can be read back later' do
    fake = FakeKissmetricsClient.new('api-key')
    fake.send_event('purchase', 'Clean Code', 99)
    fake.events.should == [['purchase', 'Clean Code', 99]]
  end

  it 'sets the kissmetrics_http_client on ApplicationController to itself' do
    ApplicationController.kissmetrics_http_client.should eq FakeKissmetricsClient
  end
end
