class AddMountainnameToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :mountain_name_id, :integer
  end
end
