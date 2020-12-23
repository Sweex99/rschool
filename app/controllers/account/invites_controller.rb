class Account::InvitesController < Account::AccountController
  def create
    emails = params[:email]
    emails.each do |e|
      
    end  
  end

  protected
end
