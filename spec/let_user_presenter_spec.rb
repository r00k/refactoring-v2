require 'spec_helper'

describe UserPresenter do
  let(:user) { stub('user', name: 'Lord Bennington', company: company) }
  let(:company) { stub('company', name: 'CompanyCorp', parent_company: parent_company) }
  let(:parent_company) { stub('parent_company', name: 'Consolidated Holdings') }

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

  describe '#parent_company_name' do
    it "returns the name of the user's parent company" do
      UserPresenter.new(user).parent_company_name.should ==
        'Consolidated Holdings'
    end
  end
end
