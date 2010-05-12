class CreateClasifications < ActiveRecord::Migration
  def self.up
    create_table :clasifications do |t|
      t.references :team
      t.references :stage
      t.references :group
      t.string :name
      t.string :position_key

      t.timestamps
    end
  end

  def self.down
    drop_table :clasifications
  end
end
