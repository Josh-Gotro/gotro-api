class Message < ApplicationRecord
    attribute :name,    :validate => true
    attribute :email,   :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :message, :validate => true

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
