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

DefineAnimations("animations-tree", {
    Still = {"frame 0", "random-wait 255 5000", "frame 1", "wait 6", 
        "frame 2", "wait 6", "frame 3", "wait 6", "frame 2", "wait 6", 
        "frame 1", "wait 6", },
    Death = {"unbreakable begin", "frame 0", "unbreakable end", "wait 10", },
    })

DefineIcon({
	Name = "icon-tree",
	Size = {46, 38},
	Frame = 0,
	File = "units/tree/tree01_i.png"})

DefineConstruction("construction-tree", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 0},
	}
})

DefineUnitType("unit-tree", {
    Name = "Arbol",
    Image = {"file", "units/tree/tree01.png", "size", {105, 105}},
    Offset = {16, -24},
    Shadow = {"file", "units/tree/tree01_s.png", "size", {105, 105}},
    Animations = "animations-tree",
    Icon = "icon-tree",
    Construction = "construction-tree",
    EnergyValue = 5000,
    Speed = 0,
    HitPoints = 50,
    DrawLevel = 25,
    TileSize = {1, 1},
    BoxSize = {32, 32},
    NeutralMinimapColor = {73, 159, 9},
    SightRange = 1,
    Armor = 0,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 0,
    AnnoyComputerFactor = 0,
    Points = 10,
    ExplodeWhenKilled = "missile-64x64-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineAllow("unit-tree", AllowAll)






