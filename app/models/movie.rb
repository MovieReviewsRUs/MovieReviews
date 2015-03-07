class Movie < ActiveRecord::Base
  has_many :reviews

  #RATINGS = %w{G PG PG-13 R NC-17}
  validates :title, presence: true, uniqueness: true
  #validates :mpaa_rating, inclusion: {in: RATINGS}
end
