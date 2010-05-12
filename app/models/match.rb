class Match < ActiveRecord::Base
  include AASM

  # == Relations
  belongs_to :home_team,   :class_name=>'Team'
  belongs_to :visitor_team,:class_name=>'Team'

  # == Validations
  validates_presence_of :home_team, :visitor_team

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

end
