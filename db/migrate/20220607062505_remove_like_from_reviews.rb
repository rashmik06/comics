class RemoveLikeFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :like, :integer
  end
end
