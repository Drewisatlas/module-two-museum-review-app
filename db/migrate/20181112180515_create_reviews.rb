class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :museum_id
      t.integer :user_id
      t.string :title
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
