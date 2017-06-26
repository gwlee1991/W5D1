class Sub < ApplicationRecord
  validates :title, :description, :moderator, presence: true

  belongs_to :moderator,
    primary_key: :id,
    foreign_key: :moderator_id,
    class_name: :User

  has_many :posts, dependent: :destroy,
  through: :postsubs,
  source: :post 

  has_many :postsubs


end
