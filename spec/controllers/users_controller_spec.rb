require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    describe "for non-signed-in users" do
      it "returns http success" do
        get :new
        response.should be_success
      end
    end

    describe "for signed-in users" do
      it "should display a 'you are already signed in' message" do
        pending
        @user = test_sign_in(Factory(:user))
        get :new
        response.should have_selector('div.error', 
                                      :content => "already signed in")
      end
    end
  end
  
  describe "POST 'create'" do
  
    before(:each) do
      @valid_attr = { :name => "Mr. Valid",
                      :email => "mr@valid.com",
                      :password => "password",
                      :confirmation => "password"}
    end
    
    describe "for non-signed-in users" do
      it "should display the user's profile page (show)" do
        pending
        @user = User.create(@valid_attr)
        response.should redirect_to(user_path(@user))
      end
      
    end
    
  end
  

end
