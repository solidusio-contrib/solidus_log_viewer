class Admin::LogEntriesController < Admin::BaseController
  resource_controller

private
  def collection
    return @collection if @collection

    scope = LogEntry.scoped

    scope = scope.where(:source_type => params[:source_type]) if params[:source_type]
    scope = scope.where(:source_id   => params[:source_id])   if params[:source_id]

    @collection = scope.page(params[:page])
  end
end
