require 'spec_helper'

describe UserController do
  render_views
  
  describe "GET 'name'" do
    it "should be successful" do
      get 'name'
      response.should be_success
    end
  end

  describe "GET 'email'" do
    it "should be successful" do
      get 'email'
      response.should be_success
    end
  end
  
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title",
                        :content => "Sign up")
    end
  end

  
  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
    it "should have the right title" do
      get 'edit'
      response.should have_selector("title", 
                        :content => "Ticketsystem")
    end
  end
  
  
  
end
