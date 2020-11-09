class PagesController < ActionController::Base
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:questions]

    if params[:questions].include?('?')
      @answer = @answers[1]
    elsif params[:questions] == 'I am going to work'
      @answer = @answers[0]
    else
      @answer = @answers[2]
    end
  end
end
