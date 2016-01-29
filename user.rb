module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey, I'm running"
  end

  def self.identify_yourself
    puts "Hey, I am a User class"
  end

  #def get_name
  #  @name
  #end

  #def set_name=(name)
  #  @name = name
  #end
end

class Buyer < User
  def run
    puts "Hey, I'm not running and I'm the Buyer class"
  end
end

class Seller < User

end

class Admin < User

end

# user = User.new
# puts User.ancestors

u1 = User.new("Dave",    "dave@example.com")
u2 = User.new("Mashrur", "mashrur@example.com")
u3 = User.new("Carol",   "carol@example.com")

u1.run
u2.run
u3.run

#puts u1.get_name
#puts u2.get_name
#puts u3.get_name

puts "u1 name is #{u1.name} and email is #{u1.email}"
puts "u2 name is #{u2.name} and email is #{u2.email}"
puts "u3 name is #{u3.name} and email is #{u3.email}"

#u2.set_name = "Bob"

u2.name = "Bob"
u2.email = "bob@example.com"

#puts u1.get_name
#puts u2.get_name
#puts u3.get_name

puts "u1 name is #{u1.name} and email is #{u1.email}"
puts "u2 name is #{u2.name} and email is #{u2.email}"
puts "u3 name is #{u3.name} and email is #{u3.email}"

buyer1 = Buyer.new("John1", "john1@example.com")
buyer1.run
seller1 = Seller.new("John2", "john2@example.com")
seller1.run
admin1 = Seller.new("John3", "john3@example.com")
admin1.run

#puts Buyer.ancestors
#puts Buyer.instance_methods
#puts String.instance_methods
User.identify_yourself

u1.destroy("myname")