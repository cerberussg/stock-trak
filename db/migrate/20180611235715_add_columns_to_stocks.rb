class AddColumnsToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :fifty_two, :decimal
    add_column :stocks, :pe_ratio, :decimal
    add_column :stocks, :iex_realtime_price, :decimal
    add_column :stocks, :iex_bid_price, :decimal
    add_column :stocks, :iex_bid_size, :decimal
    add_column :stocks, :iex_ask_price, :decimal
    add_column :stocks, :iex_ask_size, :decimal
  end
end
