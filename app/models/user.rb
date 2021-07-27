class User < ApplicationRecord
  has_many :routines, dependent: :destroy

end
