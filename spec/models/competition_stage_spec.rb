require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CompetitionStage do
  before(:each) do
    @mock_competition = mock_model(Competition)
    @valid_attributes = {
      :competition => @mock_competition,
      :name => "Round 1"
    }
  end

#  describe "plugins inclusions" do
#     it 'should include acts as list' do 
#       CompetitionStage.should include(ActiveRecord::Acts::List)
#     end
#  end

  describe "associations" do
    it 'should belongs to a competition' do
      CompetitionStage.should belong_to(:competition)
    end
    it 'should has many matches' do
      CompetitionStage.should have_many(:matches)
    end
    it 'should has many groups' do
      CompetitionStage.should have_many(:groups)
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @competition_stage = CompetitionStage.new(@valid_attributes)
      @competition_stage.should be_valid
    end
    it "should not create a new instance without a competition" do
      @competition_stage = CompetitionStage.new(@valid_attributes.merge!(:competition=>nil))
      @competition_stage.should_not be_valid
      @competition_stage.errors_on(:competition).should_not be_empty
    end
    it "should not create a new instance without a name" do
      @competition_stage = CompetitionStage.new(@valid_attributes.merge!(:name=>nil))
      @competition_stage.should_not be_valid
      @competition_stage.errors_on(:name).should_not be_empty
    end
  end

end
