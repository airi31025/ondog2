class User::AnswerResultsController < ApplicationController
  def create
    # byebug
    question = Question.find(params[:question_id])
    question.question_contents.each_with_index do |content, index|
    if content.answer == params[:answers]
       redirect_to user_answer_results_congrats_path
    else
      render user_question_practice_path(question.id)
    end

  end
end

  #   if  question.question_contents_ansers == question.answer_results
  #     redirect_to user_answer_results_congrats
  #   else
  #     render user_question_practice
  #   end
  # end

  def congrats
  end
end
