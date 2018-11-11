class CreateSmulations < ActiveRecord::Migration[5.2]
  def change
    create_table :smulations do |t|

      t.timestamps
    end
  end
end
