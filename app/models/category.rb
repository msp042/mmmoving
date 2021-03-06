class Category < ApplicationRecord
  # Direct associations

  has_many   :boxes,
             dependent: :destroy

  # Indirect associations

  has_many   :items,
             through: :boxes,
             source: :items

  # Validations

  # Scopes

  def to_s
    category_name
  end
end
