json.data do
    json.array! @records, partial: 'api/jb/posts/item', as: :record
end
