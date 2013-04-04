require_relative '../lib/purchases_controller'
require_relative '../lib/kissmetrics_notifier'

describe PurchasesController, '#create' do
  it 'notifies the KissmetricsNotifier of the purchase' do
    KissmetricsNotifier.any_instance.should_receive(:notify_of)
    PurchasesController.new.create
  end
end
