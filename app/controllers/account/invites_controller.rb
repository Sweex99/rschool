class Account::InvitesController < Account::AccountController
  def create
    binding.pry
    emails = params[:email]
    emails.each do |e|
      
    end  
  end

  protected
end
