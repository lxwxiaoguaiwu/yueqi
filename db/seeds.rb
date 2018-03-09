# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


developer = Admin.find_by(email:"developer@cc.com")
if developer.blank?
  developer = Admin.create(email:"developer@cc.com",password:"cc2017")
  developer.save
end
developer.add_role :admin

["新闻", "通知","视频","培训"].each do |cname|
  c = RailsAdminContentBuilder::ContentBuilderCategory.find_by(name:cname)
  if c.blank?
    c = RailsAdminContentBuilder::ContentBuilderCategory.create(name:cname)
    c.save
  end
end
