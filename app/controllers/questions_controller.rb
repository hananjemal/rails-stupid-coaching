class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    stopMessage = "I am going to work right now!"

    if @question == stopMessage || @question == stopMessage.upcase
        @answer = "Great!"
    elsif @question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
    else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
