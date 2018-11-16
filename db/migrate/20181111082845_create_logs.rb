class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.text          :message
      t.string      :values
      t.string      :category
      t.string      :subcategory
      t.belongs_to 	:simulation, index: true
      
      t.timestamps
    end
  end
end
