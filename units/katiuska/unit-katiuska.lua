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
	Name = "ico-katiuska",
	Size = {46, 38},
	Frame = 0,
	File = GetCurrentLuaPath().."/ico_katiuska.png"})

DefineAnimations("animations-katiuska", {
    Still = {"frame 0", "wait 1", },
    Move = {"unbreakable begin", "frame 0", "move 4", "wait 2", 
        "frame 0", "move 4", "wait 2", "frame 0", "move 4", "wait 2", 
        "frame 0", "move 4", "wait 2", "frame 0", "move 4", "wait 2", 
        "frame 0", "move 4", "wait 2", "frame 0", "move 4", "wait 2", 
        "frame 0", "move 4", "wait 2", "frame 0", "unbreakable end", "wait 1", },
    Attack = {"unbreakable begin", "frame 5", "sound apcs-attack", "attack", "wait 2", 
        "frame 0", "wait 2", "frame 5", "wait 2", "frame 0", "wait 2", 
        "frame 5", "attack", "wait 2", "frame 0", "wait 2", 
        "frame 0", "wait 2", "frame 0", "wait 2", "frame 0", "wait 2", 
        "frame 0", "wait 2", "frame 0", "wait 2", "frame 0", "wait 2", 
        "frame 0", "wait 2", "frame 0", "wait 2", "frame 0", "wait 2", 
        "frame 0", "wait 2", "frame 0", "wait 2", "frame 0", "wait 2", 
        "frame 0", "wait 2", "frame 0", "unbreakable end", "wait 2", },
    Death = {"unbreakable begin", "frame 0", "wait 5", "frame 0", "wait 5", 
        "frame 0", "wait 5", "frame 0", "unbreakable end", "wait 5", },
    })

MakeSound("katiuska-selected", GetCurrentLuaPath().."/smolder_select.wav")
MakeSound("katiuska-acknowledge", GetCurrentLuaPath().."/smolder_action.wav")
MakeSound("katiuska-ready", GetCurrentLuaPath().."/smolder.completed.wav")
MakeSound("katiuska-help", GetCurrentLuaPath().."/smolder.underattack.wav")
MakeSound("katiuska-die", GetCurrentLuaPath().."/smolder_die.wav")
MakeSound("katiuska-attack", GetCurrentLuaPath().."/smolder_attack.wav")

DefineUnitType("unit-katiuska", {
    Name = "katiuska",
    Image = {"file", GetCurrentLuaPath().."/unit_katiuska.png", "size", {96, 96}},
    Shadow = {"file", GetCurrentLuaPath().."/unit_katiuska_s.png", "size", {96, 96}},
    Animations = "animations-katiuska",
    Icon = "ico-katiuska",
    Flip = true,
    EnergyValue = 4000,
    MagmaValue = 2000,
    Speed = 15,
    HitPoints = 200,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {96, 96},
    SightRange = 5,
    ComputerReactionRange = 5,
    PersonReactionRange = 5,
    Armor = 6,
    BasicDamage = 7,
    PiercingDamage = 5,
    Missile = "missile-none",
    MaxAttackRange = 14,
    Priority = 60,
    Points = 50,
    CanTransport = true,
    AttackFromTransporter = true,
    MaxOnBoard = 6,
    Type = "land",
    RepairHp = 2,
    RightMouseAction = "attack",
    ExplodeWhenKilled = "missile-160x128-explosion",
    LandUnit = true,
    CanAttack = true,
    CanTargetLand = true,
    SelectableByRectangle = true,
    MaxAttackRange = 25,
    Sounds = {
        "selected", "katiuska-selected",
        "acknowledge", "katiuska-acknowledge",
        "ready", "katiuska-ready",
        "help", "katiuska-help",
        "dead", "katiuska-die"}
})

DefineAllow("unit-katiuska", AllowAll)
