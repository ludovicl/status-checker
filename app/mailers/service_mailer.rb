class ServiceMailer < ApplicationMailer
  def service_down(service)
    send_email_to = ['dev@mycompany.com', 'ops@mycompany.com', 'product-owner@mycompany.com']
    @url = service.url
    @name = service.name
    mail(to: send_email_to, subject: "#{service.name} has some issues")
  end
end
