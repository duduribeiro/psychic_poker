require 'pry'
require './lib/psychic_poker'

input = File.open('input.txt')

while line = input.gets
  cards = line.split
  Play.start cards.first(5), cards.last(5)
end
