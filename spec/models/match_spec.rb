require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Match do
  before(:each) do
    @home_clasification = mock_model(Clasification)
    @visitor_clasification = mock_model(Clasification)
    @valid_attributes = {
      :starts_at => 2.days.since,
      :home_clasification => @home_clasification,
      :visitor_clasification => @visitor_clasification
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
    it 'should belongs to a stage' do
      Match.should belong_to(:stage)
    end
    it 'should belongs to a home clasification' do
      Match.should belong_to(:home_clasification, :class_name=>'Clasification', :foreign_key=>'home_clasification_id')
    end
    it 'should belongs to a visitor clasification' do
      Match.should belong_to(:visitor_clasification, :class_name=>'Clasification', :foreign_key=>'visitor_clasification_id')
    end
    it 'should belongs to a home team' do
      Match.should belong_to(:home_team, :class_name=>'Team', :foreign_key=>'home_team_id')
    end
    it 'should belongs to an visitor team' do
      Match.should belong_to(:visitor_team, :class_name=>'Team', :foreign_key=>'visitor_team_id')
    end
  end

  
  describe "validations" do
    it "should create a new instance given valid attributes" do
      @match = Match.new(@valid_attributes)
      @match.should be_valid
    end
    it "should not create a new instance without an associated home clasification" do
      @match = Match.new(@valid_attributes.merge!(:home_clasification=>nil))
      @match.should_not be_valid
      @match.errors_on(:home_clasification).should_not be_empty
    end
    it "should not create a new instance without an associated visitor clasification" do
      @match = Match.new(@valid_attributes.merge!(:visitor_clasification=>nil))
      @match.should_not be_valid
      @match.errors_on(:visitor_clasification).should_not be_empty
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
