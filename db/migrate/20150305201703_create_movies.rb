class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :total_gross
      t.datetime :release_date
      t.string :mpaa_rating
      t.string :description
    end
  end
end
