class ChangeTypeToMuseumTypeForMuseums < ActiveRecord::Migration[5.2]
  def change
    rename_column :museums, :type, :museum_type
  end
end
