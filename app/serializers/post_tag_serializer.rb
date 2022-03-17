class PostTagSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :tag_id

  belongs_to :post
  belongs_to :tag
end
