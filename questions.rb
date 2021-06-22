class questions
  attr_reader :answer

  def initialize
    self.generate_question
  end

  def generate_question
    num = Random.new
    num1 = num.rand(1..100)
    num2 = num.rand(1..100)
  
    @answer = num1 + num2
    "What does #{num1} + #{num2} equal?"
  end
end
