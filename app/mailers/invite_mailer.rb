class InviteMailer < ApplicationMailer

  def invite_mail(email)
    mail(to: email, subject: 'Invite Mail')
    ExampleMailer.sample_email(User.first)
  end
end
