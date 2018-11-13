class AddUserTypeIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :user_type_id, :integer
  end
end
