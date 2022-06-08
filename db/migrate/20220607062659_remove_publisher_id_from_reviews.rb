class RemovePublisherIdFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :publisher_id
  end
end
