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
	Name = "icon-gerpes",
	Size = {46, 38},
	Frame = 0,
	File = GetCurrentLuaPath().."/ico_gerpes.png"})

DefineAnimations("animations-gerpes", {
    Still = {"frame 0", "wait 1", },
    Move = {"unbreakable begin", "frame 5", "move 2", "wait 2", 
        "frame 5", "move 2", "wait 1", "frame 5", "move 2", "wait 2", 
        "frame 5", "move 2", "wait 1", "frame 10", "move 2", "wait 2", 
        "frame 10", "move 2", "wait 1", "frame 10", "move 2", "wait 2", 
        "frame 10", "move 2", "wait 1", "frame 15", "move 2", "wait 2", 
        "frame 15", "move 2", "wait 1", "frame 15", "move 2", "wait 2", 
        "frame 15", "move 2", "wait 1", "frame 20", "move 2", "wait 2", 
        "frame 20", "move 2", "wait 1", "frame 20", "move 2", "wait 2", 
        "frame 20", "move 2", "wait 1", "frame 20", "unbreakable end", "wait 1", },
    Attack = {"unbreakable begin", "frame 25", "wait 2", 
        "frame 30", "sound bazoo-attack", "attack", "wait 2", 
        "frame 35", "sound bazoo-attack", "wait 2", "frame 0", "wait 150", 
        "frame 0", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 40", "wait 2", "frame 45", "wait 2", 
        "frame 50", "wait 2", "frame 55", "unbreakable end", "wait 2", },
    })

MakeSound("bazoo-selected", GetCurrentLuaPath().."/bazoo_select.wav")
MakeSound("bazoo-acknowledge", GetCurrentLuaPath().."/bazoo_action.wav")
MakeSound("bazoo-ready", GetCurrentLuaPath().."/bazoo.ready.wav")
MakeSound("bazoo-help", GetCurrentLuaPath().."/bazoo.underattack.wav")
MakeSound("bazoo-die", GetCurrentLuaPath().."/bazoo_die.wav")
MakeSound("bazoo-attack", GetCurrentLuaPath().."/bazoo_attack.wav")

DefineUnitType("unit-gerpes", {
    Name = "Inf. Pesada Alemana",
    Image = {"file", GetCurrentLuaPath().."/unit_gerpes.png", "size", {64, 64}},
    Shadow = {"file", GetCurrentLuaPath().."/unit_gerpes_s.png", "size", {64, 64}},
    Animations = "animations-gerpes",
    Icon = "icon-gerpes",
    Flip = true,
    EnergyValue = 1500,
    MagmaValue = 1000,
    Speed = 8,
    HitPoints = 50,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {17, 28},
    SightRange = 7,
    ComputerReactionRange = 6,
    PersonReactionRange = 6,
    Armor = 2,
    BasicDamage = 5,
    PiercingDamage = 15,
    Missile = "missile-bazoo",
    MaxAttackRange = 6,
    Priority = 60,
    Points = 50,
    Corpse = "unit-dead-body4",
    Type = "land",
    RightMouseAction = "attack",
    CanAttack = true,
    CanTargetLand = true,
    CanTargetAir = true,
    LandUnit = true,
    Organic = true,
    SelectableByRectangle = true,
    Sounds = {
        "selected", "bazoo-selected",
        "acknowledge", "bazoo-acknowledge",
        "ready", "bazoo-ready",
        "help", "bazoo-help",
        "dead", "bazoo-die"}
})
DefineHumanCorpse("gerpes", nil, true)

DefineAllow("unit-gerpes", AllowAll)
