# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base

	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	# validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: /(gif|jpg|png)/,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}

  def self.populate_raw
    1000.times do
      Product.create(title: "prini", description: "testing", image_url: "google.png", price: 450)
    end
  end
end
