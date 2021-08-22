class GamesController < ApplicationController

  def new
    @letters = Array.new(5) {('A'..'Z').to_a.sample}
    @letters += Array.new(5) {%w(A E I O U Y).to_a.sample}

  end

  def score
  end

  def word?
    response = open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)

  end




end
