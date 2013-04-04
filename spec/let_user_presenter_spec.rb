require 'spec_helper'

describe UserPresenter do
  let(:user) do
    stub('user', name: 'Lord Bennington',
         company: stub('company', name: 'CompanyCorp'))
  end

  describe '#name' do
    it "returns the user's name" do
      UserPresenter.new(user).name.should == 'Lord Bennington'
    end
  end

  describe '#company_name' do
    it "returns the user's company name" do
      UserPresenter.new(user).company_name.should ==
        'CompanyCorp'
    end
  end
end
