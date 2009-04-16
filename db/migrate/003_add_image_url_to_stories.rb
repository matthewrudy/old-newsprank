class AddImageUrlToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :external_image_url, :string
  end

  def self.down
    remove_column :stories, :external_image_url
  end
end
