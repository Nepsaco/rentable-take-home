class Property < ApplicationRecord
  has_many :units, dependent: :destroy

  scope :search_address, ->(address) { where("address like ?", "%#{address}%") }
  scope :search_city, ->(city) { where("city like ?", "%#{city}%") }
  scope :search_state, ->(state) { where("state like ?", "%#{state}%") }
end
