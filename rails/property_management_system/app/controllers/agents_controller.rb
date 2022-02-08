class AgentsController < ApplicationController
  def show
    @agent = Agent.find(params[:id])
    if @agent.dob == nil
      @dob = nil
    else
      @dob = @agent.dob.strftime("%d-%m-%Y")
    end
  end

  def index
    @agents = Agent.all
  end

  def form
  end

  def create
    interests = [params[:type1], params[:type2], params[:type3], params[:type4]]
    interest2 = []
    interests.each { |interest|
      if interest == nil
        next
      else
        interest2 << interest
      end
    }

    @agent = Agent.new(name: params[:name], email: params[:email], contact: params[:contact], gender: params[:gender], dob: params[:dob], city: params[:city], interests: interest2)
    @agent.save

    id = Agent.last.id
    redirect_to "/agent/#{id}"
  end
end
