class PropertiesController < ApplicationController
  def types
    @type = params[:id]
  end

  def info
    @property = params[:id]
  end
end
