module Spree
  module Admin
    class LogEntriesController < ResourceController


    private
      def collection
        return @collection if @collection

        scope = LogEntry.all

        scope = scope.where(:source_type => params[:source_type]) if params[:source_type]
        scope = scope.where(:source_id   => params[:source_id])   if params[:source_id]

        @collection = scope.page(params[:page])
      end
    end
  end
end
