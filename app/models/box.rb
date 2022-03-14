class Box < ApplicationRecord
  # Direct associations

  belongs_to :category

  has_many   :items,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    box_name
  end
end
