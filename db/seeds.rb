Product.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create!(title: 'Iphone 5S',
description:
%{<p>
iPhone 5s — смартфон корпорации Apple, представляет седьмое поколение iPhone и является преемником iPhone 5. Работает на операционной системе iOS 9.3 (64-битная версия), содержит процессор Apple A7 (ARMv8), со-процессор Apple M7 и сканер отпечатков пальцев (Touch ID), встроенный в кнопку Home чуть ниже экрана. Выполнен в трёх цветовых решениях (космически-серый, серебристый и золотистый), в отличие от iPhone 5 (чёрный и белый) и iPhone 5c (пять цветных вариантов, но поликарбонатный корпус).
</p>},
image_url: 'Iphone5s.jpg',
price: 240)
# . . .
