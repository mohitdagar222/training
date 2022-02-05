class ClientsController < ApplicationController
  def details
    @agent = Appointment.find(params[:id]).agent
    @a_id = params[:id]
  end

  def info
    @client = params[:id]
    @aid = params[:aid]
  end
end
