class ContactMailer < ActionMailer::Base
  default from: 'antoniomfarias@amfarias.adv.br'
  
  def welcome_email(contact)
    @contact = contact
    @url = 'http://www.amfarias.adv.br'
    mail(to:@contact.email, subject:'Confirmacao de Contato')
  end
  
  def contact_message(contact)
    @contact = contact
    mail(to: 'amfiam@uol.com.br', subject:'Contato de Cliente')
  end
end

