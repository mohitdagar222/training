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

  def new
    @agent = Agent.new
    # debugger
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      redirect_to "/agent/#{@agent.id}"
    else
      render "new", status: :unprocessable_entity
    end
  end

  def delete
    agent = Agent.find(params[:id])
    agent.destroy
    redirect_to "/"
  end

  def edit
    @agent = Agent.find(params[:id])
  end

  def update
    @agent = Agent.update(agent_params)
    redirect_to "/agent/#{params[:id]}"
  end

  def agent_params
    params[:agent][:interests] ||= []
    params.require(:agent).permit(:id, :name, :email, :contact, :gender, :dob, :city, interests: [])
  end
end
