require 'plumbing'

class ApplicationController
  cattr_writer :kissmetrics_http_client

  KISSMETRICS_API_KEY = 'lolapikey'

  def kissmetrics_http_client
    @@kissmetrics_http_client.new(KISSMETRICS_API_KEY)
  end
end

# In config/initializers/kissmetrics_http_client.rb
ApplicationController.kissmetrics_http_client = KissmetricsHttpClient

# In spec/support/fake_kissmetrics.rb
# ApplicationController.kissmetrics_http_client = FakeKissmetrics
