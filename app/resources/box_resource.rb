class BoxResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :box_name, :string
  attribute :category_id, :integer

  # Direct associations

  belongs_to :category

  has_many   :items

  # Indirect associations
end
