local pos = {
	{x=150, y=42, z=7}
}


function onThink()
	for i = 1, #pos do
                doSendAnimatedText(pos[i], "TRAINER", 30)
	end
	return true
end