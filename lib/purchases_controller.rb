require 'application_controller'
require 'purchase'

class PurchasesController < ApplicationController
  def create
    purchase = Purchase.create(params[:purchase])
    RevenueReporter.new(kissmetrics_http_client).notify_of(purchase)
  end

  private

  def params
    { purchase: { product_name: 'Clean Code' } }
  end
end
