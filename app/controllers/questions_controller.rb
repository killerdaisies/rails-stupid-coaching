class QuestionsController < ApplicationController
  ANSWERS = {
    answer1: "Great!",
    answer2: "Silly question, get dressed and go to work!",
    answer3: "I don't care, get dressed and go to work!"
  }

  def ask
#     If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!
  end

  def answer
    @question = params[:question]
    if @question.to_s.downcase == "i am going to work"
      @answer = ANSWERS[:answer1]
    elsif @question.to_s.include?('?')
      @answer = ANSWERS[:answer2]
    else
      @answer = ANSWERS[:answer3]
    end
  end
end
