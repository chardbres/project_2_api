# frozen_string_literal: true

class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :variety, :region, :age, :taste, :price, :editable

  def editable
    scope == object.user
  end
end
