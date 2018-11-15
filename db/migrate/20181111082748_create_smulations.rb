class CreateSmulations < ActiveRecord::Migration[5.2]
  def change
    create_table :smulations do |t|
      t.string      :name
      t.references  :user, index: true
      
      t.timestamps
    end
  end
end
