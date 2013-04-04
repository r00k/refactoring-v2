require_relative '../lib/purchases_controller'
require_relative '../lib/revenue_reporter'

describe PurchasesController, '#create' do
  it 'notifies the RevenueReporter of the purchase' do
    RevenueReporter.any_instance.should_receive(:notify_of)
    PurchasesController.new.create
  end
end
