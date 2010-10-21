class AddPermalinks < ActiveRecord::Migration
  def self.up
    add_column :competitions, :permalink, :string
    add_column :teams, :permalink, :string
    add_column :players, :permalink, :string
    add_column :stages, :permalink, :string
    add_column :clasifications, :permalink, :string
    add_column :groups, :permalink, :string
  end

  def self.down
    remove_column :competitions, :permalink
    remove_column :teams, :permalink
    remove_column :players, :permalink
    remove_column :stages, :permalink
    remove_column :clasifications, :permalink
    remove_column :groups, :permalink
  end
end
