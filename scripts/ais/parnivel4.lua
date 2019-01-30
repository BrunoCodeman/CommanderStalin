--	   ____       _______  __    ______       _     _   __   _
--	  / ___/     / _____/_/  /_  \___  \     / /   / / /  \ / /
--       / /__  _    \_____\ \   __/ / /_\ \_   / /_  / / / /\ \ /
--      /____/ /_/  /______/ /_/    /_/   \__\ /____//_/ /_/  \_/
--          
--       A soviet real-time strategy game.
--          This file is part of Commander Stalin.
--
--	cstalin.lua	-	Main configuration file of Commander Stalin.
--
--	(c) Copyright 2007-2008 by Antonio Becerro Matinez.
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
--

local player
local ai_pos
local ai_loop_pos

local function AiLoop(loop_funcs, loop_pos)
  local ret

  player = AiPlayer() + 1
  while (true) do
    ret = loop_funcs[loop_pos[player]]()
    if (ret) then
     break
    end
    loop_pos[player] = loop_pos[player] + 1
  end
  return true
end

function InitAiScripts_blitz()
  ai_pos      = {1, 1, 1, 1, 1, 1, 1, 1}
  ai_loop_pos = {1, 1, 1, 1, 1, 1, 1, 1}
  hotspotexists = nil
end

local ai_loop_funcs = {
  function() print("Looping !"); return false end,
  function() return AiForce(1, {"unit-regsov", "unit-sovguar", 8}) end,
  function() return AiWaitForce(1) end,  -- wait until attack party is completed
  function() return AiSleep(50*GameSettings.Difficulty) end,
  function() return AiAttackWithForce(1) end,
  function() ai_loop_pos[player] = 0; return false end,
}

local function HotSpotExists()
  if (hotspotexists == nil) then
    local hotspot = UnitTypeByIdent("unit-hotspot")
    local count = Players[PlayerNumNeutral].UnitTypesCount[hotspot.Slot]
    hotspotexists = (count ~= 0)
  end
  return hotspotexists
end

local function GetBuildOrder()
  local order = {}

  if (not HotSpotExists()) then
    order[1] = "unit-powerplant"
    order[2] = nil
  elseif (Players[AiPlayer()].MagmaStored < 300) then
    order[1] = "unit-magmapump"
    order[2] = "unit-powerplant"
  else
    order[1] = "unit-powerplant"
    order[2] = "unit-magmapump"
  end

  return order
end

local ai_funcs = {
  function() AiDebug(false) return false end,
  function() return AiSleep(AiGetSleepCycles()) end,

  -- Build magma pump or power plant first depending on resources
  function()
    order = GetBuildOrder()
    return AiNeed(order[1])
  end,
  function()
    order = GetBuildOrder()
    return AiWait(order[1])
  end,
  function()
    order = GetBuildOrder()
    if (order[2] ~= nil) then
      return AiNeed(order[2])
    else
      return false
    end
  end,
  function()
    order = GetBuildOrder()
    if (order[2] ~= nil) then
      return AiWait(order[2])
    else
      return false
    end
  end,

  function() return AiSet("unit-sovobrero", 3) end,
  function() return AiNeed("unit-kremlin") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiWait("unit-kremlin") end,

  function() return AiNeed("unit-sovcuartel") end,
  function() return AiNeed("unit-nukepowerplant") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiNeed("unit-sovfabrica") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiNeed("unit-powerplant") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiNeed("unit-powerplant") end,
  function() return AiNeed("unit-kremlin") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiNeed("unit-powerplant") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiWait("unit-gturret") end,
  function() return AiSet("unit-sovobrero", 4) end,

  -- Defense
  function() return AiForce(0, {"unit-regsov", 20}) end,
  function() return AiWaitForce(0) end, 

  function() return AiNeed("unit-powerplant") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiNeed("unit-sovcuartel") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-powerplant") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiNeed("unit-magmapump") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-powerplant") end,
  function() return AiNeed("unit-kremlin") end,
  function() return AiNeed("unit-nukepowerplant") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-gturret") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiNeed("unit-sovobrero") end,
  function() return AiSleep(150*GameSettings.Difficulty) end,

  -- Attack wave
  function() return AiForce(1, {"unit-regsov", 5}) end,
  function() return AiWaitForce(1) end,
  function() return AiSleep(50*GameSettings.Difficulty) end, 
  function() return AiAttackWithForce(1) end,

  -- Bigger attack wave
  function() return AiNeed("unit-magmapump") end,
  function() return AiForce(1, {"unit-regsov", 40, "unit-sovguar", 10, "unit-t34", 5}) end,
  function() return AiWaitForce(1) end, 
  function() return AiAttackWithForce(1) end,
  
    -- Bigger attack wave
  function() return AiNeed("unit-magmapump") end,
  function() return AiForce(2, {"unit-regsov", 60, "unit-sovguar", 20, "unit-t50", 10}) end,
  function() return AiWaitForce(2) end, 
  function() return AiAttackWithForce(2) end,

  function() return AiLoop(ai_loop_funcs, ai_loop_pos) end,
}

function AiBlitz()
--    print(AiPlayer() .. " position ".. ai_pos[AiPlayer() + 1]);
    return AiLoop(ai_funcs, ai_pos)
end

RegisterAi("parnivel4", "parnivel4", AiBlitz, InitAiScripts_blitz)



