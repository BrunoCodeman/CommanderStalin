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
	Name = "icon-sovfabrica",
	Size = {46, 38},
	Frame = 0,
	File = GetCurrentLuaPath().."/sovfabrica_i.png"})

DefineConstruction("construction-sovfabrica", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 1},
		{Percent = 10, File = "main", Frame = 2},
		{Percent = 20, File = "main", Frame = 3},
		{Percent = 30, File = "main", Frame = 4},
		{Percent = 40, File = "main", Frame = 5},
		{Percent = 50, File = "main", Frame = 6},
		{Percent = 60, File = "main", Frame = 7},
		{Percent = 70, File = "main", Frame = 8},
		{Percent = 80, File = "main", Frame = 9},
		{Percent = 90, File = "main", Frame = 9},
	}
    })

DefineAnimations("animations-sovfabrica", {
    Still = {"frame 15", "wait 5", "frame 16", "wait 5", "frame 17", "wait 5", "frame 18", "wait 5", "frame 19", 
        "wait 100", "frame 18", "wait 5", "frame 17", "wait 5", "frame 16", "wait 5", "frame 15", "wait 300", },
    Train = {"frame 10", "wait 5", "frame 11", "wait 5", "frame 12", "wait 5", "frame 13", "wait 5", "frame 14", 
        "wait 15", },
    })

MakeSound("vfac-selected", GetCurrentLuaPath().."/sfx_vfac.select.wav")
MakeSound("vfac-ready", GetCurrentLuaPath().."/vehicle.factory.completed.wav")
MakeSound("vfac-help", GetCurrentLuaPath().."/vehicle.factory.underattack.wav")
MakeSound("vfac-dead", GetCurrentLuaPath().."/sfx_vfac.die.wav")

DefineUnitType("unit-sovfabrica", {
    Name = "Fábrica Soviética",
    Image = {"file", GetCurrentLuaPath().."/sovfabrica.png", "size", {256, 254}},
    Shadow = {"file", GetCurrentLuaPath().."/sovfabrica_s.png", "size", {256, 254}},
    Animations = "animations-sovfabrica",
    Icon = "icon-sovfabrica",
    EnergyValue = 6000,
    MagmaValue = 4000,
    RepairHp = 2,
    Construction = "construction-sovfabrica",
    Speed = 0,
    HitPoints = 550,
    DrawLevel = 25,
    TileSize = {7, 5},
    BoxSize = {220, 156},
    SightRange = 2,
    Armor = 30,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 35,
    AnnoyComputerFactor = 45,
    Points = 200,
    DeathExplosion = largeExplosion,
    Corpse = "build-dead-vfac",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    MaxEnergyUtilizationRate = 60,
    MaxMagmaUtilizationRate = 30,
    CanHarvestFrom = true,
    Sounds = {
        "selected", "vfac-selected",
        "ready", "vfac-ready",
        "help", "vfac-help",
        "dead", "vfac-dead"}
})

DefineAnimations("animations-dead-sovfabrica", {
    Death = {"unbreakable begin", "wait 1", "frame 0", "wait 2000", 
        "frame 1", "wait 200", "frame 2", "wait 200", "frame 2", "wait 1", 
        "unbreakable end", "wait 1", },
    })

DefineUnitType("build-dead-sovfabrica", {
    Name = "FactoryCrater",
    Image = {"file", GetCurrentLuaPath().."/vehicle_c.png", "size", {256, 254}},
    Animations = "animations-dead-sovfabrica",
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

DefineAllow("unit-sovfabrica", AllowAll)

DefineButton({
    Pos = 3, Level = 2, Icon = "icon-vfac_b", Action = "build",
    Value = "unit-sovfabrica", Hint = "BUILD ~!SOVFABRICA",
    ForUnit = {"unit-sovobrero"}})
