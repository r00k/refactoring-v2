require 'spec_helper'

describe UserPresenter do
  describe '#name' do
    it "returns the user's name" do
      user = stub('user', name: 'Lord Bennington')
      UserPresenter.new(user).name.should == 'Lord Bennington'
    end
  end

  describe '#parent_company_name' do
    it "returns the user's company name" do
      user = stub('user',
                  company: stub('company',
                                name: 'Katzenjammers'))

      UserPresenter.new(user).company_name.should ==
        'Katzenjammers'
    end
  end
end
