class WelcomeMailer < ApplicationMailer
  def notify(person)
    @person = person

    mail to: person.email , subject: 'This is a notification'
  end
end
