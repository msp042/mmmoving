class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :item_name, :string
  attribute :box_id, :integer

  # Direct associations

  belongs_to :box

  # Indirect associations

  has_one    :category

  filter :category_id, :integer do
    eq do |scope, value|
      scope.eager_load(:category).where(boxes: { category_id: value })
    end
  end
end
