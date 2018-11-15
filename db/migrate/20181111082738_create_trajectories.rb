class CreateTrajectories < ActiveRecord::Migration[5.2]
  def change
    create_table :trajectories do |t|
      t.references    :simulation, index: true
      t.integer       :x_position
      t.integer       :y_position
      t.integer       :z_position
      
      t.timestamps
    end
  end
end
