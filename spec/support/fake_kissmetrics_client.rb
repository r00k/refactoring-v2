require 'plumbing'

class FakeKissmetricsClient
  attr_reader :events

  def initialize(api_key)
    @events = []
  end

  def send_event(*args)
    @events << [*args]
  end

  ApplicationController.kissmetrics_http_client = self
end

