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

-- The list of registered AIs in BOS
-- Every AI has an entry name: {internal_name, name, fun, initfun}
-- See at RegisterAi() for a description what these are
local AiList = {}

function GetAiList()
  return AiList
end

-- Function to register an AI to BOS
-- Parameters:
-- internal_name : Internal name of the Ai (without leading "ai-"
-- name          : Name of the AI the Player sees and which gets translated
-- fun           : main AI function
-- initfun       : initialization function, can be obmitted
function RegisterAi(internal_name, name, fun, initfun)
  DefineAi("ai-" .. internal_name, "ai-" .. internal_name, fun)
  AiList[name] = {internal_name, name, fun, initfun}
end

DefineAiHelper(
  --
  -- Unit can build which buildings.
  --
  {"build", "unit-sovobrero",
   "unit-avionfab", "unit-magmapump", "unit-sovcuartel",
   "unit-powerplant", "unit-hospital", "unit-sovfabrica", "unit-kremlin", "unit-gturret", "unit-troskremlin",
   "unit-megafonia", "unit-cannon", "unit-nukepowerplant", "unit-radar"},

  {"build", "unit-gerobrero",
   "unit-geravionfab", "unit-magmapump", "unit-gercuartel",
   "unit-powerplant", "unit-hospital", "unit-gerfabrica", "unit-cancilleria", "unit-gturret",
   "unit-megafonia", "unit-cannon", "unit-nukepowerplant", "unit-radar", "unit-v2"},
  --
  -- Building can train which units.
  --
  {"train", "unit-kremlin", "unit-sovobrero"},
  {"train", "unit-cancilleria", "unit-gerobrero"},
  {"train", "unit-sovcuartel", "unit-sovobrero", "unit-regsov", "unit-sovguar",},
  {"train", "unit-gercuartel", "unit-gerobrero", "unit-gerreg", "unit-gerpes",},
  {"train", "unit-hospital", "unit-medic"},
  {"train", "unit-sovfabrica", "unit-camion", "unit-katiuska", "unit-t34", "unit-t50"},
  {"train", "unit-gerfabrica", "unit-camion", "unit-buggy", "unit-tiger1"},
  {"train", "unit-avionfab", "unit-yak3"},
  {"train", "unit-geravionfab", "unit-me109", "unit-me261"},
  --
  -- Unit can repair which units.
  --
  {"repair", "unit-sovobrero",
   "unit-avionfab", "unit-magmapump", "unit-sovcuartel", "unit-camion",
   "unit-powerplant", "unit-hospital", "unit-sovfabrica", "unit-kremlin", "unit-troskremlin", "unit-gturret",
   "unit-nukepowerplant", "unit-radar"},

  {"repair", "unit-gerobrero",
   "unit-geravionfab", "unit-magmapump", "unit-gercuartel", "unit-camion",
   "unit-powerplant", "unit-hospital", "unit-gerfabrica", "unit-cancilleria", "unit-gturret",
   "unit-nukepowerplant", "unit-radar",  "unit-v2"},
  --
  -- Reduce unit limits.
  --
  {"unit-limit", "unit-magmapump", "food"})

-- Execute all AI init scripts
function InitAiScripts()
  for key,value in next,AiList do
    -- check if this AI actually has an init script
    if (value[4] ~= nil) then
      value[4]()
    end
  end
end

-- Find and load all Ais
local list
local i
local f
list = ListFilesInDirectory("scripts/ais/")

for i,f in ipairs(list) do
  if(string.find(f, "^.*%.lua$")) then
    print("Loading AI: " .. f)
    Load("scripts/ais/" .. f)
  end
end

-- Map default to rush for now
RegisterAi("default", "default", AiRush, InitAiScripts_rush)

