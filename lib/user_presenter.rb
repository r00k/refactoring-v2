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
end
