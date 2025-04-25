class DiceController < ApplicationController

def home
  render({ :template => "dice_templates/home"})
end

def quant_side
  @num_dice = params.fetch("num").to_i

  @side_dice = params.fetch("side").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@side_dice)

    @rolls.push(die)
  end

  render({ :template => "dice_templates/quant_side"})
end
end 
