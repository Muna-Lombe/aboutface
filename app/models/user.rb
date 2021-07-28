class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :routines, dependent: :destroy
  has_many :authentication_tokens
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable, :token_authenticatable
end
