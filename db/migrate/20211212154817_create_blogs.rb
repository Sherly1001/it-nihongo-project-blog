class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.text :description

      t.timestamps
    end
  end
end
