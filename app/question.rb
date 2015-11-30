class Question
  attr_reader :address, :type, :question_class

  def initialize(address, type, question_class)
    @address = address
    @type = type
    @question_class = question_class
    puts "#{address} ,  #{type} , #{question_class}"
  end

end
