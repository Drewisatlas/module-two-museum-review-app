class AddDropdownToUserTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :user_types, :dropdown, :string
  end
end
