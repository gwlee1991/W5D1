class Post < ApplicationRecord
  validates :title, :url, :subs, :user, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy

  has_many :post_subs,
  inverse_of: :post

  has_many :subs,
  through: :post_subs,
  source: :sub

end
