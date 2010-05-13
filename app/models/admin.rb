class Admin < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :validatable, :trackable, :timeoutable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
end
