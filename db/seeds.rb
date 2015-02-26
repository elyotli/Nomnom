

User.create!(first_name: "Vince", last_name: "Li", dob: Date.parse('15-03-1990'), phone:"6267809466")

#------------------------------Creating menu for Chicago Pizza And Oven Grinder Co.
cpogc = Business.new(name: "Chicago Pizza And Oven Grinder Co.", email: "vlmist315@gmail.com")
cpogc.password = "1990315"
cpogc.save!

main_menu = Menu.create!(business: cpogc, name: 'Main Menu')

sub_menu_1 = Submenu.create!(menu: main_menu, name: 'Pizza Pot Pie')

pizza_pot_pie = Item.create!(submenu: sub_menu_1, name: "Pizza Pot Pie", description: 'The Pizza Pot Pie is an individual serving, "made from scratch" with triple-raised Sicilian bread-type dough; a homemade sauce consisting of olive oil, fresh garlic, onions, green peppers, whole plum tomatoes and a special blend of cheeses; sausage made from prime Boston butts; and doorknob-size, whole, fresh mushrooms. (Vegetarian pizza pot pie may be special ordered.)')

pizza_pot_pie_size = ItemOption.create!(item: pizza_pot_pie, name: "size", display_type: 1)

ItemDetail.create!(item_option: pizza_pot_pie_size, name: "The half-pounder", price: 11.75)
ItemDetail.create!(item_option: pizza_pot_pie_size, name: "The one-pounder", price: 23.50)

oven_grinder = Item.create!(submenu: sub_menu_1, name: "Oven Grinders", description: 'What in the blazes??? A large authentic Italian loaf stuffed with select Italian meats, cheeses, peppers, etc. basted with freshly seasoned garlic oil, and baked piping hot...')

oven_grinder_flavor = ItemOption.create!(item:oven_grinder, name: "filling", display_type: 1)

ItemDetail.create!(item_option: oven_grinder_flavor, name: "Italian Combination", price: 13.25)
ItemDetail.create!(item_option: oven_grinder_flavor, name: "Italian Salami", price: 12.75)
ItemDetail.create!(item_option: oven_grinder_flavor, name: "Italian Ham", price: 12.75)
ItemDetail.create!(item_option: oven_grinder_flavor, name: "Meatball", price: 12.75)
ItemDetail.create!(item_option: oven_grinder_flavor, name: "Sausage", price: 12.75)
ItemDetail.create!(item_option: oven_grinder_flavor, name: "Vegetarian", price: 12.75)

# antipasto = Item.create!(business: cpogc, name: "Antipasto", description: %q["Before the meal"...a cheerful, colorful, and appetizing variety of the splendid Italian version of hors d'oeuvres. This abundant serving, however, offers a judicious selection from which one can create a complete individual meal. Experience these unique taste sensations with the Mediterranean Bread and a bottle of dry, red Italian wine.], item_level: 3)

# Item.create!(business: cpogc, name: "small", parent: antipasto, price: 16.75, item_level: 1)
# Item.create!(business: cpogc, name: "large", parent: antipasto, price: 24.25, item_level: 1)

# chef_salad = Item.create!(business: cpogc, name: "Chef's Salad", description: %q[A moderate serving of lettuce, tomatoes, cucumbers, green and black olives, pepperoncini, onions, artichoke hearts, and green peppers, intended for one to two adults to compliment pizza or Oven Grinders. Served with sour cream garlic, sweet and sour poppyseed, and Italian dressings.], item_level: 3)

# Item.create!(business: cpogc, name: "small", parent: chef_salad, price: 7.50, item_level: 1)
# Item.create!(business: cpogc, name: "large", parent: chef_salad, price: 10.75, item_level: 1)

# mediterranean_bread = Item.create!(business: cpogc, name: "Mediterranean Bread", description: %q[Described simply as a creation. An honest product with a presence, a substance, a fragrance, and a taste. This bread was intended as a compliment to the Antipasto and the Salad Dinners but has earned its reputation, standing alone, as this restaurant's most popular menu item. Serves two to four adults and is enhanced by wine.], price: 7.75, item_level: 3)

# tortoni = Item.create!(business: cpogc, name: "Tortoni", description: %q[An Italian frozen cream dessert, flavored with rum and crushed macaroons and sprinkled with finely crushed toasted almonds. Made exclusively for the Chicago Pizza and Oven Grinder Company.], item_level: 3)

# Item.create!(business: cpogc, name: "small", parent: tortoni, price: 6.50, item_level: 1)
# Item.create!(business: cpogc, name: "large", parent: tortoni, price: 9.50, item_level: 1)
