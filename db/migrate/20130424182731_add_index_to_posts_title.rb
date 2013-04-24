class AddIndexToPostsTitle < ActiveRecord::Migration
  def change
  	add_index :posts, :title, unique: true
  end
end
