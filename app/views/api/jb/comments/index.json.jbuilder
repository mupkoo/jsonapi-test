json.data do
    json.array! @records, partial: 'api/jb/comments/item', as: :record
end
