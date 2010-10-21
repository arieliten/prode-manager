class AddStageIdToPools < ActiveRecord::Migration
  def self.up
    add_column :pools, :stage_id, :integer
  end

  def self.down
    remove_column :pools, :stage_id
  end
end
