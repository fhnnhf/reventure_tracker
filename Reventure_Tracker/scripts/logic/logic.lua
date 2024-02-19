-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:
function has_more_then_n_consumable(n)
    local count = Tracker:ProviderCountForCode('consumable')
    local val = (count > tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_more_then_n_consumable: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

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

function has_atleast_n_weight(n)
    local count = Tracker:ProviderCountForCode('weight')
    local nuke = Tracker:ProviderCountForCode('nuke')
    if (nuke == 1) then
        local hook = Tracker:ProviderCountForCode('hook')
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
    if (nuke == 1) then
        local hook = Tracker:ProviderCountForCode('hook')
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
    local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
    if (burger == 1) then
        if (leverMiddle == 1) then
            return 1
        end
    end
    return 0
end

function has_darkstone()
    local darkstone = Tracker:ProviderCountForCode('darkstone')
    local leverMiddle = Tracker:ProviderCountForCode('leverMiddle')
    if (darkstone == 1) then
        if (leverMiddle == 1) then
            return 1
        end
    end
    return 0
end

function princess_portal_with_items()
    local portal = Tracker:ProviderCountForCode('portal')
    local vine = Tracker:ProviderCountForCode('vine')
    local chicken = Tracker:ProviderCountForCode('chicken')
    local sword = Tracker:ProviderCountForCode('sword')
    local hook = Tracker:ProviderCountForCode('hook')
    local waterGeyser = Tracker:ProviderCountForCode('waterGeyser')
    if (portal == 1) then
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