# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ArtCar.create([
	{ 
		name: 'Pyrobar', 
		hometown: 'Santa Barbara, CA', 
		power_source: 'Gasoline',
		flame_effects: true,
		street_legal: true,
		photo_url: 'pyrobar.jpg'
	},
	{
		name: 'The Nautilus',
		hometown: 'San Francisco, CA', 
		power_source: 'Diesel',
		flame_effects: false,
		street_legal: false,
		photo_url: 'nautilus.jpg'
	},
	{
		name: 'Pirate Ship',
		hometown: 'Portland, OR', 
		power_source: 'Gasoline',
		flame_effects: true,
		street_legal: true,
		photo_url: 'pirate.jpg'
	},
	{
		name: 'Cupcakes',
		hometown: 'Orange County, CA', 
		power_source: 'Nuclear-Reactor',
		flame_effects: true,
		street_legal: true,
		photo_url: 'cupcake.jpg'
	}
])