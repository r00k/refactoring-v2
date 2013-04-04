require_relative '../lib/purchases_controller'
require_relative '../lib/revenue_reporter'

describe PurchasesController, '#create' do
  it 'notifies Kissmetrics of the purchase' do
    purchase = stub('purchase')
    RevenueReporter.any_instance.should_receive(:notify_of).with(purchase)
    PurchasesController.new.create(purchase)
  end
end
