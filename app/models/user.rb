class User < ActiveRecord::Base
	has_secure_password

  before_save { |user| user.email = email.downcase }
end
