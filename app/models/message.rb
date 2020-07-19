class Message < ApplicationRecord
    validates :name, presence: true
    validates :comment, presence: true
    validates :email, presence: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

    # validates :email, format: { with: /^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$/,
    # message: "enter a valid email"  }


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
