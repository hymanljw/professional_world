class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|

      t.text :title ,limit: 4294967295
      t.text :desp ,limit: 4294967295
      t.integer :user_id
      t.integer :like_count
      t.string :type
      t.integer :usable


      t.timestamps
    end
  end
end
