class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.references :competition_stage
      t.datetime :starts_at
      t.references :home_team
      t.references :visitor_team
      t.integer :home_goals
      t.integer :visitor_goals
      t.string :state, :default=>'uninitiated'

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
