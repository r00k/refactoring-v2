class Rails
  def self.env
    @@env
  end

  def self.env=(env)
    @@env = ActiveSupport::StringInquirer.new(env)
  end
end
