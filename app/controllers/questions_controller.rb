class QuestionsController < ApplicationController

  def ask
    # capter la question tapée dans le form et dont le name= query (cf view)
    @query = params[:query]
  end

  def answer
 @answer = answer_coach(params[:query])
  end


  def answer_coach(question)
  if question != nil
    test = question.upcase
    if question.include?("I AM GOING TO WORK RIGHT NOW!")
      @sortie = ""
      elsif question  == test && question[-1] == "?"
        @sortie = "I can feel your motivation! Silly question, get dressed and go to work!"
      elsif question  == @test
        @sortie = "I can feel your motivation! I don't care, get dressed and go to work!"
      elsif question[-1] == "?" # dernier char = ?
        @sortie = "Silly question, get dressed and go to work!"
      elsif question.include?("I am going to work right now!")
        @sortie = ""
      else
        @sortie = "I don't care, get dressed and go to work!"
    end
    return @sortie
  else
    return "question is nil"
  end
end


end
