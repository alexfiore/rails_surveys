class SurveysController < ApplicationController

  def index 
    @surveys = Survey.order('created_at DESC')
  end

  def create

  end

  def new

  end

  def edit
  end

  def show
    @survey = Survey.find(params[:id])
  end

end
