class CreateJoinTableMuseumUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :museums, :users do |t|
      t.index [:museum_id, :user_id]
      t.index [:user_id, :museum_id]
      t.string :title
      t.integer :rating
      t.text :review
    end
  end
end
