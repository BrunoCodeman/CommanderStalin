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

DefineAnimations("animations-kv2", {
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
    Attack = {"unbreakable begin", "frame 0", "wait 4", 
        "frame 5", "sound bazoo-attack", "attack", "wait 1", 
        "frame 0", "wait 2", 
        "frame 5", "attack", "wait 1", 
        "frame 0", "wait 59", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 10", "wait 5", "frame 15", "wait 5", "frame 20", "unbreakable end", "wait 20", },
    })

DefineIcon({
	Name = "ico-kv2",
	Size = {46, 38},
	Frame = 0,
	File = "units/kv2/ico-kv2.png"})

MakeSound("rtank-ready", GetCurrentLuaPath().."/rtank.ready.wav")
MakeSound("rtank-help", GetCurrentLuaPath().."/rtank.underattack.wav")

DefineUnitType("unit-kv2", {
    Name = "KV-2 ",
    Image = {"file", "units/kv2/unit_kv2.png", "size", {96, 96}},
    Shadow = {"file", "units/kv2/unit_kv2_s.png", "size", {96, 96}},
    Animations = "animations-kv2",
    Icon = "ico-kv2",
    EnergyValue = 5600,
    MagmaValue = 2800,
    RepairHp = 1,
    Speed = 20,
    HitPoints = 50,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {64, 64},
    SightRange = 5,
    Armor = 15,
    BasicDamage = 4,
    PiercingDamage = 30,
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
        "selected", "grenadier-selected",
        "acknowledge", "grenadier-acknowledge",
        "ready", "rtank-ready",
        "help", "rtank-help"
        }
})

DefineAllow("unit-kv2", AllowAll)

DefineButton({
    Pos = 5, Level = 0, Icon = "ico-kv2", Action = "train-unit",
    Value = "unit-kv2", Hint = "BUILD ~!KV2!",
    ForUnit = {"unit-vfac"}})

DefineCommonButtons({"unit-kv2"})



