require 'spec_helper'

describe "Users" do

  describe "Get 'new'" do
    it "should have a form element for :email" do
      get new_user_path
      response.should have_selector('label', :content => 'Email')
    end

    it "should have the right title" do
      get new_user_path
      response.should have_selector("title", :content => "Sign up")
    end
  end

  describe "Create a new user" do
    before(:each) do
      @attr = { :name => "",
                :email => "", 
                :password => "", 
                :password_confirmation => ""}
    end
    
    describe "failure" do      
      it "should display an error message" do
        pending
      end
    end
    
    describe "success" do
      it "should blahblahblah" do
        pending
      end
    end
  end
  
end
