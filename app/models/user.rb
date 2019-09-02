class User < ApplicationRecord
    has_many :tweets
    validates :screen_name, uniqueness: true, presence: true, length: {maximum: 20}
    validates :name, presence: true
end

#I need to figure out a way to limit the amount users with the same screen name

