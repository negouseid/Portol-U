class CreateAddFieldsToUsers < ActiveRecord::Migration
  def change
    create_table :add_fields_to_users do |t|
      t.string :grade
      t.integer :user_id

      t.timestamps
    end
  end
end
