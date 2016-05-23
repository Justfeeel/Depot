require 'test_helper'
class ProductTest < ActiveSupport::TestCase
fixtures :products
test "product price must be positive" do
# цена товара должна быть положительной
product = Product.new(title:"Ipodpro",description: "...",image_url:"ipodpro.jpg")
product.price = -1
assert product.invalid?
assert_equal ["must be greater than or equal to 0.01"],
product.errors[:price]
# должна быть больше или равна 0.01
product.price = 0
assert product.invalid?
assert_equal ["must be greater than or equal to 0.01"],
product.errors[:price]
product.price = 1
assert product.valid?
end
