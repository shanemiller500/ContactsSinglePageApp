class ContactsController < ApplicationController

  def main
    @contacts = Contact.all

    respond_to do |f|
      f.html
      f.json { render :json => @contacts.as_json(:only => [:id, :name, :email, :img]) }
     
    end
  end

  def create
    contact = params.require(:contact).permit(:name, :email, :number, :img)
    con = Contact.create(contact)
    redirect root_path
  end
  

end
