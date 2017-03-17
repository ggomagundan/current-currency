require 'telegram/bot'

token = ENV['TELEGRAM_BOT_TOKEN']

help_msg = "Hello, Ethereum Traders\n /buy : Best Cheap Exchange \n /sell : Best Expensive Exchange \n /now : Current Prices\n"

puts "Start Server"
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, Ethereum Traders\n #{help_msg} ")
      puts "Start"
    when '/help'
      bot.api.send_message(chat_id: message.chat.id, text: "Help ME!! Help ME!! \n #{help_msg}")
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
