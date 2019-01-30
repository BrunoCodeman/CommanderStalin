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

DefineAnimations("animations-elefant", {
    Still = {"frame 0", "wait 1", },
    Move = {"unbreakable begin", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "wait 1", "frame 0", "move 1", "wait 1", 
        "frame 0", "move 1", "unbreakable end", "wait 1", },
    Attack = {"unbreakable begin", "frame 0", "wait 10",
        "frame 0", "sound bazoo-attack", "attack", "wait 1",
        "frame 5", "wait 10",
        "frame 0", "wait 25", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 10", "wait 10", "unbreakable end", 
        "wait 1",},
    })


DefineIcon({
	Name = "ico-elefant",
	Size = {46, 38},
	Frame = 0,
	File = "units/elefant/ico_elefant.png"})

MakeSound("artil-ready", GetCurrentLuaPath().."/artil.ready.wav")
MakeSound("artil-help", GetCurrentLuaPath().."/artil.underattack.wav")

DefineUnitType("unit-elefant", {
    Name = "Elefant",
    Image = {"file", "units/elefant/unit_elefant.png", "size", {160, 160}},
    Offset = {0, -10},
    Shadow = {"file", "units/elefant/unit_elefant_s.png", "size", {160, 160}},
    Animations = "animations-elefant",
    Icon = "ico-elefant",
    EnergyValue = 11000,
    MagmaValue = 12000,
    RepairHp = 1,
    Speed = 7,
    HitPoints = 250,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {64, 64},
    SightRange = 5,
    Armor = 30,
    BasicDamage = 11,
    PiercingDamage = 50,
    Missile = "missile-bazoo",
    Priority = 20,
    AnnoyComputerFactor = 65,
    Points = 25,
    ExplodeWhenKilled = "missile-64x64-explosion",
    Type = "land",
    ComputerReactionRange = 10,
    PersonReactionRange = 10,
    RightMouseAction = "attack",
    LandUnit = true,
    SelectableByRectangle = true,
    CanAttack = true,
    CanTargetLand = true,
    CanTargetAir = true,
    NumDirections = 8,
    MaxAttackRange = 8,
    Sounds = {
        "ready", "artil-ready",
        "help", "artil-help"
        }
})

DefineAllow("unit-elefant", AllowAll)

DefineCommonButtons({"unit-elefant"})

DefineButton({
    Pos = 6, Level = 0, Icon = "ico-elefant", Action = "train-unit",
    Value = "unit-elefant", Hint = "BUILD ~!ELEFANT!",
    ForUnit = {"unit-vfac"}})


