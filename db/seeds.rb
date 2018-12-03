# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Tech #{topic + 1}"
  )
end

puts "generating blog posts.."
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog + 1}",
    body: "Bacon ipsum dolor amet fatback short ribs ribeye
           landjaeger burgdoggen cupim biltong turducken ground
           round flank. Picanha pork hamburger corned beef ham.
           Chicken tri-tip corned beef pork loin doner picanha
           cupim pork belly kevin. Burgdoggen filet mignon
           alcatra ribeye pastrami, beef ribs bacon biltong buffalo
           turkey doner ball tip.",
    topic: Topic.first
  )
end
puts "generated blog posts"

puts "generating skills..."
5.times do |skill|
  Skill.create!(
    title: "Rails #{skill + 1}",
    percent_utilized: 15
  )
end
puts "completed generating skills"

puts "generating projects..."
9.times do |project|
  Project.create!(
    title: "Project #{project + 1}",
    subtitle: "My great service.",
    body: "Awesome",
    main_image: "http://placehold.it/600x450",
    thumb_image: "http://placehold.it/400x300",
    position: project + 1
  )
end
puts "completed generating projects"
