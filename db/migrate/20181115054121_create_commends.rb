class CreateCommends < ActiveRecord::Migration[5.2]
  def change
    create_table :commends do |t|
      t.string      :input
      t.integer     :value

      t.timestamps
    end
  end
end
