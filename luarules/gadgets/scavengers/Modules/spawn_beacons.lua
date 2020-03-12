local BeaconSpawnChance = unitSpawnerModuleConfig.beaconspawnchance

function SpawnBeacon(n)
	if n and n > 7200 then
		local BeaconSpawnChance = math_random(0,BeaconSpawnChance)
		if numOfSpawnBeacons <= unitSpawnerModuleConfig.minimumspawnbeacons then
			BeaconSpawnChance = 0
		end
		if BossWaveTimeLeft and BossWaveTimeLeft < 1 then
			BeaconSpawnChance = 1 -- can't spawn
		end
		if BeaconSpawnChance == 0 or canSpawnBeaconHere == false then
			
			local posx = math_random(80,mapsizeX-80)
			local posz = math_random(80,mapsizeZ-80)
			local posy = Spring.GetGroundHeight(posx, posz)
			local posradius = 80
			canSpawnBeaconHere = posCheck(posx, posy, posz, posradius)
			if canSpawnBeaconHere then
				if globalScore then
					if ScavengerStartboxExists and ScavengerStartboxXMin < posx and ScavengerStartboxXMax > posx and ScavengerStartboxZMin < posz and ScavengerStartboxZMax > posz then
						canSpawnBeaconHere = true
					-- elseif globalScore > scavconfig.timers.OnlyLos then
						-- canSpawnBeaconHere = posLosCheckOnlyLOS(posx, posy, posz,posradius)
					elseif globalScore > scavconfig.timers.NoRadar then
						canSpawnBeaconHere = posLosCheckNoRadar(posx, posy, posz,posradius)
					else
						canSpawnBeaconHere = posLosCheck(posx, posy, posz,posradius)
					end
				end
			end
			if canSpawnBeaconHere then
				canSpawnBeaconHere = posOccupied(posx, posy, posz, posradius)
			end
			
			if canSpawnBeaconHere then
				BeaconSpawnChance = unitSpawnerModuleConfig.beaconspawnchance
				Spring.CreateUnit("scavengerdroppodbeacon_scav", posx, posy, posz, math_random(0,3),GaiaTeamID)
			end
		else
			BeaconSpawnChance = BeaconSpawnChance - 1
			if BeaconSpawnChance < 1 then
				BeaconSpawnChance = 1
			end
		end
	end
end