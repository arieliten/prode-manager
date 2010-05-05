class Player < ActiveRecord::Base
  # == Relations
  belongs_to :team

  # == Validations
  validates_presence_of :first_name, :last_name


  # == Instance Methods

  def full_name
    "#{last_name.titleize}, #{first_name.titleize}"
  end

end
