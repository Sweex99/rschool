class Account::Admin::PanelOrganizationsController < Account::Admin::AdminController
  before_action :current_organization, only: [:show, :edit]

  def show
  end     

  def edit
  end

end
    