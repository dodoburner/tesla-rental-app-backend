class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :type, :engine_type
  end
end
