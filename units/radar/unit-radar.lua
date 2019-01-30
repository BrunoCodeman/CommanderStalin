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

DefineAnimations("animations-radar", {
    Still = {"frame 0", "wait 4", "frame 1", "wait 4", "frame 2", "wait 4",
        "frame 3", "wait 4", "frame 4", "wait 4", "frame 5", "wait 4", 
        "frame 6", "wait 4", "frame 7", "wait 4", },
    Death = {"unbreakable begin", "frame 0", "wait 1", "frame 1", "wait 10",
        "frame 1", "unbreakable end", "wait 10", },
    })

DefineIcon({
	Name = "icon-radar",
	Size = {46, 38},
	Frame = 0,
	File = "units/radar/radar_i.png"})

DefineIcon({
	Name = "icon-radar_b",
	Size = {46, 38},
	Frame = 0,
	File = "units/radar/radar_i.png"})

MakeSound("radar-selected", GetCurrentLuaPath().."/sfx_rdar.select.wav")
MakeSound("radar-ready", GetCurrentLuaPath().."/radar.completed.wav")
MakeSound("radar-help", GetCurrentLuaPath().."/radar.underattack.wav")

DefineConstruction("construction-radar", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 11},
		{Percent = 50, File = "main", Frame = 10},
	}
})

DefineUnitType("unit-radar", {
    Name = "Radar",
    Image = {"file", "units/radar/radar.png", "size", {64, 64}},
    Offset = {12, -16},
    Shadow = {"file", "units/radar/radar_s.png", "size", {64, 64}},
    Animations = "animations-radar",
    Icon = "icon-radar",
    EnergyValue = 1000,
    MagmaValue = 500,
    RepairHp = 1,
    Construction = "construction-radar",
    Speed = 0,
    HitPoints = 5,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {32, 28},
    SightRange = 3,
    Armor = 0,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 20,
    AnnoyComputerFactor = 65,
    Points = 10,
    ExplodeWhenKilled = "missile-64x64-explosion",
    Corpse = "radar_destroyed",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    NumDirections = 1,
    RadarRange = 40,
    CanHarvestFrom = true,
    Sounds = {
        "selected", "radar-selected",
        "ready", "radar-ready",
        "help", "radar-help"
        }
})

DefineUnitType("radar_destroyed", {
    Name = "RadarWreck",
    Image = {"file", "units/radar/radar.png", "size", {64, 64}},
    Animations = "animations-radar",
    Icon = "icon-cancel",
    Speed = 0,
    HitPoints = 999,
    DrawLevel = 10,
    TileSize = {1, 1},
    BoxSize = {28, 28},
    SightRange = 1,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 0,
    Type = "land",
    Building = true,
    Vanishes = true
})

DefineAllow("unit-radar", AllowAll)

DefineButton({
    Pos = 4, Level = 1, Icon = "icon-radar_b", Action = "build",
    Value = "unit-radar", Hint = "BUILD ~!RADAR",
    ForUnit = {"unit-sovobrero", "unit-gerobrero"}})



