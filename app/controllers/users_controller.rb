class UsersController < ApplicationController
  def my_portfolio
    @user = current_user
    @user_stocks = current_user.stocks.by_position
  end

  def list_item
    @week52_high = week52_high(ticker_symbol)
  end
end
