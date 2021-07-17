class RemoveMountainNameFromTweets < ActiveRecord::Migration[6.0]
  def change
    remove_column :tweets, :mountain_name, :string
  end
end
