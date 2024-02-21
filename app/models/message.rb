class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  with_options presence: true do
    validates :content
  end
  # broadcasts_to :room
  # 送信したユーザの部屋で二重送信されることがある
  after_create_commit { broadcast_append_to self.room }
end
