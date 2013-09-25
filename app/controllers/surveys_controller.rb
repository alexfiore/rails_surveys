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
    @question = Question.new
    @survey.questions << @question
    @choice1 = Choice.new
    @choice2 = Choice.new
    @question.choices << @choice1 << @choice2
  end

  def edit
  end

  def show
    @survey = Survey.find(params[:id])
  end

end
