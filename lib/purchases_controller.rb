require 'application_controller'

class PurchasesController < ApplicationController
  def create(purchase)
    RevenueReporter.new(kissmetrics_http_client).notify_of(purchase)
  end
end
