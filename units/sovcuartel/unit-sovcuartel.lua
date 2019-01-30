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


DefineIcon({
	Name = "icon-sovcuartel",
	Size = {46, 38},
	Frame = 0,
	File = GetCurrentLuaPath().."/sovcuartel_i.png"})

DefineConstruction("construction-sovcuartel", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 0},
		{Percent = 10, File = "main", Frame = 1},
		{Percent = 20, File = "main", Frame = 2},
		{Percent = 30, File = "main", Frame = 3},
		{Percent = 40, File = "main", Frame = 4},
		{Percent = 50, File = "main", Frame = 6},
		{Percent = 60, File = "main", Frame = 7},
		{Percent = 70, File = "main", Frame = 8},
		{Percent = 80, File = "main", Frame = 9},
		{Percent = 90, File = "main", Frame = 10}
	}
    })

DefineAnimations("animations-sovcuartel", {
    Still = {"frame 10", "wait 10", "frame 11", "wait 10", "frame 12", "wait 10",
             "frame 13", "wait 10", "frame 14", "wait 10",},
    Train = {"frame 15", "wait 3", "frame 16", "wait 5", "frame 17", "wait 5",
             "frame 18", "wait 5", "frame 19", "wait 3", },
    })

MakeSound("camp-selected", GetCurrentLuaPath().."/sfx_camp.select.wav")
MakeSound("camp-ready", GetCurrentLuaPath().."/training.camp.completed.wav")
MakeSound("camp-help", GetCurrentLuaPath().."/training.camp.underattack.wav")
MakeSound("camp-dead", GetCurrentLuaPath().."/sfx_camp.die.wav")

DefineUnitType("unit-sovcuartel", {
    Name = "Cuartel Soviético",
    Image = {"file", GetCurrentLuaPath().."/sovcuartel.png", "size", {224, 224}},
    Offset = {2, -7},
    Shadow = {"file", GetCurrentLuaPath().."/sovcuartel_s.png", "size", {224, 224}},
    Animations = "animations-sovcuartel",
    Icon = "icon-sovcuartel",
    EnergyValue = 4000,
    MagmaValue = 1000,
    RepairHp = 2,
    Construction = "construction-sovcuartel",
    Speed = 0,
    HitPoints = 500,
    DrawLevel = 25,
    TileSize = {7, 5},
    BoxSize = {220, 156},
    SightRange = 1,
    Armor = 25,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 30,
    AnnoyComputerFactor = 35,
    Points = 160,
    DeathExplosion = largeExplosion,
    Corpse = "build-dead-sovcuartel",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    MaxEnergyUtilizationRate = 40,
    MaxMagmaUtilizationRate = 20,
    CanHarvestFrom = true,
    Sounds = {
        "selected", "camp-selected",
        "ready", "camp-ready",
        "help", "camp-help",
        "dead", "camp-dead"}
})

DefineAnimations("animations-dead-sovcuartel", {
    Death = {"unbreakable begin", "wait 1", "frame 0", "wait 2000", 
        "frame 1", "wait 200", "frame 2", "wait 200", "frame 2", "wait 1", 
        "unbreakable end", "wait 1", },
    })

DefineUnitType("build-dead-sovcuartel", {
    Name = "CampCrater",
    Image = {"file", GetCurrentLuaPath().."/sovcuartel_c.png", "size", {224, 224}},
    Animations = "animations-dead-sovcuartel",
    Icon = "icon-cancel",
    Speed = 0,
    HitPoints = 999,
    DrawLevel = 10,
    TileSize = {7, 5},
    BoxSize = {220, 156},
    SightRange = 1,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 0,
    Type = "land",
    Building = true,
    Vanishes = true
})

DefineAllow("unit-sovcuartel", AllowAll)

DefineButton({
    Pos = 1, Level = 2, Icon = "icon-camp_b", Action = "build",
    Value = "unit-sovcuartel", Hint = "BUILD TRAINING ~!SOVCUARTEL",
    ForUnit = {"unit-sovobrero"}})


