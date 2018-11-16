class CreateEngines < ActiveRecord::Migration[5.2]
  def change
    create_table :engines do |t|
      t.string      :part
      t.string      :min_value
      t.string      :max_value

      t.timestamps
    end

    create_table :engines_simulations do |t|
      t.belongs_to    :engine, index: true
      t.belongs_to   :simulation, index: true
      t.timestamps
    end
  end
end
