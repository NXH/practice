class CalculationController < ApplicationController
  def home

  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number ** 2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @rate_annual = params[:interest_rate].to_f / 100.to_f
    @rate_monthly = @rate_annual / 12.to_f
    @numpay = params[:number_of_payments].to_i
    @pv = params[:present_value].to_i
    @numerator = (@pv * @rate_monthly * (1  + @rate_monthly) ** @numpay).to_f
    @denominator = ((1 + @rate_monthly) ** @numpay -1).to_f
    @payment = (@numerator / @denominator).to_i
  end
end
