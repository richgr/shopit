class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create, 
                                   :message => "Password can not be blank"
end
