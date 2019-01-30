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


Load("scripts/uilayout.lua")

HandleCommandKey = HandleEditorIngameCommandKey

-- Set which icons to display
SetEditorSelectIcon("icon-patrol")
SetEditorUnitsIcon("icon-assault")

-- Start location unit
DefineIcon({
  Name = "icon-start-location",
  Size = {32, 32},
  Frame = 0,
  File = "ui/x_startpoint.png"})
DefineUnitType("unit-start-location", {
  Name = "Start Location",
  Image = {"file", "ui/x_startpoint.png", "size", {32, 32}},
  Animations = "animations-building", Icon = "icon-start-location",
  Speed = 0, HitPoints = 0, DrawLevel = 0, TileSize = {1, 1},
  BoxSize = {31, 31}, SightRange = 0, BasicDamage = 0, PiercingDamage = 0,
  Missile = "missile-none", Priority = 0, Type = "land",
 })
SetEditorStartUnit("unit-start-location")

-- editor-unit-types a sorted list of unit-types for the editor.
-- FIXME: this is only a temporary hack, for better sorted units.
local editor_types = {
  "unit-hotspot",
  "unit-weakhotspot",
  "unit-medic",
  "unit-magmapump",
  "unit-cannon",
  "unit-powerplant",
  "unit-nukepowerplant",
  "unit-hosp",
  "unit-gturret",
  "unit-radar",
  "unit-tree",
  "unit-tree02",
  "unit-tree03",
  "unit-tree04",
  "unit-rock-1",
  "unit-rock-2",
  "unit-rock-3",
  "unit-rock-4",
  "unit-rock-5",
  "unit-rock-6",
  "unit-morel-1",
  "unit-morel-2",
  "unit-morel-3",
  "unit-morel-4",
  "unit-tiger1",
  "unit-t34",
  "unit-cancilleria",
  "unit-katiuska",
  "unit-t50",
  "unit-regsov",
  "unit-me261",
  "unit-yak3",
  "unit-me109",
  "unit-avionfab",
  "unit-sovobrero",
  "unit-gerobrero",
  "unit-geravionfa",
  "unit-kremlin",
  "unit-troskremlin",
  "unit-sovcuartel",
  "unit-gercuartel",
  "unit-sovguar",
  "unit-gerpes",
  "unit-gerreg",
  "unit-gerfabrica",
  "unit-sovfabrica",
  "unit-camion",
  "unit-v2",
  "unit-megafonia",
  "unit-agua2",
  "unit-elefant",
  "unit-bf110",
  "unit-pe2",
  "unit-poli",
  "unit-kv2",

}

Editor.UnitTypes:clear()
for key,value in ipairs(editor_types) do
  Editor.UnitTypes:push_back(value)
end

