class Account::OrganizationsController < Account::AccountController
  
  def index
    @organizations = current_user.organizations
  end 

  def show
    @organization = Organization.find_by(id: params[:id]) 
  end

  def new
    @organization= Organization.new
  end

  def create
    @organization = Organization.new(organization_params)

    if current_user.organizations << @organization
      redirect_to [ :account, @organization ] 
    else
      render :new
    end
  end

  protected

  def organization_params
    params.require(:organization).permit(:title, :description)
  end
end
