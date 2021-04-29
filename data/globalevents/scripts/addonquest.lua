local pos = {
	{x=147, y=42, z=7}
}


function onThink()
	for i = 1, #pos do
                doSendAnimatedText(pos[i], "ADDONS", 30)
	end
	return true
end