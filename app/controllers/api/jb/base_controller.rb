module Api::Jb
    class BaseController < ActionController::Base
        protect_from_forgery with: :null_session

        before_action :set_record, only: [:show, :update, :destroy, :show_relationship, :show_related_records]

        def index
            @records = model_class.all
        end

        def show
        end

        def show_relationship
            @relationship = @record.send(params[:relationship])
        end

        def show_related_records
            @relationship = @record.send(params[:relationship])
        end

        protected

        # Overwrite for custom finder
        def set_record
            @record = model_class.find(params[:id])
        end

        # Overwrite for custom model class
        def model_class
            params[:controller].split('/').last.classify.constantize
        end

    end
end
