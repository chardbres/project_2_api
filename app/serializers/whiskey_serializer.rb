class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :region, :age, :taste, :price, :editable

  def editable
    scope == object.user
  end
end
