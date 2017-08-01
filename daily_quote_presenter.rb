
require 'csv'
class DailyQuotePresenter
  def initialize(quotes)
    @quotes = quotes
  end


  def present
    # randomize the list and pop off an item
    # in the array
    @quotes.shuffle!.pop
  end

  def add_quote(quote)
    @quotes << quote

  end

  class << self
    def from_file(file_name)
      quotes = []
      CSV.foreach(file_name) do |row|
        quotes << row[0]
      end
      new(quotes)
    end
  end
end


presenter = DailyQuotePresenter.from_file('tesla_quotes.csv')

presenter.add_quote("I think therefore I am")


5.times { puts presenter.present }
# require 'pry'
# binding.pry
