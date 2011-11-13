class User < ActiveRecord::Base

  has_secure_password
  
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates_presence_of :password, 
                        :on => :create
                        
#  validates :name,  :presence => true,
#                    :length => 1..50
  validates :email, :presence => true,
                    :length => 1..50
                      
end
