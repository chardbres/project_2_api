class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :variety, :region, :age, :primary_taste, :price, :editable

  def editable
    scope == object.user
  end
end
