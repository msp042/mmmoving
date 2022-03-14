class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :item_name, :string
  attribute :box_id, :integer

  # Direct associations

  belongs_to :box

  # Indirect associations

end
