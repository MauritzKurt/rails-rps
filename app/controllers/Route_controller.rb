class RouteController < ApplicationController
  def rules
    render ({ :template => "game_templates/rules" })
  end

  def rock
    @move_set = ["rock", "paper", "scissors"]
    $random_move = ["rock", "paper", "scissors"].sample
    @comp_move = @move_set.sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render ({ :template => "game_templates/play_rock" })
  end

  def paper
    @move_set = ["rock", "paper", "scissors"]
    $random_move = ["rock", "paper", "scissors"].sample
    @comp_move = @move_set.sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render ({ :template => "game_templates/play_paper" })
  end

  def scissors
    @move_set = ["rock", "paper", "scissors"]
    $random_move = ["rock", "paper", "scissors"].sample
    @comp_move = @move_set.sample

    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render ({ :template => "game_templates/play_scissors" })
  end
end
