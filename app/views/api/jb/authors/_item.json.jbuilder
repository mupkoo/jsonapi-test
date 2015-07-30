json.type "authors"
json.id record.id

json.links do
    json.self api_jb_author_url(record)
end

json.attributes do
    json.name record.name
end

json.relationships do
    json.posts do
        json.links do
            json.self relationships_posts_api_jb_author_url(record)
            json.related posts_api_jb_author_url(record)
        end
    end
end
