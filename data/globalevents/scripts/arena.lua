local pos = {
	{x=165, y=48, z=7},
}


function onThink()
	for i = 1, #pos do
                doSendAnimatedText(pos[i], "QUEST", TEXTCOLOR_DARKRED)
	end
	return true
end