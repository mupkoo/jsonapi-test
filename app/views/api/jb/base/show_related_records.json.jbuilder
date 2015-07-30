json.data do
    if @relationship.is_a? ActiveRecord::Associations::CollectionProxy
        json.array! @relationship, partial: "api/jb/#{@relationship.table_name}/item", as: :record
    else
        json.partial! "api/jb/#{@relationship.table_name}/item", record: @relationship
    end
end
