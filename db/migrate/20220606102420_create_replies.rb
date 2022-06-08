class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.text :body
      t.references :review, null: false, foreign_key: true
      t.integer :publisher_id

      t.timestamps
    end
  end
end
