class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def edit
  end

  def create
    @question = Question.find params[:question_id]
    @answer = @question.answers.new answer_params
    @answer.save
    redirect_to question_path @question

  end

  def update
  end

  def destroy
  end
  private
  def answer_params
    params.require(:answer).permit(:name, :description)
  end
end
