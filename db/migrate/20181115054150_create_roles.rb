class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string    :name

      t.timestamps
    end

    create_table :roles_users do |t|
      t.references      :role, index: true
      t.references      :user, index: true
      t.integer         :status
    end
  end
end
