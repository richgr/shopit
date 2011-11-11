require 'spec_helper'

describe User do
  
  describe "Create new user" do

    before(:each) do
      @valid = {
            :name => "John",
            :email => "john@smith.com",
            :password => "password",
            :password_confirmation => "password"
      }
      @invalid = {
            :name => "",
            :email => "",
            :password => "",
            :password_confirmation => ""
      }
    end

    describe "success" do
          
      it "should create a new instance" do
        lambda do
          User.create!(@valid)
        end.should change(User, :count).by(1)
      end
      
    end
        
    describe "failure" do
      
      it "should display an error message if not valid attributes" do
        lambda do
          User.create(@invalid)
        end.should change(User, :count).by(0)
      end
      
    end
  
  end
    
end
