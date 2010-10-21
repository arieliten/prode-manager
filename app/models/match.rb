class Match < ActiveRecord::Base
  include AASM

  # == Relations
  belongs_to :stage
  belongs_to :home_clasification,   :class_name=>'Clasification', :foreign_key=>'home_clasification_id'
  belongs_to :visitor_clasification,:class_name=>'Clasification', :foreign_key=>'visitor_clasification_id'
  belongs_to :group
  # To gain perfomance
  belongs_to :home_team,   :class_name=>'Team', :foreign_key=>'home_team_id'
  belongs_to :visitor_team,:class_name=>'Team', :foreign_key=>'visitor_team_id'

  # == Validations
  validates_presence_of :home_clasification, :visitor_clasification

  # == State Machine Conf
  aasm_column :state
  aasm_initial_state :uninitiated

  aasm_state :uninitiated
  aasm_state :playing
  aasm_state :completed
  aasm_state :suspended

  aasm_event :play do
    transitions :to => :playing, :from => [:uninitiated]
  end
  aasm_event :complete do
    transitions :to => :completed, :from => [:playing]
  end
  aasm_event :suspend do
    transitions :to => :suspended, :from => [:playing, :uninitiated]
  end
  aasm_event :continue do
    transitions :to => :playing, :from => [:suspended]
  end


  # == Instance Methods

  def home_to_s
    (home_team && home_team.name) || (home_clasification && home_clasification.position_key)
  end

  def visitor_to_s
    (visitor_team && visitor_team.name) || (visitor_clasification && visitor_clasification.position_key)
  end

  def home_goals_bet_from(user)
    user.pools.find_by_match_id(self).try(:home_goals) || "--"
  end

  def visitor_goals_bet_from(user)
    user.pools.find_by_match_id(self).try(:visitor_goals) || "--"
  end

  def editable?
    uninitiated?
  end


end
