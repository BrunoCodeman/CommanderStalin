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
	Name = "icon-agua2",
	Size = {46, 38},
	Frame = 0,
	File = GetCurrentLuaPath().."/agua2_i.png"})

DefineConstruction("construction-static", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 0},
	}
})



DefineAnimations("animations-agua2", {
    Still = {"frame 0", "wait 1", },
    Train = {"unbreakable begin", "frame 0", "unbreakable end", "wait 1", },
    })


DefineUnitType("unit-agua2", {
    Name = "Agua",
    Image = {"file", GetCurrentLuaPath().."/agua2.png", "size", {128, 128}},
    Animations = "animations-agua2",
    Icon = "icon-agua2",
    Construction = "construction-agua2",
    Speed = 0,
    HitPoints = 350,
    DrawLevel = 25,
    TileSize = {4, 4},
    BoxSize = {124, 124},
    SightRange = 1,
    Armor = 300,
    Priority = 35,
    AnnoyComputerFactor = 45,
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    CanHarvestFrom = false,
    Indestructible = 1,

})





DefineAllow("unit-agua2", AllowAll)




