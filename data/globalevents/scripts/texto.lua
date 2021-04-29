local config = {
    positions = {
        ["CASTLE24HORAS"] = { x = 154, y = 52, z = 7 },
        ["C.T.FLAG"] = { x = 167, y = 51, z = 7 },
        ["BLOOD CT."] = { x = 154, y = 53, z = 7 },
        ["CLICK"] = { x = 1533, y = 1299, z = 8 },
        ["ATALHO"] = { x = 1533, y = 1382, z = 7 },
        ["BATTLE F."] = { x = 154, y = 54, z = 7 },
        ["DONATE"] = { x = 153, y = 43, z = 7 },
        ["INVADIR"] = { x = 1520, y = 1361, z = 7 },
        ["INICIANTE"] = { x = 140, y = 61, z = 8 },
        ["BEM VINDO"] = { x = 143, y = 61, z = 8 },
        ["INVADIR "] = { x = 1531, y = 1361, z = 7 }
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(3, 260))
    end
    
    return TRUE
end  