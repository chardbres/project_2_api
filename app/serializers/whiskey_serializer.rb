class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :variety, :distiller, :region, :age, :primary_taste, :price, :tasting_date, :description
end
