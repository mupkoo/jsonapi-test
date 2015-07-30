module Api::Jb
    class BaseController < ActionController::Base
        protect_from_forgery with: :null_session

        before_action :set_record, only: [:show, :update, :destroy, :show_relationship, :show_related_records]

        def show_relationship
            @relationship = @record.send(params[:relationship])
        end

        def show_related_records
            @relationship = @record.send(params[:relationship])
        end

    end
end
