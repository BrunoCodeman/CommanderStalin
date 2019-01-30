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
        Name = "ico-regsov",
        Size = {46, 38},
        Frame = 0,
        File = GetCurrentLuaPath().."/ico_regsov.png"})

DefineAnimations("animations-regsov", {
    Still = {"frame 0", "wait 1", },
    Move = {"unbreakable begin", "frame 5", "move 2", "wait 1", 
        "frame 5", "move 2", "wait 1", "frame 10", "move 2", "wait 1", 
        "frame 10", "move 2", "wait 1", "frame 15", "move 2", "wait 1", 
        "frame 15", "move 2", "wait 1", "frame 20", "move 2", "wait 1", 
        "frame 20", "move 2", "wait 1", "frame 5", "move 2", "wait 1", 
        "frame 5", "move 2", "wait 1", "frame 10", "move 2", "wait 1", 
        "frame 10", "move 2", "wait 1", "frame 15", "move 2", "wait 1", 
        "frame 15", "move 2", "wait 1", "frame 20", "move 2", "wait 1", 
        "frame 20", "move 2", "wait 1", "frame 20", "unbreakable end", "wait 1", },
    Attack = {"unbreakable begin", 
        "frame 25", "sound assault-attack", "attack", "wait 1", 
        "frame 0", "wait 1", "frame 25", "wait 1", "frame 0", "wait 1", 
        "frame 25", "wait 1", "frame 0", "wait 1", "frame 25", "wait 1", 
        "frame 0", "wait 1", "frame 25", "wait 1", "frame 0", "wait 1", 
        "frame 25", "attack", "wait 1", "frame 0", "wait 24", 
        "frame 0", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 30", "wait 5", "frame 35", "wait 5", 
        "frame 40", "wait 5", "frame 45", "unbreakable end", "wait 5", },
    })

MakeSound("assault-selected", GetCurrentLuaPath().."/assault_select.wav")
MakeSound("assault-acknowledge", GetCurrentLuaPath().."/assault_action.wav")
MakeSound("assault-ready", GetCurrentLuaPath().."/assault.unit.ready.wav")
MakeSound("assault-help", GetCurrentLuaPath().."/assault.unit.underattack.wav")
MakeSound("assault-die", GetCurrentLuaPath().."/assault_die.wav")
MakeSound("assault-attack", GetCurrentLuaPath().."/assault_attack.wav")

DefineUnitType("unit-regsov", {
    Name = "Soldado Soviético",
    Image = {"file", GetCurrentLuaPath().."/unit_regsov.png", "size", {64, 64}},
    Shadow = {"file", GetCurrentLuaPath().."/unit_regsov_s.png", "size", {64, 64}},
    Animations = "animations-regsov",
    Icon = "ico-regsov",
    Flip = true,
    EnergyValue = 1000,
    MagmaValue = 250,
    Speed = 10,
    HitPoints = 30,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {17, 28},
    RightMouseAction = "attack",
    SightRange = 6,
    ComputerReactionRange = 6,
    PersonReactionRange = 6,
    Armor = 3,
    BasicDamage = 4,
    PiercingDamage = 0,
    Missile = "missile-none",
    MaxAttackRange = 5,
    Priority = 60,
    Points = 50,
    Corpse = "unit-dead-body1",
    Type = "land",
    CanAttack = true,
    CanTargetLand = true,
    CanTargetAir = true,
    LandUnit = true,
    Organic = true,
    SelectableByRectangle = true,
    Sounds = {
        "selected", "assault-selected",
        "acknowledge", "assault-acknowledge",
        "ready", "assault-ready",
        "help", "assault-help",
        "dead", "assault-die"}
})
DefineHumanCorpse("assault", nil, true)

DefineAllow("unit-regsov", AllowAll)
