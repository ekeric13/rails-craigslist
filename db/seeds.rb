# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "faker"

5.times do
  category = Category.create(:category_name => Faker::Company.bs)
  10.times do
    article=Article.create(:title => Faker::Commerce.product_name ,
                  :price => Faker::Commerce.price,
                  :email => Faker::Internet.email,
                  :description => Faker::Lorem.sentence
                  )
    article.category = category
    article.save
  end

end
