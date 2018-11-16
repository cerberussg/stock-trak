class StockJob < ActiveJob::Base

  def perform
    update_stock
  end

  private

  def update_stock
    stocks = Stock.all_stocks
    stocks.each do |stock|
      ticker_symbol = stock.ticker
      quote = Stock.stock_quote(ticker_symbol)
      latest_price = quote.latest_price
      fifty_two = quote.week52_high
      pe_ratio = quote.pe_ratio
      iex_realtime_price = quote.iex_realtime_price
      iex_bid_price = quote.iex_bid_price
      iex_bid_size = quote.iex_bid_size
      stock.update_attributes!(
        last_price: latest_price,
        fifty_two: fifty_two,
        pe_ratio: pe_ratio,
        iex_realtime_price: iex_realtime_price,
        iex_bid_price: iex_bid_price,
        iex_bid_size: iex_bid_size
      )
    end
  end
end
