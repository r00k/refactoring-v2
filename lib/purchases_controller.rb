require 'plumbing'

class PurchasesController < ApplicationController
  def create
    purchase = Purchase.create(params[:purchase])
    KissmetricsNotifier.new(kissmetrics_http_client).
      notify_of(purchase)
  end
end
