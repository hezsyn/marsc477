class CreateEngineControls < ActiveRecord::Migration[5.2]
  def change
    create_table :engine_controls do |t|

      t.timestamps
    end
  end
end
