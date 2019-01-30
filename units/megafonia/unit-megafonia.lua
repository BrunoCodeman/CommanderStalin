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

DefineAnimations("animations-megafonia", {
    Still = {"frame 0", "wait 2", "frame 1", "wait 2", "frame 2", "wait 2",
        "frame 3", "wait 2", "frame 4", "wait 2", "frame 5", "wait 2", 
        "frame 6", "wait 2", "frame 7", "wait 2", "frame 8", "wait 2", 
        "frame 9", "wait 2", "frame 10", "wait 2", "frame 11", "wait 2", 
        "frame 12", "wait 2", "frame 13", "wait 2", "frame 14", "wait 2", 
        "frame 15", "wait 2", },
    Death = {"unbreakable begin", "frame 0", "unbreakable end", "wait 1", },
    })


DefineAnimations("animations-dead_megafonia", {
    Death = {"unbreakable begin", "frame 0", "wait 2000",
        "frame 1", "unbreakable end", "wait 200", },
    })

DefineIcon({
	Name = "icon-megafonia",
	Size = {46, 38},
	Frame = 0,
	File = "units/megafonia/megafonia_i.png"})

DefineIcon({
	Name = "icon-cam_b",
	Size = {46, 38},
	Frame = 0,
	File = "units/megafonia/megafonia_i.png"})

MakeSound("camera-selected", "units/megafonia/sfx_camera.select.wav")
MakeSound("camera-ready", GetCurrentLuaPath().."/camera.completed.wav")
MakeSound("camera-help", GetCurrentLuaPath().."/camera.underattack.wav")

DefineConstruction("construction-megafonia", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 16},
		{Percent = 20, File = "main", Frame = 17},
		{Percent = 30, File = "main", Frame = 18},
		{Percent = 40, File = "main", Frame = 19},
		{Percent = 50, File = "main", Frame = 20},
		{Percent = 60, File = "main", Frame = 21},
		{Percent = 80, File = "main", Frame = 22},
		{Percent = 90, File = "main", Frame = 23}
	}
})

DefineUnitType("unit-megafonia", {
    Name = "Megafonia",
    Image = {"file", "units/megafonia/megafonia.png", "size", {32, 64}},
    Offset = {0, -16},
    Shadow = {"file", "units/megafonia/megafonia_s.png", "size", {64, 64}, "offset", {16,0}},
    Animations = "animations-megafonia",
    Icon = "icon-megafonia",
    EnergyValue = 800,
    MagmaValue = 300,
    RepairHp = 1,
    Construction = "construction-megafonia",
    Speed = 0,
    HitPoints = 5,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {28, 28},
    SightRange = 15,
    Armor = 0,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 20,
    AnnoyComputerFactor = 65,
    Points = 10,
    ExplodeWhenKilled = "missile-64x64-explosion",
    Corpse = "camera_destroyed",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    CanHarvestFrom = true,
    Sounds = {"selected", "camera-selected",
        "ready", "camera-ready",
        "help", "camera-help"
        }
})

DefineUnitType("camera_destroyed", {
    Name = "CameraCrater",
    Image = {"file", "units/megafonia/camera_c.png", "size", {32, 64}},
    Animations = "animations-dead_megafonia",
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

DefineAllow("unit-megafonia", AllowAll)

DefineButton({
    Pos = 5, Level = 1, Icon = "icon-cam_b", Action = "build",
    Value = "unit-megafonia", Hint = "BUILD ~!MEGAFONIA",
    ForUnit = {"unit-sovobrero", "unit-gerobrero"}})



