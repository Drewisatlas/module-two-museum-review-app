class CreateMuseumTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :museum_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
