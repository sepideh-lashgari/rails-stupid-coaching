class PostsController < ApplicationController
  def index
    @welcome = "Hello world"
  end

  def answer
    # vowels = "aeiou"
    # "hello".include?(vowels) # ==> false
    input = params[:question]
    if input == "I am going to work"
      @answer = "Great!"
    elsif input.include?("?") == true
      @answer = "Silly question, get dressed and go to work!."
    else
      @answer = "I don't care, get dressed and go to work! "
    end
  end

end
