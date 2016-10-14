require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    reverse = name.downcase.split(//).reverse.join
    "#{reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @sq = @num * @num
    "#{@sq}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_list = []
    @num.times do
      @phrase_list << @phrase
    end

    @final = @phrase_list.flatten.join("\n")
    "#{@final}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      @result = num1 + num2
    when 'subtract'
      @result = num1 - num2
    when 'multiply'
      @result = num1 * num2
    when 'divide'
      @result = num1 / num2
    end


    "#{@result}"
  end

end
