require 'plumbing'

class ApplicationController
  cattr_accessor :kissmetrics_http_client

  KISSMETRICS_API_KEY = 'lolapikey'

  def kissmetrics_http_client
    @@kissmetrics_http_client.new(KISSMETRICS_API_KEY)
  end

  private

  def params
    { purchase: { product_name: 'Clean Code' } }
  end
end
