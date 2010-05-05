require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Match do
  before(:each) do
    @stage = mock_model(CompetitionStage)
    @home_team = mock_model(Team)
    @visitor_team = mock_model(Team)
    @valid_attributes = {
      :competition_stage => @stage,
      :starts_at => 2.days.since,
      :home_team => @home_team,
      :visitor_team => @visitor_team
#      :home_goals => 3,
#      :visitor_goals => 1,
#      :state => "playing"
    }
  end

  describe "plugins inclusions" do
     it 'should include acts as state machine' do
       Match.should include(AASM)
     end
  end


  describe "associations" do
    it 'should belongs to a competition stage' do
      Match.should belong_to(:competition_stage)
    end
    it 'should belongs to a home team' do
      Match.should belong_to(:home_team, :class_name=>'Team')
    end
    it 'should belongs to an visitor team' do
      Match.should belong_to(:visitor_team, :class_name=>'Team')
    end
  end

  
  describe "validations" do
    it "should create a new instance given valid attributes" do
      @match = Match.new(@valid_attributes)
      @match.should be_valid
    end
    it "should not create a new instance without an associated competition's stage" do
      @match = Match.new(@valid_attributes.merge!(:competition_stage=>nil))
      @match.should_not be_valid
      @match.errors_on(:competition_stage).should_not be_empty
    end
    it "should not create a new instance without an associated home team" do
      @match = Match.new(@valid_attributes.merge!(:home_team=>nil))
      @match.should_not be_valid
      @match.errors_on(:home_team).should_not be_empty
    end
    it "should not create a new instance without an associated visitor team" do
      @match = Match.new(@valid_attributes.merge!(:visitor_team=>nil))
      @match.should_not be_valid
      @match.errors_on(:visitor_team).should_not be_empty
    end
  end


  describe "AASM" do
    it "should originally be 'uninitiated'" do
      @match = Match.create(@valid_attributes)
      @match.state.should == 'uninitiated'
    end
    it "should switch to 'playing' from 'uninitiated' when 'play!'" do
      @match = Match.create(@valid_attributes)
      @match.play!
      @match.state.should == 'playing'
    end
    it "should switch to 'completed' from 'playing' when 'complete!'" do
      @match = Match.create(@valid_attributes)
      @match.play!
      @match.complete!
      @match.state.should == 'completed'
    end
  end

end
