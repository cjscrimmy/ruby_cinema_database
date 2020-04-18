require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require('pry-byebug')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

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

customer3 = Customer.new({
    'first_name' => 'Mikey',
    'last_name' => 'Way',
    'funds' => 12
})
customer3.save()

customer4= Customer.new({
    'first_name' => 'Frank',
    'last_name' => 'Iero',
    'funds' => 30
})
customer4.save()

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

film3 = Film.new({
    'title' => 'Thor',
    'price' => 5
})
film3.save()

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

ticket4 = Ticket.new({
    'customer_id' => customer3.id,
    'film_id' => film1.id
})
ticket4.save()

ticket5 = Ticket.new({
    'customer_id' => customer4.id,
    'film_id' => film1.id
})
ticket5.save()

ticket6 = Ticket.new({
    'customer_id' => customer4.id,
    'film_id' => film2.id
})
ticket6.save()




binding.pry
nil