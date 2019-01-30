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

DefineAnimations("animations-t50", {
    Still = {"frame 0", "wait 1", },
    Move = {"unbreakable begin", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1", 
        "frame 0", "move 2", "unbreakable end", "wait 1", },
    Attack = {"unbreakable begin", "frame 0", "wait 10", 
        "frame 5", "sound bazoo-attack", "attack", "wait 2", 
        "frame 10", "wait 4", "frame 0", "wait 49", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 15", "wait 4", 
        "frame 20", "wait 2", "frame 25", "wait 2", "frame 30", "wait 2", 
        "frame 35", "unbreakable end", "wait 2", },
    })

DefineIcon({
	Name = "ico-t50",
	Size = {48, 39},
	Frame = 0,
	File = "units/t50/ico_t50.png"})

MakeSound("tank-ready", GetCurrentLuaPath().."/tank.ready.wav")
MakeSound("tank-help", GetCurrentLuaPath().."/tank.underattack.wav")

DefineUnitType("unit-t50", {
    Name = "T50",
    Image = {"file", "units/t50/unit_t50.png", "size", {96, 96}},
    Shadow = {"file", "units/t50/unit_t50_s.png", "size", {96, 96}},
    Animations = "animations-t50",
    Icon = "ico-t50",
    EnergyValue = 8000,
    MagmaValue = 5000,
    RepairHp = 1,
    Speed = 12,
    HitPoints = 200,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {64, 64},
    SightRange = 6,
    Armor = 20,
    BasicDamage = 10,
    PiercingDamage = 40,
    Missile = "missile-bazoo",
    Priority = 20,
    AnnoyComputerFactor = 65,
    Points = 15,
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
    MaxAttackRange = 6,
    Sounds = {
        "selected", "assault-selected",
        "acknowledge", "assault-acknowledge",
        "ready", "tank-ready",
        "help", "tank-help"
        }
})

DefineAllow("unit-t50", AllowAll)

DefineButton({
    Pos = 4, Level = 0, Icon = "ico-t50", Action = "train-unit",
    Value = "unit-t50", Hint = "BUILD ~!T50",
    ForUnit = {"unit-t50"}})

DefineCommonButtons({"unit-t50"})




