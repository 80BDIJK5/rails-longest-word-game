require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    # @included = params[:word].chars.all? { |letter| params[:word].count(letter) <= params[:letter].count(letter) }
    # @message = ''

    # def english_word?(word)
    #   response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    #   json = JSON.parse(response.read)
    #     return json['found']
    # end

    # if @included
    #   if @english_word
    #     @message = 'Well done'
    #   else
    #     @message = 'Not an english word'
    #   end
    # else
    #   @message = 'Not in the grid'
    # end
  end
end


