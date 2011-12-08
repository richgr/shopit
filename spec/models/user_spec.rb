require 'spec_helper'

describe User do
  
  describe "create" do

    before(:each) do
      @attributes = {
            :name => "John",
            :email => "john@smith.com",
            :password => "password",
            :password_confirmation => "password"
      }
    end

    describe "success" do
          
      it "should accept the new attributes" do
        @user = User.new(@attributes)
        puts @user.email
        puts @user.password
        @user.should be_valid
      end
      it "should create a new instance" do
        lambda do
          user = User.new(@attributes)
          user.save
        end.should change(User, :count).by(1)
      end
      it "should create no errors" do
        user = User.new(@attributes)
        user.save
        user.errors.nil? == true
      end
      
    end
        
    describe "failure" do
            
      it "should not create a new user if password blank" do
        lambda do
          User.create(@attributes.merge(:password => "",
                                        :password_confirmation => ""))
        end.should change(User, :count).by(0)
      end
      it "should have the correct error if password blank" do
        @user = User.create(@attributes.merge(:password => "",
                                        :password_confirmation => ""))
        @user.errors.messages.should include{:password_digest}
        @user.errors.messages[:password_digest].should \
                    == ["can't be blank"]
      end
      it "should not create a new user if name blank" do
        lambda do
          User.create(@attributes.merge(:name => ""))
        end.should change(User, :count).by(0)
      end
      it "should have the correct error if name blank" do
        @user = User.create(@attributes.merge(:name => ""))
        @user.errors.messages.should include {:name}
        @user.errors.messages[:name].should \
                    include "can't be blank"
      end
      it "should not create a new user if email blank" do
        pending
        lambda do
          User.create(@attributes.merge(:password => "",
                                        :password_confirmation => ""))
        end.should change(User, :count).by(0)
      end
      it "should have the correct error if email blank" do 
        pending
        @user = User.create(@invalid)
        @user.errors.should be_nil
      end

    end
  end
    
end
