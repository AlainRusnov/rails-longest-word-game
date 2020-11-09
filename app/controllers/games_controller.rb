require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def games
  end

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    #raise

    if @word.present?
      response = open("https://wagon-dictionary.herokuapp.com/#{@word}")
      @result = JSON.parse(response.read)
      #raise
      return @result
    end

  end
end

