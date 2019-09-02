class User < ApplicationRecord
    has_many :tweets
    validates :screen_name, uniqueness: true, presence: true, length: {maximum: 20}
    validates :name, presence: true
end



