local multiplier = {}
local counter = 0
function onStatsChange(cid, attacker, type, combat, value)
if getPlayerStorageValue(cid, 10094) >= 1 and attacker ~= 0 and combat ~= COMBAT_HEALING then
 
if isPlayer(attacker) == TRUE then
multiplier = 4
else
multiplier = 10
end
 
function doAttack(attacker)
if isCreature(attacker) == TRUE and getTilePzInfo(getCreaturePosition(cid)) == false and getTilePzInfo(getCreaturePosition(attacker)) == false then
if counter < 5 then 
local damage = math.floor((value * multiplier) / 5)
doTargetCombatHealth(cid, attacker, COMBAT_DROWNDAMAGE, -damage, -damage, 129)
doSendDistanceShoot(getCreaturePosition(cid), getCreaturePosition(attacker), 24)
counter = counter + 1
addEvent(doAttack,1000,attacker)
else
stopEvent(attacker,doAttack)
counter = 0
end
else
stopEvent(attacker,doAttack)
counter = 0
end
end
 
addEvent(doAttack, 0, attacker)
if isCreature(attacker) == TRUE then
doSendMagicEffect(getCreaturePos(attacker), 66)
end
doSendAnimatedText(getCreaturePos(cid), 'REFLECT', TEXTCOLOR_DARKYELLOW)
 
if isCreature(attacker) == true and isPlayer(attacker) == false then
local addSoul = 40
if (getPlayerSoul(cid) + 40) > 250 then
addSoul = 250 - getPlayerSoul(cid)
end
doPlayerAddSoul(cid, addSoul)
end
 
--if getPlayerStorageValue(cid, 10094) == 1 then
--setPlayerStorageValue(cid, 10094, 2)
--elseif getPlayerStorageValue(cid, 10094) == 2 then
doRemoveCondition(cid, CONDITION_FOOD)
setPlayerStorageValue(cid, 10094, 0)
--end
return false
else
return true
end
end