class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :total_gross, :release_date, :mpaa_rating, :description, :reviews
end
