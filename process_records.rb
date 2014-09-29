# Record format
# Destination, What got shipped, Number of crates, Money we made


# Good news Rubyists!
# We have a week of records tracking what we shipped at Planet Express.
# I need you to answer a few questions for Hermes.

# How much money did we make this week?
# How much money did we make broken down by planet?
# ie.. how much did we make shipping to Earth? Mars? Saturn? etc.

# Also, bonuses are paid to employees who pilot the Planet Express
# Different employees have favorite destinations they always pilot to
# Fry - pilots to Earth (because he isn't allowed into space)
# Amy - pilots to Mars (so she can visit her family)
# Bender - pilots to Uranus (teeheee...)
# Leela - pilots everywhere else because she is the only responsible one

# How many trips did each employee pilot?
# They get a bonus of 10% of the money for the shipment as the bonus
# How much of a bonus did each employee get?

# BONUS - uses classes for each shipment; but not necessary
# class Shipment
#   attr_accessor :destination, :what_got_shipped, :how_many, :money
#
#   attr_accessor :desination
#   attr_accessor :what_got_shipped
#   attr_accessor :how_many
#   attr_accessor :money
# end

class Shipment
  attr_accessor :destination, :what_got_shipped, :how_many, :money

  attr_accessor :destination
  attr_accessor :what_got_shipped
  attr_accessor :how_many
  attr_accessor :money
end

puts "Hello World"


# puts "hai"

shipments = []

money_bonus = 0
fry_bonus = 0
amy_bonus = 0
bender_bonus = 0
leela_bonus = 0



# open("planet_express_logs").each do |line|
#   p line.chomp

open("planet_express_logs").each do |line|
  p line.chomp

  values_array = line.chomp.split(",")

  shipment = Shipment.new
  shipment.destination = values_array[0]
  shipment.what_got_shipped = values_array[1]
  shipment.how_many = values_array[2].to_i
  shipment.money = values_array[3].to_i

  # puts "the values array looks like #{values_array}"
  money_bonus += shipment.money

  if shipment.destination == "Earth"
    fry_bonus += shipment.money * 0.10
  elsif shipment.destination == "Mars"
    amy_bonus += shipment.money * 0.10
  elsif shipment.destination == "Uranus"
    bender_bonus += shipment.money * 0.10
  else
    leela_bonus += shipment.money * 0.10
  end
  shipments << shipment

end


puts "How much money did we make this week?"
puts "Money #{money_bonus}"

puts "fry_bonus: #{fry_bonus}"
puts "amy_bonus: #{amy_bonus}"
puts "bender_bonus: #{bender_bonus}"
puts "leela_bonus: #{leela_bonus}"

puts "shipment : #{shipments}"





# records = []
#
# open("planet_express_logs").each do |line|
#   words = []
#   word = ""
#   records = line.chomp.chars
#
#   records.each do |x|
#     if x == ","
#       words << word
#       word = ""
#     else
#       word = word + x
#     end
#   end
# words << word
# p word
# p words
#   records << words
# end
#
# p records
