json.data do
    if @relationship.is_a? ActiveRecord::Associations::CollectionProxy
        json.array! @relationship do |record|
            json.type record.class.table_name
            json.id record.id
        end
    else
        json.type record.class.table_name
        json.id record.id
    end
end
