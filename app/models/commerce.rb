class Commerce < ApplicationRecord
  extend FriendlyId
  friendly_id :commerce_name, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :commerce_name, :address, :phone_number, :register_commerce, :logo, presence: true
  has_many :products
  has_many :reviews

  	has_attached_file :logo, styles: { large: "600x600>" }, 
		:path => ":rails_root/public/system/:logo/:id/:style/:filename",
    	:url => "/system/:logo/:id/:style/:filename"
  	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  	has_attached_file :image, styles: { large: "600x600>" }, 
		:path => ":rails_root/public/system/:image/:id/:style/:filename",
    	:url => "/system/:image/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    geocoded_by :address
    after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }  
end
