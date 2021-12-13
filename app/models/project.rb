class Project < ApplicationRecord
  belongs_to :user

  scope :search, -> (keyword) { where("name like ?", "%#{keyword}%")}

  validates :name, uniqueness: { scope: :user }
end
