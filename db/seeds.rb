# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "create users"
user_file = "#{Rails.root}/public/user.json"
users_data = JSON.load File.read(user_file)
users_data.find_all(&:symbolize_keys!).each do |u|
  new_user = User.new(u)
  p new_user.nick if new_user.save
end
p "create articles"
article_file = "#{Rails.root}/public/article.json"
articles_data = JSON.load File.read(article_file)
articles_data.find_all(&:symbolize_keys!).each do |article|
  new_article = Article.new(article)
  p new_article.title if new_article.save
end
