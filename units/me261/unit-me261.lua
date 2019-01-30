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

DefineAnimations("animations-me261", {
    Still = {"frame 0", "wait 1", },
    Attack= {"unbreakable begin", 
        "frame 0", "wait 5", "attack",
        "frame 0", "wait 1", "frame 0","wait 35",
	"unbreakable end", "wait 1", },
    Move = {"unbreakable begin", 
        "frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1", 
	"frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
        "frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1", 
	"frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
        "frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1", 
        "frame 5", "move 2", "wait 1",
	"unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 0", "wait 15","unbreakable end", "wait 1",},
    })

DefineIcon({
	Name = "ico-me261",
	Size = {46, 38},
	Frame = 0,
	File = "units/me261/ico_me261.png"})

DefineMissileType("missile-bomber", {
	File = "units/me261/missile.png",
	Size = {32, 32}, Frames = 5, NumDirections = 8,
	ImpactSound = "rocket-impact", DrawLevel = 150,
	Class = "missile-class-point-to-point", Sleep = 1, Speed = 16, Range = 16})

MakeSound("bomber-ready", GetCurrentLuaPath().."/bomber.ready.wav")
MakeSound("bomber-help", GetCurrentLuaPath().."/bomber.underattack.wav")

DefineUnitType("unit-me261", {
    Name = "me261",
    Image = {"file", "units/me261/unit_me261.png", "size", {128, 128}},
    Shadow = {"file", "units/me261/unit_me261_s.png", "size", {128, 128}, "offset", {5, 128}},
    Animations = "animations-me261",
    Icon = "ico-me261",
    EnergyValue = 14000,
    MagmaValue = 9000,
    Speed = 80,
    HitPoints = 50,
    DrawLevel = 125,
    TileSize = {2, 2},
    BoxSize = {64, 64},
    SightRange = 7,
    Armor = 20,
    BasicDamage = 50,
    PiercingDamage = 30,
    Missile = "missile-bomber",
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
        "ready", "bomber-ready",
        "help", "bomber-help"
        }
})

DefineAllow("unit-me261", AllowAll)

DefineButton({
    Pos = 2, Level = 0, Icon = "ico-me261", Action = "train-unit",
    Value = "unit-me261", Hint = "BUILD ~!ME261",
    ForUnit = {"unit-geravionfa"}})

DefineCommonButtons({"unit-me261"})



