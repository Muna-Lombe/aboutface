class Routine < ApplicationRecord
  belongs_to :user
  has_many :routine_products, dependent: :destroy
  has_many :products, through: :routine_products
end
