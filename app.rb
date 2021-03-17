require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i**2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @finished_phrase = []
    @number.to_i.times do 
      @finished_phrase << @phrase
    end
    "#{@finished_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    sentence = [@word1,@word2,@word3,@word4,@word5].join(" ")
    "#{sentence}."
  end

  # get '/:operation/:number1/:number2' do
  #   @operation = params[:operation]
  #   @number1 = params[:number1]
  #   @number2 = params[:number2]  
  #   operation = @number1.to_i+@operation.to_sym+@number2.to_i
  #   operation
  # end
  
end