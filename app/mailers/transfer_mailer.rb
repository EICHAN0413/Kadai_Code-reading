class TransferMailer < ApplicationMailer
    default from: 'chanike1993@yahoo.co.jp'

    def  reader_mail(email)
        @email = email
        mail to: @email, subject: "リーダになりました"
    end
end