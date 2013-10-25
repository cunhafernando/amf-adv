class ContactMailer < ActionMailer::Base
  default from: 'antoniomfarias@amfarias.adv.br'
  
  def welcome_email(contact)
    @contact = contact
    @url = 'http://www.amfarias.adv.br'
    mail(to:@contact.email, subject:'Instrucoes de Anuncio')
  end
  
  def contact_message(contact)
    @contact = contact
    mail(to: 'cunhafernandofj@gmail.com', subject:'Solicitacao de Anuncio')
  end
end

