require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Group do
  before(:each) do
    @stage = mock_model(CompetitionStage)
    @valid_attributes = {
      :competition_stage => @stage,
      :name => "Group A"
    }
  end


  describe "associations" do
    it 'should belongs to a competition stage' do
      Group.should belong_to(:competition_stage)
    end
  end

  
  describe "validations" do
    it "should create a new instance given valid attributes" do
      @group = Group.new(@valid_attributes)
      @group.should be_valid
    end
    it "should not create a new instance without an associated competition's stage" do
      @group = Group.new(@valid_attributes.merge!(:competition_stage=>nil))
      @group.should_not be_valid
      @group.errors_on(:competition_stage).should_not be_empty
    end
    it "should not create a new instance without a name" do
      @group = Group.new(@valid_attributes.merge!(:name=>nil))
      @group.should_not be_valid
      @group.errors_on(:name).should_not be_empty
    end
    it "should not create a new instance if the name has already taken for the same competition stage" do
      @group = Group.create!(@valid_attributes)
      @another_group = Group.new(@valid_attributes)
      @another_group.should_not be_valid
      @another_group.errors_on(:name).should_not be_empty
    end
  end

end
