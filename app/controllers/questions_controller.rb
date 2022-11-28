class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params['question']
    @ans = ques_ans(@question)
  end

  def ques_ans(question)
    if question.end_with?('?')
      'No! GO TO WORK'
    elsif question == 'I am going to work now'
      'Good job pay taxes and stay out of prison'
    end
  end
end
