class AddPublisherIdToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :publisher_id, :integer
  end
end
