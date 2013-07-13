# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Site.create! name:"GA London"
Site.create! name:"GA New York"
Site.create! name:"GA Sydney"

CourseCategory.create! name:"Day Class"
CourseCategory.create! name:"Evening Class"
CourseCategory.create! name:"Multi-day Consecutive"
CourseCategory.create! name:"Multi-day Periodic"
CourseCategory.create! name:"Multi-evening Consecutive"
CourseCategory.create! name:"Multi-evening Periodic"
