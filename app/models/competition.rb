class Competition < ActiveRecord::Base
  # == Relations
  has_many :competition_stages
  has_many :matches, :through=>:competition_stages, :source=>:matches
  has_many :teams

  # == Validations
  validates_presence_of :name, :max_number_of_participants

end
