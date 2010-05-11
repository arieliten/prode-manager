class Group < ActiveRecord::Base
  # == Relations
  belongs_to :competition_stage

  # == Validations
  validates_presence_of :competition_stage, :name
  validates_uniqueness_of :name, :scope => [:competition_stage_id]
end
