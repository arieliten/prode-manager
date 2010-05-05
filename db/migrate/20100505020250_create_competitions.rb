class CreateCompetitions < ActiveRecord::Migration
  def self.up
    create_table :competitions do |t|
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :type
      t.integer :max_number_of_participants, :default=>0
      t.boolean :home_visitor_matches, :default=>false
      t.boolean :single_match_on_final, :default=>true
      t.boolean :visitor_goals_counts_double, :default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :competitions
  end
end
