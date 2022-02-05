class AppointmentsController < ApplicationController
  def index
    @appointments_a = Appointment.all.uniq { |a| a.agent_id }
    @types = Type.all
  end
end
