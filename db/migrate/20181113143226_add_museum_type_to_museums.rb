class AddMuseumTypeToMuseums < ActiveRecord::Migration[5.2]
  def change
    add_column :museums, :museum_type_id, :integer
  end
end
