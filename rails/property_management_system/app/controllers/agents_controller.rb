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

    @city = params[:city]
    @dob = params[:dob]
    @name = params[:name]
    @agent = Agent.where(city: @city)
    @like = Agent.where("name ilike ?", "#{@name}%")
    @date = Agent.where("dob > ?", "#{@dob}")
    @age = params[:age].to_i
    @age_filter = []

    @agents.each do |a|
      age = ((Time.now - a.dob.to_time) / (60 * 60 * 24 * 365.25))
      if @age != nil
        if age > @age
          @age_filter << a
        else
        end
      else
      end
    end
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
    params.require(:agent).permit(:name, :email, :contact, :gender, :dob, :city, interests: [])
  end

  def view
    @city = params[:city]
    @dob = params[:dob]
    @agent = Agent.where(city: @city)
  end
end
