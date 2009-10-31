class LibrariesController < InheritedResources::Base
  before_filter :require_no_user
  actions :index, :show
  respond_to :html
  


  protected
    
    def collection
      @search = end_of_association_chain.search(params[:search])
      @libraries  = @search.paginate(:page => params[:page])
    end

        
end