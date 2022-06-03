class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        begin
          ContactMailer.notify(@contact).deliver_now
        rescue
          format.html { redirect_to root_path, notice: 'En este momento no es posible enviar tu mensaje'}
        end    
        format.html { redirect_to root_path, notice: 'Mensaje enviado exitosamente, nos pondremos en contacto contigo a la brevedad'} 
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end  
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :rut, :email, :message)
  end
end
