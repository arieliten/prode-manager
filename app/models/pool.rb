class Pool < ActiveRecord::Base

  # == Relations
  belongs_to :user
  belongs_to :competition
  belongs_to :stage
  belongs_to :match
  belongs_to :home_team,   :class_name=>'Team', :foreign_key=>'home_team_id'
  belongs_to :visitor_team,:class_name=>'Team', :foreign_key=>'visitor_team_id'

  # == Validations
  validates_presence_of :user, :match


  # == Named Scope
  #named_scope :for_competition, lambda { |competition| {:conditions=>["competition_id = ?", competition]} }
  #named_scope :for_stage, lambda { |stage| {:conditions=>["stage_id = ?", stage] } }

end
