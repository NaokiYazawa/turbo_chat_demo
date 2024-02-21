class Room < ApplicationRecord
  with_options presence: true do
    validates :title
  end
  has_many :messages
  has_many :entries
end
