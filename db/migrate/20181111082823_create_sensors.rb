class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.string      :part
      t.text        :description
      t.string      :min_value
      t.string      :max_value
      t.string      :unit

      t.timestamps
    end

    create_table :sensors_simulations do |t|
      t.references  :sensor, index: true
      t.references  :simulation, index: true
      t.string      :value
    end
  end
end
