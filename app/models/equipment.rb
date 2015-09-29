class Equipment < ActiveRecord::Base
  belongs_to :user

  validates :typ, presence: true
  validates :make, presence: true
  validates :info, presence: true
end
