class ApplicationsController < InheritedResources::Base
  belongs_to :user

  actions :index, :show, :new, :edit, :create, :update, :destroy
  respond_to :html, :js, :xml, :json

protected
  
  def collection
    @search = end_of_association_chain.search(params[:search])
    @applications  = @search.paginate(:page => params[:page])
  end
end