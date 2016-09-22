class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
      if @question.save
        redirect_to questions_path
      end
  end

  def update
    @question = Question.new(question_params)
    if @question.update(question_params)
    redirect_to users_path
    end
  end

  def destroy
    @question=Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
  private
  def question_params
      params.require(:question).permit(:name, :description)
    end
end
