class AddCompetitionToTeams < ActiveRecord::Migration
  def self.up
    # Just to gain perfomance having the teams participating in a competition
    add_column :teams, :competition, :integer
  end

  def self.down
    remove_column :teams, :competition
  end
end
