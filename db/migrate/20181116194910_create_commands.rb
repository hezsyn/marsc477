class CreateCommands < ActiveRecord::Migration[5.2]
  def change
    create_table :commands do |t|
      t.belongs_to 	:simulation, index: true
      t.string      		:input
      t.integer     		:value

      t.timestamps
    end
  end
end
