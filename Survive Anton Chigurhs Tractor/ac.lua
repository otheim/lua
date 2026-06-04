local old
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
            
    if method == "FireServer" and self == game:GetService("ReplicatedStorage").SecurityCheck then
        return
    end
    return old(self, ...)
end))
