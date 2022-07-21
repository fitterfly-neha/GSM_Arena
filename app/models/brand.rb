class Brand < ApplicationRecord
    validates :brand_name, presence: true, length: {minimum: 4, maximum: 30} 
    validates :origin_country, presence: true, length: {minimum: 4, maximum: 30}
end