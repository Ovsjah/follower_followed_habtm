class User < ApplicationRecord
  has_and_belongs_to_many :following,
    foreign_key: :follower_id,
    association_foreign_key: :followed_id,
    join_table: :relationships,
    class_name: 'User'
  has_and_belongs_to_many :followers,
    foreign_key: :followed_id,
    association_foreign_key: :follower_id,
    join_table: :relationships,
    class_name: 'User'

  before_destroy do
    following.clear
    followers.clear
  end
end
