class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :region, :age, :taste, :price
  has_one :user
end
