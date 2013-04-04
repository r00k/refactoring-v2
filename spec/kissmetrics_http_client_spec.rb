require 'plumbing'

describe KissmetricsHttpClient, '#send_event' do
  it 'theoretically exists but is actually a no-op' do
    KissmetricsHttpClient.new('api-key').send_event
  end
end
