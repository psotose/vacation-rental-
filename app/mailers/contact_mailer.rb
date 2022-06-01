class ContactMailer < ApplicationMailer
  def notify(contact)
    @contact = contact

    mail to: ENV['MAILER_DEFAULT_SENDER'], subject: 'Mensaje de contacto'
  end
end
