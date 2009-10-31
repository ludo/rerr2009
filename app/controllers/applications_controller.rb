class ApplicationsController < InheritedResources::Base
  belongs_to :user
  
  actions :index, :show, :new, :edit, :create, :update, :destroy
  respond_to :html, :js, :xml, :json

  before_filter :require_user, :except => [:deps]

  def deps
    @user = User.find_by_login(params[:login])
    @application = @user.applications.find_by_name(params[:name])
    @application.update_dependencies(params[:dependencies])
    
    render :text => {"ok" => true}.to_json
  end

protected
  
  def collection
    @search = end_of_association_chain.search(params[:search])
    @applications  = @search.paginate(:page => params[:page])
  end
end