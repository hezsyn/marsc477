class CreateSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :simulations do |t|
    	t.string 				:name
    	t.belongs_to 	  :user, index: true
      t.integer       :x_position
      t.integer       :y_position
      t.integer       :z_position
      t.integer       :success

      t.timestamps
    end
  end
end
