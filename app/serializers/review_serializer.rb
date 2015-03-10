class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :author, :comment, :star_rating
end
