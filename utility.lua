local utility = {}

function utility:walkspeed_bypass()
    local gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    local oldindex = gmt.__index
    gmt.__index = newcclosure(function(self,b)
        if b == "WalkSpeed" then
            return 16
        end
        return oldindex(self,b)
    end)
end


function utility:jumppower_bypass()
    local gmt = getrawmetatable(game)
    setreadonly(gmt, false)
    local oldindex = gmt.__index
    gmt.__index = newcclosure(function(self,b)
        if b == "JumpPower" then
            return 50
        end
        return oldindex(self,b)
    end)
end

return utility
