json.data do
    json.array! @records, partial: 'api/jb/authors/item', as: :record
end
