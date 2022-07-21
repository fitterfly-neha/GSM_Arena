class Device < ApplicationRecord
    validates :brand_name, presence: true, length: {minimum: 4,maximum: 30}
    validates :device_name, presence: true, length: {minimum: 1,maximum: 30}
    validates :screen_size, presence: true, length: {minimum: 3,maximum: 10}
    validates :camera, presence: true, length: {minimum: 1,maximum: 10}
    validates :battery, presence: true, length: {minimum: 3,maximum: 10}
    validates :brand_id, presence: true, length: {minimum: 1,maximum: 5}
end
