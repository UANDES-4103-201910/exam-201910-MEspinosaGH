# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create([{ first_name: 'Macarena', last_name: 'Espinosa', email: 'mespinosa3@miuandes.cl' },
					{ first_name: 'Alfonso', last_name: 'Zuniga', email: 'ajzuniga1@miuandes.cl'}])

address = Address.create([{ user: User.find(1), phone: 912121212, address_line_1: 'Coventry 1934, Nunoa',
						   address_line_2:'depto 506B', city: 'Santiago', country: 'Chile', zipcode: '00000' },
						  { user: User.find(2), phone: 923232323, address_line_1: 'Camino Otonal 1492, Las Condes',
						   city: 'Santiago', country: 'Chile', zipcode: '00000' },
						  { user: User.find(1), phone: 913131313, address_line_1: 'Vitacura 2902, Las Condes',
						  	address_line_2: 'depto 206', city: 'Santiago', country: 'Chile', zipcode:'11111' }])

product = Product.create([{ brand: 'Iphone', model: 'X', variant: 'black 256GB', price: 700000, product_type: 'subscription',
							short_description: 'overpriced product', long_description: 'you need to sell at least one organ to buy it' },
						  { brand: 'Xiaomi', model: 'Redmi 5A', variant: 'gold 16GB', price: 80000, product_type: 'handset',
						    short_description: 'cheap product', long_description: 'It is a miracle if it last longer than a year. Cheaper than a Mac holder.' }])

order = Order.create([{ user: User.find(1), billing_address_id: 3, shipping_address_id: 1},
					  { user: User.find(2), billing_address_id: 2, shipping_address_id: 2}])

order_product = OrderProduct.create([{ order: Order.find(1), product: Product.find(2) },
									 { order: Order.find(2), product: Product.find(1) },
									 { order: Order.find(2), product: Product.find(1) },
									 { order: Order.find(2), product: Product.find(1) }])