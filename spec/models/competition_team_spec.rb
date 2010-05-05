require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CompetitionTeam do
  before(:each) do
    @mock_competition = mock_model(Competition)
    @mock_team = mock_model(Team)
    @valid_attributes = {
      :competition => @mock_competition,
      :team => @mock_team
    }
  end

  describe "associations" do
    it 'should belongs to a competition' do
      CompetitionTeam.should belong_to(:competition)
    end
    it 'should belongs to a team' do
      CompetitionTeam.should belong_to(:team)
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @competition_team = CompetitionTeam.new(@valid_attributes)
      @competition_team.should be_valid
    end
    it "should not create a new instance without a competition" do
      @competition_team = CompetitionTeam.new(@valid_attributes.merge!(:competition=>nil))
      @competition_team.should_not be_valid
      @competition_team.errors_on(:competition).should_not be_empty
    end
    it "should not create a new instance without a team" do
      @competition_team = CompetitionTeam.new(@valid_attributes.merge!(:team=>nil))
      @competition_team.should_not be_valid
      @competition_team.errors_on(:team).should_not be_empty
    end
  end

end
