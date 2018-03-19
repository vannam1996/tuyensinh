class StyleMajor < ApplicationRecord
  has_many :majors, dependent: :destroy

  scope :newest, ->{order created_at: :desc}
end