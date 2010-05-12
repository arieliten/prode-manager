class Group < ActiveRecord::Base
  # == Relations
  has_many :teams

  # == Validations
  validates_presence_of :name
end
