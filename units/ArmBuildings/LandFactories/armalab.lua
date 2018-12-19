return {
	armalab = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 1024,
		buildcostenergy = 15000,
		buildcostmetal = 2900,
		builder = true,
		shownanospray = false,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 9,
		buildinggrounddecalsizey = 9,
		buildinggrounddecaltype = "armalab_aoplane.dds",
		buildpic = "ARMALAB.DDS",
		buildtime = 16224,
		canmove = true,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumescales = "75 32 91",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Produces Level 2 Kbots",
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 6,
		footprintz = 6,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3808,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 200,
		name = "Advanced Kbot Lab",
		objectname = "ARMALAB",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 286,
		terraformspeed = 1000,
		usebuildinggrounddecal = true,
		workertime = 300,
		yardmap = "occccooccccooccccooccccooccccoocccco",
		buildoptions = {
			[1] = "armack",
			[2] = "armfark",
			[3] = "armfast",
			[4] = "armamph",
			[5] = "armzeus",
			[6] = "armmav",
			[7] = "armsptk",
			[8] = "armfido",
			[9] = "armsnipe",
			[10] = "armfboy",
			[11] = "armspid",
			[12] = "armaak",
			[13] = "armvader",
			[14] = "armdecom",
			[15] = "armscab",
			[16] = "armaser",
			[17] = "armspy",
			[18] = "armmark",
		},
		customparams = {
			bar_buildinggrounddecalsizex = 8.6,
			bar_buildinggrounddecalsizey = 8.6,
			bar_yardmap = "oooooo oooooo oooooo cccccc cccccc cccccc",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -17 -1",
				collisionvolumescales = "73 56 89",
				collisionvolumetype = "CylZ",
				damage = 2285,
				description = "Advanced Kbot Lab Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 6,
				height = 20,
				hitdensity = 100,
				metal = 1773,
				object = "ARMALAB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1143,
				description = "Advanced Kbot Lab Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 887,
				object = "5X5A",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "plabactv",
			},
		},
	},
}
