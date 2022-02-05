class AgentsController < ApplicationController
  def info
    @agent = params[:id]
  end
end
