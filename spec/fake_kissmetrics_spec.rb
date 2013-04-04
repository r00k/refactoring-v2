require 'plumbing'
require_relative 'support/fake_kissmetrics'

describe FakeKissmetrics, '#send_event' do
  it 'records events' do
    fake = FakeKissmetrics.new('api-key')
    fake.send_event('purchase', 'Clean Code', 99)
    fake.events.should == [['purchase', 'Clean Code', 99]]
  end
end
