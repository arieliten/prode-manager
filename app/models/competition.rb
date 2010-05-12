class Competition < ActiveRecord::Base
  # == Relations
  has_many :teams
  has_many :stages
  has_many :matches, :through=>:stages, :source=>:matches

  # == Validations
  validates_presence_of :name, :max_number_of_participants

end
