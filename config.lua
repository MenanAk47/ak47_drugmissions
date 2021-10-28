Config = {}
Config.PatreonEmail = 'Your Patreon Email' --Take authorization with your patreon email.
Config.SharedObjectName = 'esx:getSharedObject'

Config.BlipForWaypoint = true
Config.PickupArrow = true

Config.locations = {
	['Coke Plane'] = {
		blip = {enable = true, sprite = 251, size = 1.0, color = 0, radius = 100, radiusColor = 0},
		payPos = {x = 2122.22, y = 4784.82, z = 40.97, h = 115.0}, -- Payment position
		stationary = {x = 2133.78, y = 4782.68, z = 40.97, h = 20.59}, -- location of the vehicle
		delivery = {x = 4440.05, y = -4460.63, z = 3.33, h = 17.50}, -- delivery location
		hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, -- end location
		payAmount = 3000,
		returnAmount = 2000,
		missionTime = 1200, --in secound
		pickupProp = 'bkr_prop_coke_block_01a',
		pickupTime = 10, --in secound
		vehicle = 'dodo', --Vehicle hash
		item = 'cokebrick',
		quantity = 1,															
	},
	['Weed Vehicle'] = {
		blip = {enable = true, sprite = 496, size = 1.0, color = 25, radius = 100, radiusColor = 25},
		payPos = {x = 76.68, y = -1948.33, z = 21.2, h = 55.5}, -- Payment position
		stationary = {x = 92.58, y = -1940.31, z = 19.67, h = 26.0}, -- location of the vehicle
		delivery = {x = 2328.62, y = 2570.87, z = 46.58, h = 57.20}, -- delivery location
		hangar = {x = 92.58, y = -1940.31, z = 20.67}, -- end location
		payAmount = 3000,
		returnAmount = 2000,
		missionTime = 1200, --in secound
		pickupProp = 'ba_prop_battle_weed_bigbag_01a',
		pickupTime = 10, --in secound
		vehicle = 'sultan', --Vehicle hash
		item = 'weedbrick',
		quantity = 1,
	},
	['Meth Boat'] = {
		blip = {enable = true, sprite = 529, size = 1.0, color = 42, radius = 100, radiusColor = 42},
		payPos = {x = 1335.06, y = 4306.68, z = 38.12, h = 77.14}, -- Payment position
		stationary = {x = 1341.00, y = 4269.54, z = 32.80, h = 00}, -- location of the vehicle
		delivery = {x = -2166.13, y = 5197.39, z = 15.93, h = 9.50}, -- delivery location
		hangar = {x = 1340.90, y = 4266.62, z = 31.00}, -- end location
		payAmount = 3000,
		returnAmount = 2000,
		missionTime = 1200, --in secound
		pickupProp = 'bkr_prop_meth_pseudoephedrine',
		pickupTime = 10, --in secound
		vehicle = 'dinghy', --Vehicle hash
		item = 'methbrick',
		quantity = 1,
	},
}	

	

