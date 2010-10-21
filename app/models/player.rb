class Player < ActiveRecord::Base
  has_permalink [:last_name, :first_name], :update=>true

  # == Relations
  belongs_to :team

  # == Validations
  validates_presence_of :first_name, :last_name


  # == Instance Methods

  def to_param
    self.permalink
  end

  def full_name
    "#{last_name.titleize}, #{first_name.titleize}"
  end

end
