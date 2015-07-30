json.type "posts"
json.id record.id

json.links do
    json.self api_jb_post_url(record)
end

json.attributes do
    json.title record.title
    json.body record.body
    json.createdAt record.created_at
end

json.relationships do
    json.author do
        json.links do
            json.self relationships_author_api_jb_post_url(record)
            json.related author_api_jb_post_url(record)
        end
    end

    json.comments do
        json.links do
            json.self relationships_comments_api_jb_post_url(record)
            json.related comments_api_jb_post_url(record)
        end
    end
end
