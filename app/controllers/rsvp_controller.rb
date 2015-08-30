class RsvpController < ApplicationController
  def rsvp

    Guest.create! guest_params
    
    # body = "#{params[:name]}"
    Pony.mail({
      :to => 'namitjain111@gmail.com, anubhutijain111@gmail.com',
      :from => params[:email],
      :body => params,
      :subject => 'Wedding RSVP'
    })


  end

  def guest_params
    params.permit([:name, :email, :mehendi, :wedding, :reception, :guest, :accomodation])
  end

  def index
  end
end