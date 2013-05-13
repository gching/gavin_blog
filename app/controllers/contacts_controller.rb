class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # TODO send message here
      redirect_to root_url, notice: "Message sent! Thank you for contacting me :)."
    else
      render "new"
    end
  end
end