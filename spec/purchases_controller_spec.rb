require_relative '../lib/purchases_controller'
require_relative '../lib/kissmetrics_notifier'

describe PurchasesController, '#create' do
  it 'does not raise errors' do
    PurchasesController.new.create
  end
end
