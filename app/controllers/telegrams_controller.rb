class TelegramsController < ApplicationController

  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  require 'telegram/bot'

  @@token = '373364325:AAGZyou3h7fkszjY432tHv9cyEIdxS5xm2w'

  @@bot = Telegram::Bot::Client.new(@@token)

  @@help_msg = "Hello, Ethereum Traders\n /buy : Best Cheap Exchange \n /sell : Best Expensive Exchange \n /now : Current Prices\n /help : Help :( \n\n Donation : 0x5debb97a6Cc1Fdf686a3C6aA804a623a21deD73c  "

  def index

  end

  def create

=begin
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, Ethereum Traders\n #{@help_msg} ")
          puts "Start"
        when '/help'
          bot.api.send_message(chat_id: message.chat.id, text: "Help ME!! Help ME!! \n #{@help_msg}")
          puts "Help"
        when '/buy'
          bot.api.send_message(chat_id: message.chat.id, text: "Best Cheaper \n\n Poloniex: 0.1 \n Coinone: 70,000 \n Bithumb : 71,000 \n  Korbit : 69,000 (Buy Now!!) \n")
          puts "Buy"
        when '/sell'
          bot.api.send_message(chat_id: message.chat.id, text: "Best Expensive  \n\n Poloniex: 0.1 \n Coinone: 72,000 \n Bithumb : 81,000 (Sell Now!!)  \n  Korbit : 70,000 \n")
          puts "Sell"
        when '/now'
          bot.api.send_message(chat_id: message.chat.id, text: "Now Price  \n\n \
                               Bid \n Poloniex: 0.1 \n Coinone: 72,000 \n Bithumb : 81,000 (Sell Now!!)  \n  Korbit : 70,000 \n\n \
                               Ask \n Poloniex: 0.1 \n Coinone: 70,000 \n Bithumb : 71,000 \n  Korbit : 69,000 (Buy Now!!) \n")
          puts "Now"
        end
      end
    end
=end
 chat_id = params[:message] ? (params[:message][:chat] ? params[:message][:chat][:id] : nil) : nil
 if chat_id.blank?
   toss_error(params)
 else
   bot = Telegram::Bot::Client.new('373364325:AAGZyou3h7fkszjY432tHv9cyEIdxS5xm2w')
   text = params[:message][:text]
   case text
     when '/start'
       @@bot.api.send_message(chat_id: chat_id, text: "Hello, Ethereum Traders\n #{@@help_msg} ")
       puts "Start"
     when '/help'
       @@bot.api.send_message(chat_id: chat_id, text: "Help ME!! Help ME!! \n #{@@help_msg}")
       puts "Help"
     when '/buy'
       @@bot.api.send_message(chat_id: chat_id, text: "Best Cheaper \n\n Poloniex: 0.1 \n Coinone: 70,000 \n Bithumb : 71,000 \n  Korbit : 69,000 (Buy Now!!) \n")
       puts "Buy"
     when '/sell'
       @@bot.api.send_message(chat_id: chat_id, text: "Best Expensive  \n\n Poloniex: 0.1 \n Coinone: 72,000 \n Bithumb : 81,000 (Sell Now!!)  \n  Korbit : 70,000 \n")
       puts "Sell"
     when '/now'
       @@bot.api.send_message(chat_id: chat_id, text: "Now Price  \n\n \
                               Bid \n Poloniex: 0.1 \n Coinone: 72,000 \n Bithumb : 81,000 (Sell Now!!)  \n  Korbit : 70,000 \n\n \
                               Ask \n Poloniex: 0.1 \n Coinone: 70,000 \n Bithumb : 71,000 \n  Korbit : 69,000 (Buy Now!!) \n")
       puts "Now"
     else
      @@bot.api.send_message(chat_id: chat_id, text: "Pardon?? \n\n #{@@help_msg} \n")
     end

 end
    render json: {status: true, msg: "OK"}

  end

  private
  def toss_error(params={})
    @@bot.api.send_message(chat_id: 31107014, text: "Toss Error : \n #{params}")

  end

end
