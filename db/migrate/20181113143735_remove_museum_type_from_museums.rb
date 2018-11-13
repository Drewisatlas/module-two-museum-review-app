class RemoveMuseumTypeFromMuseums < ActiveRecord::Migration[5.2]
  def change
    remove_column :museums, :museum_type
  end
end
