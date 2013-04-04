require 'spec_helper'

describe UserPresenter do
  describe '#name' do
    it "returns the user's name" do
      user = stub('user', name: 'Lord Bennington')
      UserPresenter.new(user).name.should == 'Lord Bennington'
    end
  end

  describe '#company_name' do
    it "returns the user's company name" do
      company = stub('company', name: 'CompanyCorp')
      user = stub('user', company: company)

      UserPresenter.new(user).company_name.should ==
        'CompanyCorp'
    end
  end

  describe '#parent_company_name' do
    it "returns the name of the user's parent company" do
      parent_company = stub('parent_company', name: 'Consolidated Holdings')
      company = stub('company', parent_company: parent_company)
      user = stub('user', company: company)

      UserPresenter.new(user).parent_company_name.should ==
        'Consolidated Holdings'
    end

    it 'does the same thing but with stub_chain' do
      user = stub('user')
      user.stub_chain(:company, :parent_company, :name).and_return('Consolidated Holdings')

      UserPresenter.new(user).parent_company_name.should ==
        'Consolidated Holdings'
    end
  end
end
