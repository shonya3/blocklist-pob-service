local out = io.open("../Data/Misc.lua", "w")
out:write("-- This file is automatically generated, do not edit!\n\n")
out:write('local data = ...\n')
local evasion = ""
local accuracy = ""
local life = ""
local allyLife = ""
local damage = ""
local armour = ""
for stats in dat("DefaultMonsterStats"):Rows() do
	evasion = evasion .. stats.Evasion .. ", "
	accuracy = accuracy .. stats.Accuracy .. ", "
	life = life .. stats.MonsterLife .. ", "
	allyLife = allyLife .. stats.MinionLife .. ", "
	damage = damage .. stats.Damage .. ", "
	armour = armour .. stats.Armour .. ", "
end
out:write('-- From DefaultMonsterStats.dat\n')
out:write('data.monsterEvasionTable = { '..evasion..'}\n')
out:write('data.monsterAccuracyTable = { '..accuracy..'}\n')
out:write('data.monsterLifeTable = { '..life..'}\n')
out:write('data.monsterAllyLifeTable = { '..allyLife..'}\n')
out:write('data.monsterDamageTable = { '..damage..'}\n')
out:write('data.monsterArmourTable = { '..armour..'}\n')

local totemMult = ""
local keys = { }
for var in dat("SkillTotemVariations"):Rows() do
	if not keys[var.SkillTotem] then
		keys[var.SkillTotem] = true
		totemMult = totemMult .. "[" .. var.SkillTotem .. "] = " .. var.MonsterVariety.LifeMultiplier / 100 .. ", "
	end
end
out:write('-- From MonsterVarieties.dat combined with SkillTotemVariations.dat\n')
out:write('data.totemLifeMult = { '..totemMult..'}\n')

out:write('data.monsterVarietyLifeMult = {\n')
local cachedEntry = { }
for row in dat("MonsterVarieties"):Rows() do
	for _, mod in ipairs(row.Mods) do
		if mod.Id == "MonsterNecromancerRaisable" and not cachedEntry['"' .. row.Name .. '"'] then
			out:write('\t["' .. row.Name .. '"] = ' .. row.LifeMultiplier/100 .. ',\n')
			cachedEntry['"' .. row.Name .. '"'] = true
			break
		end
	end
end
out:write('}\n')

out:write('-- From MonsterMapDifficulty.dat\n')
out:write('data.mapLevelLifeMult = { ')
for row in dat("MonsterMapDifficulty"):Rows() do
	out:write('[' .. row.AreaLevel .. '] = ' .. (1+row.LifePercentIncrease/100) .. ', ')
end
out:write('}\n')

local mapBossLifeMult = ""
local mapBossAilmentMult = ""
for var in dat("MonsterMapBossDifficulty"):Rows() do
	mapBossLifeMult = mapBossLifeMult .. "[" .. var.AreaLevel .. "] = " .. 1 + var.BossLifePercentIncrease / 100 .. ", "
	mapBossAilmentMult = mapBossAilmentMult .. "[" .. var.AreaLevel .. "] = " .. (100 + var.BossAilmentPercentDecrease) / 100 .. ", "
end

out:write('-- From MonsterMapBossDifficulty.dat\n')
out:write('data.mapLevelBossLifeMult = { '..mapBossLifeMult..'}\n')
out:write('data.mapLevelBossAilmentMult = { '..mapBossAilmentMult..'}\n')

out:close()

print("Misc data exported.")