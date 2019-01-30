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


DefineAnimations("animations-weakhotspot", {
    Still = {"frame 0", "wait 100"},
    Death = {"unbreakable begin", "frame 0", "unbreakable end", "wait 1", },
    })

DefineIcon({
        Name = "icon-weakhotspot",
        Size = {46, 38},
        Frame = 0,
        File = "units/weakhotspot/hotspot_i.png"})

DefineConstruction("construction-weakhotspot", {
        Constructions = {
                {Percent = 0, File = "main", Frame = 0},
        }
})

DefineUnitType("unit-weakhotspot", {
    Name = "Campo Petrolífero",
    Image = {"file", "units/weakhotspot/hotspot.png", "size", {64, 64}},
    Offset = {0, 0},
    Animations = "animations-weakhotspot",
    Icon = "icon-weakhotspot",
    Construction = "construction-weakhotspot",
    Speed = 0,
    HitPoints = 1,
    Indestructible = 1,
    DrawLevel = 2,
    TileSize = {2, 2},
    BoxSize = {64, 64},
    NeutralMinimapColor = {175, 9, 149},
    SightRange = 0,
    Armor = 0,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 0,
    AnnoyComputerFactor = 0,
    Points = 0,
    ExplodeWhenKilled = "missile-64x64-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    Neutral = true,
    NumDirections = 1,
    ProductionEfficiency = 50,
    Sounds = {}
})

DefineAllow("unit-weakhotspot", AllowAll)






