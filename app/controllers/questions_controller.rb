class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question_provided = params[:question]
    @answer =
      if params[:question] == 'I am going to work'
        'Great!'
      elsif params[:question].end_with?('?')
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
