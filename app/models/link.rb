class Link < ApplicationRecord
  validates :url, presence: true

  scope :ordered, -> { order(created_at: :desc) }
end
