class Account::Admin::AdminController < Account::AccountController

  def current_organization
    @current_organization = current_user.organizations.find_by(id: params[:id])
    @current_organization.nil? ? redirect_to(request.env['HTTP_REFERER']) : @current_organization
  end

  # def current_class_room
  #   @current_organization = current_user.organizations.class_rooms.find_by(id: params[:id])
  #   @current_organization.nil? ? redirect_to(account_organizations_path) : @current_organization
  # end
end
  