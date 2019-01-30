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

DefineAnimations("animations-poli", {
    Still = {"frame 0", "wait 1", },
    Attack= {"unbreakable begin", 
        "frame 0", "wait 1", "attack", "sound assault-attack",
        "frame 0", "wait 1", "frame 0","wait 15",
	"unbreakable end", "wait 1", },
    Move = {"unbreakable begin", 
        "frame 5", "move 5", "wait 1", "frame 5", "move 4", "wait 1",
        "frame 5", "move 5", "wait 1", "frame 5", "move 4", "wait 1",
        "frame 5", "move 4", "wait 1", "frame 5", "move 5", "wait 1",
        "frame 5", "move 5", "wait 1",
	"unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 0", "wait 15","unbreakable end", "wait 1",},
    })

DefineIcon({
	Name = "ico-poli",
	Size = {46, 38},
	Frame = 0,
	File = "units/poli/ico_poli.png"})

DefineMissileType("missile-jet", {
	File = "units/yak3/missile.png",
	Size = {96, 96}, Frames = 5, NumDirections = 8,
	ImpactSound = "rocket-impact", DrawLevel = 150,
	Class = "missile-class-point-to-point", Sleep = 1, Speed = 16, Range = 16})

MakeSound("jet-ready", GetCurrentLuaPath().."/jet.ready.wav")
MakeSound("jet-help", GetCurrentLuaPath().."/jet.underattack.wav")

DefineUnitType("unit-poli", {
    Name = "Caza Polikarpov",
    Image = {"file", "units/poli/unit_poli.png", "size", {128, 128}},
    Shadow = {"file", "units/poli/unit_poli_s.png", "size", {128, 128},
                  "offset", {5, 128}},
    Animations = "animations-poli",
    Icon = "ico-poli",
    EnergyValue = 7500,
    MagmaValue = 2700,
    Speed = 50,
    HitPoints = 50,
    DrawLevel = 125,
    TileSize = {3, 3},
    BoxSize = {96, 96},
    SightRange = 6,
    Armor = 16,
    BasicDamage = 4,
    PiercingDamage = 28,
    Missile = "missile-jet",
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
    MaxAttackRange = 4,
    Sounds = {
        "selected", "grenadier-selected",
        "acknowledge", "grenadier-acknowledge",
        "ready", "jet-ready",
        "help", "jet-help"
        }
})

DefineAllow("unit-poli", AllowAll)


DefineButton({
    Pos = 1, Level = 0, Icon = "ico-poli", Action = "train-unit",
    Value = "unit-poli", Hint = "BUILD ~!POLI",
    ForUnit = {"unit-avionfab"}})

DefineCommonButtons({"unit-poli"})



