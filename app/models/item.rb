class Item < ApplicationRecord
  # Direct associations

  belongs_to :box

  # Indirect associations

  has_one    :category,
             through: :box,
             source: :category

  # Validations

  # Scopes

  def to_s
    item_name
  end
end
