module Api::Jr
    class BaseResource < JSONAPI::Resource

        abstract

        def self.verify_key(key, options = {})
            key && String(key)
        end

    end
end
