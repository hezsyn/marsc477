class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.text        :message
      t.string      :values
      t.string      :category
      t.string      :subcategory
      
      t.timestamps
    end
  end
end
