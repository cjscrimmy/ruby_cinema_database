require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require('pry-byebug')

customer1 = Customer.new({
    'first_name' => 'Gerard',
    'last_name' => 'Way',
    'funds' => 25
})
customer1.save()

customer2 = Customer.new({
    'first_name' => 'Ray',
    'last_name' => 'Toro',
    'funds' => 40
})
customer2.save()

film1 = Film.new({
    'title' => 'Iron Man',
    'price' => 6
})
film1.save()

film2 = Film.new({
    'title' => 'Captain America',
    'price' => 4
})
film2.save()

ticket1 = Ticket.new({
    'customer_id' => customer1.id,
    'film_id' => film1.id
})
ticket1.save()

ticket2 = Ticket.new({
    'customer_id' => customer2.id,
    'film_id' => film1.id
})
ticket2.save()

ticket3 = Ticket.new({
    'customer_id' => customer2.id,
    'film_id' => film2.id
})
ticket3.save()

binding.pry
nil