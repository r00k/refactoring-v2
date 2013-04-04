require 'spec_helper'

describe PurchasesController, '#create' do
  it 'does not raise errors' do
    PurchasesController.new.create
  end
end
