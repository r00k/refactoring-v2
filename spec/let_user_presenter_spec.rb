require 'spec_helper'

describe UserPresenter do
  let(:user) do
    stub('user',
         name: 'Lord Bennington',
         company: company)
  end

  let(:company) do
    stub('company',
         name: 'CompanyCorp',
         parent_company: parent_company)
  end

  let(:parent_company) do
    stub('parent_company',
         name: 'Consolidated Holdings')
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

  describe '#parent_company_name' do
    it "returns the name of the user's parent company" do
      UserPresenter.new(user).parent_company_name.should ==
        'Consolidated Holdings'
    end

    it "returns a default when no parent company exists" do
      # Ruh roh.
    end
  end
end
