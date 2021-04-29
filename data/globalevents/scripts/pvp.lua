local pos = {
	{x=143, y=45, z=7}
}


function onThink()
	for i = 1, #pos do
                doSendAnimatedText(pos[i], "PVP", 30)                 
	end
	return true
end