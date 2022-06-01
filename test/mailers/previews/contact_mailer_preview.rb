# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/notify
  def notify
    ContactMailer.notify Contact.new(name: 'Pepe', email: 'sample@mail.cl', rut: '2-7', message: 'Aloha')
  end

end
