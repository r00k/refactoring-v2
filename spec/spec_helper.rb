require 'plumbing'
require 'support/fake_kissmetrics_client'

Rails.env = ActiveSupport::StringInquirer.new('test')
