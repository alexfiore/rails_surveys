class SurveysController < ApplicationController

  def index 
    @surveys = Survey.order('created_at DESC')
  end

  def create
    @survey = Survey.create(params[:survey])
    redirect_to root_path
  end

  def new
    @survey = Survey.new  
    3.times { @question = @survey.questions.build 
    2.times { @question.choices.build } }
  end

  def edit
  end

  def show
    @survey = Survey.find(params[:id])
  end

end
