class CkeditorToGollumWikis < ActiveRecord::Migration
  def self.up
    add_column :gollum_wikis, :want_ckeditor, :boolean, :default => 0
    add_column :gollum_wikis, :want_wiki_backend, :boolean, :default => 0
    add_column :gollum_wikis, :images_directory, :string, :default => 'img'
  end

  def self.down
    remove_column :gollum_wikis, :want_ckeditor
    remove_column :gollum_wikis, :want_wiki_backend
    remove_column :gollum_wikis, :images_directory
  end
end
