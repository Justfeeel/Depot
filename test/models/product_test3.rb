require 'test_helper'
class ProductTest < ActiveSupport::TestCase
fixtures :products
def new_product(image_url)
Product.new(
title:"ipodpro",description:"...",price: 75990, image_url: image_url)
end
test "image url" do
# url изображения
ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
http://a.b.c/x/y/z/fred.gif }
bad = %w{ fred.doc fred.gif/more fred.gif.more }
ok.each do |name|
assert new_product(name).valid?, "#{name} shouldn't be invalid"
# не должно быть неприемлемым
end

bad.each do |name|
assert new_product(name).invalid?, "#{name} shouldn't be valid"
# не должно быть приемлемым
end
end
