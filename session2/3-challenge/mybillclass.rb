class bill

rate = 150 #sets the quarter hourly rate

attr_accessor :hours , :minutes , :fee  #creates class variable

def time_worked
puts "How many hours have you worked?"
self.hours = gets.to_i
puts "How many minutes did you work?"
self.minutes = gets.to_i
end

def calcfee
minutes_worked += hours_worked * 60 #how many minutes worked
quarters_worked += minutes_worked/15 #how many quarters worked
quarter_hours * rate #the fee
end

  def update_fee
    # invoking the setter defined by attr_accessor rather than directly touching the instance variable
    # self is the current object who this instance method is modifying
    # we put self in front of it so the interpreter knows we are invoking fee= rather than creating a local variable
    self.fee = calcfee( hours , minutes )
  end

  def output_bill
    puts "Time worked:"
    puts "#{hours} hours and #{minutes} minutes"
    puts "Rate: $#{RATE} per quarter hour."
    puts "Amount Due $#{fee}"
  end
end