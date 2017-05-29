class MainController < ApplicationController
  def index

    source = "http://api.fixer.io/latest?base=USD"
    data = JSON.load(open(source))

    @date = data["date"]
    @rates = data["rates"]

    @krw = @rates["KRW"] if @rates.present?

    source = "http://api.fixer.io/latest?base=KRW"
    data = JSON.load(open(source))

    @krw_date = data["date"]
    @krw_rates = data["rates"]


    source = "https://poloniex.com/public?command=returnTicker"
    @cur_list = JSON.load(open(source))


    source = "https://api.coinone.co.kr/ticker/?currency=all"
    @coinone_list = JSON.load(open(source))
    @btc_price = @coinone_list["btc"]["last"]

  end
end
