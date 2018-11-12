class CreateMuseums < ActiveRecord::Migration[5.2]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :city
      t.string :street_address
      t.string :state
      t.string :zip_code
      t.string :type

      t.timestamps
    end
  end
end
