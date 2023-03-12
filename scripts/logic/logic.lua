-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:
function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end
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
function canBreakHoles()
    return (has("debla") or has("weight") or has("aubade") or has("mirabras") or has("cantina") or has("cante") or has("taranto") or has("solea") 
    or has("seguiriya") or has("saeta") or has("companillero") or has("companillero") or has("ruby") 
     or has("lorquiana") or has("zambra") or has("zarabanda") or has("romance") or has("tirana") or has("tiento") or has("lorquiana") 
     or has("verdiales"))
  end
  

function pillar()
return (has("debla") or has("taranto") or has("ruby"))
end  
function speed()
    return (has("wheel") or has("dawn"))
  end
