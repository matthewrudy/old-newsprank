class AddPermalinkToStory < ActiveRecord::Migration
  def self.up
    add_column :stories, :permalink, :string
    add_index  :stories, :permalink, :unique => true
  end

  def self.down
    remove_column :stories, :permalink
  end
end
