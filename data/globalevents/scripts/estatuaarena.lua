local pos = {
	{x=107, y=909, z=15}
}


function onThink()
	for i = 1, #pos do
                doSendAnimatedText(pos[i], "ADDON", TEXTCOLOR_DARKRED)
	end
	return true
end