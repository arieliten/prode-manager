class Cup < Competition
  has_permalink :name, :update=>true

  # == Validations
  #validates_presence_of :single_match_on_final, :visitor_goals_counts_double

end
