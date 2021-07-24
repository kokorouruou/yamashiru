class CreateBaggages < ActiveRecord::Migration[6.0]
  def change
    create_table :baggages do |t|

      t.timestamps
    end
  end
end
