class AddColumnNameToEdit < ActiveRecord::Migration
  def change
    add_column :edits, :column_name, :string
  end
end
