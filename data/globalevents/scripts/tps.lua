local pos = {
	{x=148, y=42, z=7}
}


function onThink()
	for i = 1, #pos do
                   doSendAnimatedText(pos[i], "TELEPORTS", 30)
	end
	return true
end