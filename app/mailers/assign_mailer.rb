class AssignMailer < ApplicationMailer
  default from: 'chanike1993@yahoo.co.jp'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
end