class TestMailer < ActionMailer::Base
  default from: "from@example.com"

  def text_only
    mail to: "first.example@gmail.com",
         cc: "someone@else.com",
         subject: "Example of text only email"
  end

  def multipart
    mail to: "bob@mail.com",
         from: "htmail@example.com",
         subject: "Example of multipart email"
  end

  def text_with_attachment
    mail to: "another@example.net",
         subject: "There is one attachment"
    attachments['keep_calm.png'] = File.read('public/keep_calm.png')
  end

  def multipart_with_attachments
    mail to: "self@email.me",
         bcc: "me@self.in",
         subject: "[NOT SPAM] A very heavy email!"
    attachments['Gemfile']    = File.read('Gemfile')
    attachments['stolen.png'] = File.read('public/keep_calm.png')
    attachments['404.html']   = File.read('public/404.html')
  end
end
