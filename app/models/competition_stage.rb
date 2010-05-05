class CompetitionStage < ActiveRecord::Base
  # == Acts as List
  #acts_as_list :scope=>:competition_id

  # == Relations
  belongs_to :competition
  has_many :matches

  # == Validations
  validates_presence_of :competition, :name

end
