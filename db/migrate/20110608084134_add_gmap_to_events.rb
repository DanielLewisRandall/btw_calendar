class AddGmapToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :gmap, :text
  end

  def self.down
    remove_column :events, :gmap
  end
end
