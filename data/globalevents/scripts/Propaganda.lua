local msgs = {
        "Não deixe de visitar nosso website e conferir as novidades, promoções e eventos!",
        "O Melhor Baiak Barao está Aqui",
}
 
function onThink(interval)
        local msg = msgs[math.random(#msgs)]
 
        for _, uid in pairs(getPlayersOnline()) do
                doScrollMessage(uid, msg)
        end
 
        return true
end