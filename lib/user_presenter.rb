class UserPresenter
  def initialize(user)
    @user = user
  end

  def name
    @user.name
  end

  def company_name
    @user.company.name
  end

  def parent_company_name
    @user.company.parent_company.name
  end
end
