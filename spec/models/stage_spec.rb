require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Stage do
  before(:each) do
    @competition = mock_model(Competition)
    @valid_attributes = {
      :competition => @competition,
      :name => "Primera Ronda"
    }
  end


  describe "associations" do
    it "should belongs to a Competition" do
      Stage.should belong_to(:competition)
    end
    it "should has many clasification" do
      Stage.should have_many(:clasifications)
    end
    it "should has many matches" do
      Stage.should have_many(:matches)
    end
    it "should has many groups" do
      Stage.should have_many(:groups)
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @stage = Stage.new(@valid_attributes)
      @stage.should be_valid
    end
    it "should not create a new instance without a name" do
      @stage = Stage.new(@valid_attributes.merge!(:name=>nil))
      @stage.should_not be_valid
      @stage.errors_on(:name).should_not be_empty
    end
    it "should not create a new instance without an associated competition" do
      @stage = Stage.new(@valid_attributes.merge!(:competition=>nil))
      @stage.should_not be_valid
      @stage.errors_on(:competition).should_not be_empty
    end
  end

end
