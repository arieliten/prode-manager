class CompetitionTeam < ActiveRecord::Base
  # == Relations
  belongs_to :competition
  belongs_to :team

  # == Validations
  validates_presence_of :competition, :team
end
