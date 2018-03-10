class Commerce < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :commerce_name, :address, :phone_number, :latitude, :longitude, :register_commerce, presence: true
  has_many :products
end
