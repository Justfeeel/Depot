require 'test_helper'
class ProductTest < ActiveSupport::TestCase
test "product is not valid without a unique title" do
# если у товара нет уникального названия, то он недопустим
product = Product.new(title: products(:ipodpro).title,
description:"...",
price: 1,
image_url: "ipodpro.jpg")
assert product.invalid?
assert_equal ["has already been taken"], product.errors[:title]
# уже было использовано
end
