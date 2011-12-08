class User < ActiveRecord::Base

  has_secure_password
  
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates :password,  :presence => { :on => :create },
                        :length => 1..50
  validates :name,      :presence => true,
                        :length => 1..50
  validates :email,     :presence => true,
                        :length => 1..50
                      
end
