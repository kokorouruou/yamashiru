class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :title,                   null:false
      t.integer :theme_id,               null:false
      t.integer :prefecture_id,          null:false
      t.string :mountain_name
      t.integer :climbing_time_id
      t.integer :mountain_view_id
      t.integer :stamina_id
      t.integer :danger_id
      t.references :user,                foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
