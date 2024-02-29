-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:


function has_nuke()
    local nuke = Tracker:ProviderCountForCode('nuke')
    if (nuke == 1) then
        local hook = Tracker:ProviderCountForCode('hook')
        if (hook == 1) then
            return 1
        end
    end
    return 0
end

function has_atleast_n_weight_with_burger(n)
    local count = Tracker:ProviderCountForCode('weight')
    local nuke = Tracker:ProviderCountForCode('nuke')
    local hook = Tracker:ProviderCountForCode('hook')
    if (nuke == 1) then
        if (hook == 1) then
            count = count + 1
        end
    end
    local darkstone = Tracker:ProviderCountForCode('darkstone')
    local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
    if (darkstone == 1) then
        if (leverMiddle == 1) then
            count = count + 1
        end
    end
    local burger = Tracker:ProviderCountForCode('burger')
    if (burger == 1) then
        if (leverMiddle == 1) then
            count = count + 1
        end
    end
    local boomerang = Tracker:ProviderCountForCode('boomerang')
    if (boomerang == 1) then
        local chicken = Tracker:ProviderCountForCode('chicken')
        if (chicken == 1) then
            count = count + 1
        end
        if (hook == 1) then
            count = count + 1
        end
    end
    local val = (count >= tonumber(n))
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

function has_atleast_n_weight(n)
    local count = Tracker:ProviderCountForCode('weight')
    local nuke = Tracker:ProviderCountForCode('nuke')
    local hook = Tracker:ProviderCountForCode('hook')
    if (nuke == 1) then
        if (hook == 1) then
            count = count + 1
        end
    end
    local darkstone = Tracker:ProviderCountForCode('darkstone')
    if (darkstone == 1) then
        local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
        if (leverMiddle == 1) then
            count = count + 1
        end
    end
    local boomerang = Tracker:ProviderCountForCode('boomerang')
    if (boomerang == 1) then
        local chicken = Tracker:ProviderCountForCode('chicken')
        if (chicken == 1) then
            count = count + 1
        end
        if (hook == 1) then
            count = count + 1
        end
    end
    local val = (count >= tonumber(n))
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

function has_atleast_n_items(n)
    local count = Tracker:ProviderCountForCode('item')
    local nuke = Tracker:ProviderCountForCode('nuke')
    local hook = Tracker:ProviderCountForCode('hook')
    if (nuke == 1) then
        if (hook == 1) then
            count = count + 1
        end
    end
    local darkstone = Tracker:ProviderCountForCode('darkstone')
    if (darkstone == 1) then
        local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
        if (leverMiddle == 1) then
            count = count + 1
        end
    end
    local burger = Tracker:ProviderCountForCode('burger')
    if (burger == 1) then
        local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
        if (leverMiddle == 1) then
            count = count + 1
        end
    end
    local boomerang = Tracker:ProviderCountForCode('boomerang')
    if (boomerang == 1) then
        local chicken = Tracker:ProviderCountForCode('chicken')
        if (chicken == 1) then
            count = count + 1
        end
        if (hook == 1) then
            count = count + 1
        end
    end
    local val = (count >= tonumber(n))
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end



function has_burger()
    local burger = Tracker:ProviderCountForCode('burger')
    if (burger == 1) then
        local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
        if (leverMiddle == 1) then
            return 1
        end
    end
    return 0
end

function has_darkstone()
    local darkstone = Tracker:ProviderCountForCode('darkstone')
    if (darkstone == 1) then
        local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
        if (leverMiddle == 1) then
            return 1
        end
    end
    return 0
end

function princess_portal_with_items()
    local portalMirror = Tracker:ProviderCountForCode('portalMirror')
    local vine = Tracker:ProviderCountForCode('vine')
    local chicken = Tracker:ProviderCountForCode('chicken')
    local sword = Tracker:ProviderCountForCode('sword')
    local hook = Tracker:ProviderCountForCode('hook')
    local waterGeyser = Tracker:ProviderCountForCode('waterGeyser')
    local bus = Tracker:ProviderCountForCode('bus')
    local statue = Tracker:ProviderCountForCode('statue')
    if (portalMirror == 1) then
        if (vine == 1) then
            return 1
        end
        if (chicken == 1) then
            if (sword == 1) then
                return 1
            end
            if (hook == 1) then
                return 1
            end
            if (waterGeyser == 1) then
                return 1
            end
            if (bus == 1) then
                return 1
            end
            if (statue == 1) then
                return 1
            end
        end
    end
    return 0
end

function princess_with_items()
    local princess = Tracker:ProviderCountForCode('princess')
    local hook = Tracker:ProviderCountForCode('hook')
    local button = Tracker:ProviderCountForCode('button')
    if (princess == 1) then
        local portal = princess_portal_with_items()
        if (portal == 1) then
            return 1
        end
        if (hook == 1) then
            return 1
        end
        if (button == 1) then
            return 1
        end
    end
    return 0
end

function leave_castle_with_items()
    local castleGate = Tracker:ProviderCountForCode('castleGate')
    local bus = Tracker:ProviderCountForCode('bus')
    local statue = Tracker:ProviderCountForCode('statue')
    local chicken = Tracker:ProviderCountForCode('chicken')
    local castleFloor = Tracker:ProviderCountForCode('castleFloor')
    local hook = Tracker:ProviderCountForCode('hook')
    local fishingBridge = Tracker:ProviderCountForCode('fishingBridge')
    local cannonS = Tracker:ProviderCountForCode('cannonS')
    if (castleGate >= 1) then
        return 1
    end
    if (cannonS == 1) then
        return 1
    end
    if (chicken == 1) then
        if (bus == 1) then
            return 1
        end
        if (statue == 1) then
            return 1
        end
    end
    if (fishingBridge == 1) then
        if (hook == 1) then
            return 1
        end
        if (castleFloor == 1) then
            return 1
        end
    end
    return 0
end

function leave_castle_with_items_no_cannon()
    local castleGate = Tracker:ProviderCountForCode('castleGate')
    local bus = Tracker:ProviderCountForCode('bus')
    local statue = Tracker:ProviderCountForCode('statue')
    local chicken = Tracker:ProviderCountForCode('chicken')
    local castleFloor = Tracker:ProviderCountForCode('castleFloor')
    local hook = Tracker:ProviderCountForCode('hook')
    local fishingBridge = Tracker:ProviderCountForCode('fishingBridge')
    if (castleGate >= 1) then
        return 1
    end
    if (chicken == 1) then
        if (bus == 1) then
            return 1
        end
        if (statue == 1) then
            return 1
        end
    end
    if (fishingBridge == 1) then
        if (hook == 1) then
            return 1
        end
        if (castleFloor == 1) then
            return 1
        end
    end
    return 0
end
--