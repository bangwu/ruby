#!/usr/bin/ruby
$global_variable=10
class Class1
  def print_global
    puts "GLobal variable in clas is #$global_variable"
  end
class Class2
  def print_global
    puts "Global variable in Class2 is #$global_variable"
  end
end
def main
  class1obj=Class1.new
  class1obj.print_global
end
