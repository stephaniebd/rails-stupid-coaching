class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if !params[:question].nil?
      if params[:question] == 'I am going to work'
        @answer = 'Great!'
      elsif @question.end_with?('?')
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end

# def answer
  #   if params[:question] == nil || ""
  #     @question = 'Nothing...'
  #     @answer = 'Nothing...'
  #   else
  #     @question = params[:question]
  #     if params[:question] == 'I am going to work'
  #       @answer = 'Great!'
  #     elsif params[:question].end_with?('?')
  #       @answer = 'Silly question, get dressed and go to work!'
  #     else
  #       @answer = "I don't care, get dressed and go to work!"
  #     end
  #   end
  # end
