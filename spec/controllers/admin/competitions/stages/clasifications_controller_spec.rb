require 'spec_helper'

describe Admin::Competitions::Stages::ClasificationsController do

  #Delete these examples and add some real ones
  it "should use Admin::Competitions::Stages::ClasificationsController" do
    controller.should be_an_instance_of(Admin::Competitions::Stages::ClasificationsController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end
end
