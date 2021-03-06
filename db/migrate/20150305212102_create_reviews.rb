class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :comment
      t.string :star_rating
      t.belongs_to :movie, index: true
    end
    add_foreign_key :reviews, :movies
  end
end
