require 'byebug'

class Employee
  attr_reader :salary
  def initialize(name, salary, title, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    if !@boss.nil?
    boss.employees << self
    end
  end

  def bonus(multiplier)
    bonus = (self.salary) * multiplier

  end
end


class Manager < Employee
attr_accessor :employees
  def initialize(name, salary, title, boss)
      @employees = []
      super
  end

  def bonus(multiplier)
    sum_salaries = 0
    
    @employees.each do |employee|
        
        sum_salaries += employee.salary
      
          end

    sum_salaries * multiplier
  end
end

p ned = Manager.new("Ned", 1000000, "Founder", nil)
p darren = Manager.new("Darren", 78000, "TA Manager",ned)
p shawna = Employee.new("Shawna", 12000, "TA", darren)
# p a = Manager.new(darren)
p darren.bonus(4)
p shawna.bonus(2)