class MessagesController < ApplicationController

  def index
    contacts = Message.all
    render json: contacts.to_json
  end

    def create 
        contact = Message.create(contact_params)
        render json: contact
    end

    def show
        contact = Message.find_by({id: params[:id]})
        if contact
            render json: contact.to_json
        else
            render json: {message: "Your partner is in another castle"}
        end 
    end

private

    def contact_params
        params.require(:message).permit(:name, :email, :message)
    end

    
end
