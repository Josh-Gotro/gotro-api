class Message < ApplicationRecord
    validates :name, presence: true
    validates :comment, presence: true
    validates :email, presence: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/


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
