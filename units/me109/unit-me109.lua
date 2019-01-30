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

DefineAnimations("animations-me109", {
    Still = {"frame 0", "wait 10", "frame 0", "wait 10", "frame 0", "wait 600",
            "frame 0", "wait 10", "frame 0", "wait 300", 
            "rotate 1", "wait 10",},
    Move = {"unbreakable begin", "frame 10", "move 2", "wait 1",
        "frame 10", "move 2", "wait 1", "frame 10", "move 2", "wait 1",
        "frame 5", "move 2", "wait 1", "frame 5", "move 2", "wait 1",
        "frame 10", "move 2", "wait 1", "frame 10", "move 2", "wait 1",
        "frame 5", "move 2", "wait 1", "frame 5", "move 2", "wait 1",
        "frame 10", "move 2", "wait 1", "frame 10", "move 2", "wait 1",
        "frame 5", "move 2", "wait 1", "frame 5", "move 2", "wait 1",
        "frame 10", "move 2", "wait 1", "frame 10", "move 2", "wait 1",
        "frame 5", "move 2", "unbreakable end", "wait 1", },
    Attack = {"unbreakable begin", "frame 0", "wait 4", 
        "frame 5", "sound bazoo-attack", "attack", "wait 1", 
        "frame 0", "wait 2", 
        "frame 5", "attack", "wait 1", 
        "frame 0", "wait 59", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 10", "wait 5", "frame 15", 
        "wait 5", "frame 20", "unbreakable end", "wait 20", },
    })

DefineIcon({
	Name = "ico-me109",
	Size = {46, 38},
	Frame = 0,
	File = "units/me109/ico_me109.png"})

MakeSound("chopper-ready", GetCurrentLuaPath().."/chopper.ready.wav")
MakeSound("chopper-help", GetCurrentLuaPath().."/chopper.underattack.wav")

DefineUnitType("unit-me109", {
    Name = "me109",
    Image = {"file", "units/me109/unit_me109.png", "size", {128,128}},
    Shadow = {"file", "units/me109/unit_me109_s.png", "size", {128, 128}, "offset", {5,128}},
    Animations = "animations-me109",
    Icon = "ico-me109",
    EnergyValue = 7000,
    MagmaValue = 3000,
    Speed = 40,
    HitPoints = 50,
    DrawLevel = 125,
    TileSize = {1, 1},
    BoxSize = {64, 64},
    SightRange = 7,
    Armor = 20,
    BasicDamage = 5,
    PiercingDamage = 30,
    Missile = "missile-bazoo",
    Priority = 20,
    AnnoyComputerFactor = 65,
    Points = 15,
    ExplodeWhenKilled = "missile-64x64-explosion",
    Type = "fly",
    ComputerReactionRange = 10,
    PersonReactionRange = 10,
    RightMouseAction = "attack",
    AirUnit = true,
    SelectableByRectangle = true,
    CanAttack = true,
    CanTargetLand = true,
    CanTargetAir = true,
    NumDirections = 8,
    MaxAttackRange = 7,
    Sounds = {
        "selected", "grenadier-selected",
        "acknowledge", "grenadier-acknowledge",
        "ready", "chopper-ready",
        "help", "chopper-help"
    }
})

DefineAllow("unit-me109", AllowAll)

DefineButton({
    Pos = 3, Level = 0, Icon = "ico-me109", Action = "train-unit",
    Value = "unit-me109", Hint = "BUILD ~!ME109",
    ForUnit = {"unit-geravionfa"}})

DefineCommonButtons({"unit-me109"})



