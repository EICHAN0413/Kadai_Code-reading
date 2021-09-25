class AssignMailer < ApplicationMailer
  default from: 'chanike1993@yahoo.co.jp'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def agenda_destroy_mail(agenda)
    emails = agenda.team.all_member_emails
    @agenda = agenda
    mail to: emails, subject: "アジェンダ削除のお知らせ"
  end
end