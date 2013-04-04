require 'plumbing'

class FakeKissmetrics
  attr_reader :events

  def initialize
    @events = []
  end

  def send_event(*args)
    @events << [*args]
  end
end
