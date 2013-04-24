namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Post.create!(title: "Today is a big do",
                 content: "wowwowow")
    99.times do |n|
      title = Faker::Name.name
      content = Faker::Lorem.sentence(5)
      Post.create!(title: title,
                    content: content)
    end
  end
end