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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	test "product attributes must not be empty" do
product = Product.new
assert product.invalid?
assert product.errors[:title].any?
assert product.errors[:description].any?
assert product.errors[:price].any?
assert product.errors[:image_url].any?
end
  # test "the truth" do
  #   assert true
  # end
end
