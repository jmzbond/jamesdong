# -*- encoding : utf-8 -*-
class ContactsController < ApplicationController

	def new
		@miscpage = true
		@contact = Contact.new
	end

	def create
		@miscpage = true
		@contact= Contact.new(secure_params)
		if @contact.save
	      UserMailer.contact_email(@contact).deliver #exact same code from both Kehoe and mine 
	      flash[:success] = "Thanks! I'll be in touch soon!"
	      redirect_to :action => 'new'
	    else
	      render 'new'
	    end
	end


private

    def secure_params
      params.require(:contact).permit(:name, :email, :comment)
    end

end
