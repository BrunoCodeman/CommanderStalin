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

DefineAnimations("animations-sovguar", {
    Still = {"frame 0", "wait 1", },
    Move = {"unbreakable begin", "frame 5", "move 4", "wait 2",
        "frame 10", "move 4", "wait 2", "frame 15", "move 4", "wait 2",
        "frame 20", "move 4", "wait 2", "frame 5", "move 4", "wait 2",
        "frame 10", "move 4", "wait 2", "frame 15", "move 4", "wait 2",
        "frame 20", "move 4", "unbreakable end", "wait 2", },
    Attack = {"unbreakable begin",
        "frame 25", "attack", "wait 1",
        "frame 0", "wait 49", "unbreakable end", "wait 1", },
    Death = {"unbreakable begin", "frame 30", "wait 5", "frame 35", "wait 5",
        "frame 40", "wait 5", "frame 45", "unbreakable end", "wait 5", },
    })

DefineIcon({
        Name = "icon-sovguar",
        Size = {46, 38},
        Frame = 0,
        File = "units/sovguar/ico_sovguar.png"})

DefineMissileType("missile-dorcoz", {
        File = "units/dorcoz/mis_plasma_sml.png",
        Size = {32, 32}, Frames = 5, NumDirections = 8,
        DrawLevel = 50,
        Class = "missile-class-point-to-point", Sleep = 1, Speed = 32, Range = 1})

DefineUnitType("unit-sovguar", {
    Name = "Guardia Soviético",
    Image = {"file", "units/sovguar/unit_sovguar.png", "size", {64, 64}},
    Animations = "animations-sovguar",
    Icon = "icon-sovguar",
    Flip = true,
    EnergyValue = 4500,
    MagmaValue = 2500,
    Speed = 10,
    HitPoints = 100,
    DrawLevel = 40,
    TileSize = {1, 1},
    BoxSize = {31, 31},
    SightRange = 7,
    ComputerReactionRange = 7,
    PersonReactionRange = 7,
    Armor = 2,
    BasicDamage = 6,
    PiercingDamage = 3,
    Missile = "missile-dorcoz",
    MaxAttackRange = 7,
    Priority = 60,
    Points = 50,
    Corpse = "unit-dead-body",
    Type = "land",
    RightMouseAction = "attack",
    CanAttack = true,
    CanTargetLand = true,
    CanTargetAir = true,
    LandUnit = true,
    Organic = true,
    SelectableByRectangle = true,
    RightMouseAction = "attack"
})

DefineAllow("unit-sovguar", AllowAll)

DefineButton({
        Pos = 4, Level = 0, Icon = "icon-sovguar",
        Action = "train-unit", Value = "unit-sovguar",
        Hint = "TRAIN ~!SOVGUAR",
        ForUnit = {"unit-sovcuartel"}})

