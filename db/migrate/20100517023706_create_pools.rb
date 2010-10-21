class CreatePools < ActiveRecord::Migration
  def self.up
    create_table :pools do |t|
      t.references :user
      t.references :competition
      t.references :match
      t.references :home_team
      t.references :visitor_team
      t.integer :home_goals
      t.integer :visitor_goals
      t.integer :score
      t.timestamps
    end
  end
  
  def self.down
    drop_table :pools
  end
end
