class Post < ApplicationRecord
  validates :title, :url, :sub, :user, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy

  has_many :subs,
  through: :postsubs,
  source: :sub

  has_many :postsubs,
  primary_key: :id,
  foreign_key: :post_id,
  class_name: :PostSub
end
