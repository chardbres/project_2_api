class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :variety, :region, :age, :primary_taste, :price
end
