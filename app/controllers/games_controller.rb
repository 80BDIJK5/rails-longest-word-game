require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    @included = @word.chars.all? { |letter| @word.count(letter) <= @letters.count(letter) }
    @message = ''

    if @included
      if @english_word
        @message = 'Well done'
      else
        @message = 'Not an english word'
      end
    else
      @message = 'Not in the grid'
    end
  end

  private

  def english_word?
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{@word}")
    json = JSON.parse(response.read)
    json['found']
  end
end
