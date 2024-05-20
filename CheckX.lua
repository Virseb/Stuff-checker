local ExecCheck = {
  function(nam)
    if nam == "getfenv" then
      local s, err = pcall(getfenv)
      if s then return true else return false end
    elseif nam == "setfenv" then
      local s, err = pcall(function() setfenv(1, {}) end)
      if s then return true else return false end
    elseif nam == "loadstring" then
      local s, err = pcall(function() return loadstring("return true") end)
      if s then return true else return false end
    elseif nam == "Instance.new" then
      local s, err = pcall(function() return Instance.new("Part") end)
      if s then return true else return false end
    elseif nam == "require" then
      local s, err = pcall(function() return require(game) end)
      if s then return true else return false end
    elseif nam == "spawn" then
      local s, err = pcall(function() spawn(function() end) end)
      if s then return true else return false end
    elseif nam == "delay" then
      local s, err = pcall(function() delay(1, function() end) end)
      if s then return true else return false end
    elseif nam == "tick" then
      local s, err = pcall(tick)
      if s then return true else return false end
    elseif nam == "time" then
      local s, err = pcall(time)
      if s then return true else return false end
    elseif nam == "os.time" then
      local s, err = pcall(os.time)
      if s then return true else return false end
    elseif nam == "os.date" then
      local s, err = pcall(os.date)
      if s then return true else return false end
    elseif nam == "math.random" then
      local s, err = pcall(math.random)
      if s then return true else return false end
    elseif nam == "math.abs" then
      local s, err = pcall(function() return math.abs(-1) end)
      if s then return true else return false end
    elseif nam == "string.find" then
      local s, err = pcall(function() return string.find("hello", "e") end)
      if s then return true else return false end
    elseif nam == "table.insert" then
      local s, err = pcall(function() local t = {}; table.insert(t, 1) end)
      if s then return true else return false end
    elseif nam == "debug.getinfo" then
      local s, err = pcall(function() return debug.getinfo(1) end)
      if s then return true else return false end
    elseif nam == "debug.setmetatable" then
      local s, err = pcall(function() local t = {}; debug.setmetatable(t, {}) end)
      if s then return true else return false end
    elseif nam == "debug.getmetatable" then
      local s, err = pcall(function() local t = {}; return debug.getmetatable(t) end)
      if s then return true else return false end
    elseif nam == "syn.request" then
      local s, err = pcall(function() return syn.request({}) end)
      if s then return true else return false end
    elseif nam == "is_synapse_function" then
      local s, err = pcall(function() return is_synapse_function(function() end) end)
      if s then return true else return false end
    elseif nam == "checkcaller" then
      local s, err = pcall(checkcaller)
      if s then return true else return false end
    elseif nam == "hookfunction" then
      local s, err = pcall(function() hookfunction(print, function() end) end)
      if s then return true else return false end
    elseif nam == "getrawmetatable" then
      local s, err = pcall(function() return getrawmetatable({}) end)
      if s then return true else return false end
    elseif nam == "setreadonly" then
      local s, err = pcall(function() setreadonly({}, true) end)
      if s then return true else return false end
    elseif nam == "newcclosure" then
      local s, err = pcall(function() return newcclosure(function() end) end)
      if s then return true else return false end
    elseif nam == "getgenv" then
      local s, err = pcall(getgenv)
      if s then return true else return false end
    elseif nam == "setclipboard" then
      local s, err = pcall(function() setclipboard("test") end)
      if s then return true else return false end
    elseif nam == "printidentity" then
      local s, err = pcall(printidentity)
      if s then return true else return false end
    elseif nam == "writefile" then
      local s, err = pcall(function() writefile("test.txt", "content") end)
      if s then return true else return false end
    elseif nam == "readfile" then
      local s, err = pcall(function() return readfile("test.txt") end)
      if s then return true else return false end
    elseif nam == "delfile" then
      local s, err = pcall(function() delfile("test.txt") end)
      if s then return true else return false end
    elseif nam == "makefolder" then
      local s, err = pcall(function() makefolder("testfolder") end)
      if s then return true else return false end
    elseif nam == "delfolder" then
      local s, err = pcall(function() delfolder("testfolder") end)
      if s then return true else return false end
    elseif nam == "isfile" then
      local s, err = pcall(function() return isfile("test.txt") end)
      if s then return true else return false end
    elseif nam == "isfolder" then
      local s, err = pcall(function() return isfolder("testfolder") end)
      if s then return true else return false end
    elseif nam == "listfiles" then
      local s, err = pcall(function() return listfiles("") end)
      if s then return true else return false end
    elseif nam == "getconnections" then
      local s, err = pcall(function() return getconnections(game.ItemChanged) end)
      if s then return true else return false end
    elseif nam == "fireclickdetector" then
      local s, err = pcall(function() fireclickdetector(Instance.new("ClickDetector")) end)
      if s then return true else return false end
    elseif nam == "firesignal" then
      local s, err = pcall(function() firesignal(game.Changed) end)
      if s then return true else return false end
    elseif nam == "fireproximityprompt" then
      local s, err = pcall(function() fireproximityprompt(Instance.new("ProximityPrompt")) end)
      if s then return true else return false end
    elseif nam == "getcallingscript" then
      local s, err = pcall(getcallingscript)
      if s then return true else return false end
    elseif nam == "getsenv" then
      local s, err = pcall(function() return getsenv(Instance.new("LocalScript")) end)
      if s then return true else return false end
    elseif nam == "gethui" then
      local s, err = pcall(gethui)
      if s then return true else return false end
    elseif nam == "getloadedmodules" then
      local s, err = pcall(getloadedmodules)
      if s then return true else return false end
    elseif nam == "getgc" then
      local s, err = pcall(getgc)
      if s then return true else return false end
    elseif nam == "getreg" then
      local s, err = pcall(getreg)
      if s then return true else return false end
    elseif nam == "getupvalues" then
      local s, err = pcall(function() return getupvalues(function() end) end)
      if s then return true else return false end
    elseif nam == "setupvalue" then
      local s, err = pcall(function() setupvalue(function() end, 1, nil) end)
      if s then return true else return false end
    elseif nam == "getconstants" then
      local s, err = pcall(function() return getconstants(function() end) end)
      if s then return true else return false end
    elseif nam == "setconstant" then
      local s, err = pcall(function() setconstant(function() end, 1, nil) end)
      if s then return true else return false end
    elseif nam == "islclosure" then
      local s, err = pcall(function() return islclosure(function() end) end)
      if s then return true else return false end
    elseif nam == "getnamecallmethod" then
      local s, err = pcall(getnamecallmethod)
      if s then return true else return false end
    elseif nam == "setnamecallmethod" then
      local s, err = pcall(function() setnamecallmethod("Test") end)
      if s then return true else return false end
    elseif nam == "getthreadidentity" then
      local s, err = pcall(getthreadidentity)
      if s then return true else return false end
    elseif nam == "setthreadidentity" then
      local s, err = pcall(function() setthreadidentity(2) end)
      if s then return true else return false end
    elseif nam == "crypt.encrypt" then
      local s, err = pcall(function() return crypt.encrypt("key", "data") end)
      if s then return true else return false end
    elseif nam == "crypt.decrypt" then
      local s, err = pcall(function() return crypt.decrypt("key", "data") end)
      if s then return true else return false end
    elseif nam == "crypt.hash" then
      local s, err = pcall(function() return crypt.hash("data") end)
      if s then return true else return false end
    elseif nam == "crypt.generatekey" then
      local s, err = pcall(crypt.generatekey)
      if s then return true else return false end
    elseif nam == "bit.bxor" then
      local s, err = pcall(function() return bit.bxor(1, 2) end)
      if s then return true else return false end
    elseif nam == "bit.bor" then
      local s, err = pcall(function() return bit.bor(1, 2) end)
      if s then return true else return false end
    elseif nam == "bit.band" then
      local s, err = pcall(function() return bit.band(1, 2) end)
      if s then return true else return false end
    elseif nam == "bit.bnot" then
      local s, err = pcall(function() return bit.bnot(1) end)
      if s then return true else return false end
    elseif nam == "bit.lshift" then
      local s, err = pcall(function() return bit.lshift(1, 2) end)
      if s then return true else return false end
    elseif nam == "bit.rshift" then
      local s, err = pcall(function() return bit.rshift(1, 2) end)
      if s then return true else return false end
    elseif nam == "debug.traceback" then
      local s, err = pcall(function() return debug.traceback() end)
      if s then return true else return false end
    elseif nam == "debug.profilebegin" then
      local s, err = pcall(function()
        debug.profilebegin("test") end)
      if s then return true else return false end
    elseif nam == "debug.profileend" then
      local s, err = pcall(debug.profileend)
      if s then return true else return false end
    end
  end
}

function CheckAll()
  local successCount = 0
  local totalCount = 0
  local successfulFunctions = {}

  print("Checking exec...")

  for funcName, func in pairs(ExecCheck) do
    totalCount = totalCount + 1
    local success = func(funcName) -- Call the function with its name as an argument
    if success then
      print(funcName .. ": 🟩")
      successCount = successCount + 1
      table.insert(successfulFunctions, funcName)
    else
      print(funcName .. ": 🟥")
    end
  end

  print("Checked " .. totalCount .. " functions. " .. successCount .. "/" .. totalCount .. " functions work.")
  return successfulFunctions
end

return { CheckAll = CheckAll }
