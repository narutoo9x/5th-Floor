class FoodItem < ApplicationRecord
	belongs_to :section
	validates :name, presence: true, uniqueness: true, length: {maximum: 40}
	validates :price, presence: true, numericality: true
	validates :image_url, :format => { :with => URI::regexp(%w(http https)), :message => "Valid URL required"}
end
