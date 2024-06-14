class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :full_name, presence: true

  #has_one_attached :photo


  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :registerable

end
