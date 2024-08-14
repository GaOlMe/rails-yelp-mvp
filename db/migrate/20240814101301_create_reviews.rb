class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, presence: true, inclusion: {in: (0..5)}
      t.text :content, presence: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
