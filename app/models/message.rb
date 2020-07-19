class Message < ApplicationRecord
    validates :name, presence: true
    validates :comment, presence: true
    validates :email, format: { with: /^(.+)@(.+)$/ },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }  

    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    # def headers
    #     {
    #     :subject => "Contact from GOTRO.com",
    #     :to => "joshuagauthreaux@gmail.com",
    #     :from => %("#{name}" <#{email}>)
    #     }
    # end
end
