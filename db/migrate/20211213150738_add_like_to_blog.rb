class AddLikeToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :likes, :integer, :default => 0
  end
end
