class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.boolean :like
      t.integer :rating
      t.text :desc
      t.integer :brew_id
      t.integer :batch_id
      t.integer :user_id

      t.timestamps

    end
  end
end
