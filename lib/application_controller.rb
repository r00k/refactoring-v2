require 'active_support/core_ext/class/attribute_accessors'
require 'kissmetrics_http_client'

class ApplicationController
  cattr_writer :kissmetrics_http_client

  KISSMETRICS_API_KEY = 'lolapikey'

  def kissmetrics_http_client
    @@kissmetrics_http_client.new(KISSMETRICS_API_KEY)
  end
end

# In config/initializers/kissmetrics_http_client.rb
ApplicationController.kissmetrics_http_client = KissmetricsHttpClient
