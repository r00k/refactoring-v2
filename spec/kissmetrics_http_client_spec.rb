require 'spec_helper'

describe KissmetricsHttpClient, '#send_event' do
  it 'theoretically exists but is actually a no-op' do
    KissmetricsHttpClient.new('api-key').send_event(nil, nil, nil)
  end
end
