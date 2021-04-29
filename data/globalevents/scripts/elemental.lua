local pos = {
	{x=121, y=58, z=7}
}


function onThink()
	for i = 1, #pos do
                doSendAnimatedText(pos[i], "ELEMENTAL", 30)
	end
	return true
end