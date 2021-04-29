local pos ={
	{{x = 1018, y = 1037, z = 7, stackpos = 253}},
}
function onThink(cid, interval, lastExecution)
	for _, positions in pairs(pos) do
			doSendMagicEffect(positions[1], 58)                
	end
return TRUE
end