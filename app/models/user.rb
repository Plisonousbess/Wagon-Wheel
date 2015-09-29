class User < ActiveRecord::Base
  has_many :equipment, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :location, presence: true
end
