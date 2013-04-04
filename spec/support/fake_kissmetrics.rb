require 'plumbing'

class FakeKissmetrics
  attr_reader :events

  def initialize(api_key)
    @events = []
  end

  def send_event(*args)
    @events << [*args]
  end
end

ApplicationController.kissmetrics_http_client = FakeKissmetrics
