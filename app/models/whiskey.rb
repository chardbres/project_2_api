# frozen_string_literal: true

class Whiskey < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
