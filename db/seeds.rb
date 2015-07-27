require 'fabrication'
require 'faker'

Fabricator(:author) do
    name { Faker::Name.name }
end

Fabricator(:post) do
    author { Fabricate(:author) }
    title  { Faker::Lorem.sentence }
    body   { Faker::Lorem.paragraphs([3,5,7,9].sample).map { |p| "<p>#{p}</p>" }.join('') }
end

Fabricator(:comment) do
    post { Fabricate(:post) }
    body { Faker::Lorem.paragraph([1,2,3].sample) }
end

Fabricate.times(3, :author).each do |author|
    Fabricate.times([10,15,20].sample, :post, author: author).each do |post|
        Fabricate.times([0,1,3,4,5].sample, :comment, post: post)
    end
end
