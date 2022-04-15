class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar do |a|
    a.variant :profile, resize_to_limit: [300, 300]
  end

  validates :avatar, content_type: ['image/png', 'image/jpeg', 'imafe/gif', 'image/webp', 'image/avif']
end