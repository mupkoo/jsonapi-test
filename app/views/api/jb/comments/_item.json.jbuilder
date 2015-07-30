json.type "comments"
json.id record.id

json.links do
    json.self api_jb_comment_url(record)
end

json.attributes do
    json.body record.body
    json.createdAt record.created_at
end

json.relationships do
    json.post do
        json.links do
            json.self relationships_post_api_jb_comment_url(record)
            json.related post_api_jb_comment_url(record)
        end
    end
end
