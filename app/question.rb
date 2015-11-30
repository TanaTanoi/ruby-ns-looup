class Question
  attr_reader :address, :type, :class

  def initialize(address, type, question_class)
    @address = address
    @type = type
    @question_class = question_class
  end

end


Question.new(:address => "powershop.co.nz", :type => :A, :class => :IN)
