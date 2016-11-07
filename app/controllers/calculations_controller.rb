class CalculationsController < ApplicationController
  def instructions

    render("instructions.html.erb")

  end
  def square
    @number = params[:number].to_f
    @answer = @number**2

    render("square.html.erb")
  end
  def square_root
    @number = params[:number].to_f
    @answer = @number**0.5

    render("square_root.html.erb")
  end
  def random
    @number1 = params[:min].to_i
    @number2 = params[:max].to_i
    @random = rand(@number1..@number2).to_i

    render("random.html.erb")
  end
  def payment
    @rate = params[:interest_rate].to_f/100
    @years = params[:number_of_years].to_f
    @principal = params[:principal_value].to_f
    @payment = (@rate/1200+((@rate/1200)/((1+(@rate/1200))**(@years*12)-1)))*@principal

    render("payment.html.erb")
  end
end
