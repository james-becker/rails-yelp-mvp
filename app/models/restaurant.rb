class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy


  validates :name, presence: true, allow_blank: false
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end
