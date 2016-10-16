class FoodItem < ApplicationRecord
	belongs_to :section
	validates :name, presence: true, uniqueness: true, length: {maximum: 40}
	validates :price, presence: true, numericality: true
	# validates :image_url, :format => { :with => URI::regexp(%w(http https)), :message => "Valid URL required"}

	def self.search(search)
			if search
				where("name ILIKE ?", "%#{search}%")
			else
				all
			end
	end

	def image_url_or_default
		if image_url.present?
			image_url
		else
			"http://loremflickr.com/480/320/#{name.gsub(' ', '+')}"
		end
	end 
end
