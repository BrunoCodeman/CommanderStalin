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

-- Define, Animation and Construction for all rocks

DefineAnimations("animations-rocks", {
	Still = {"frame 0", "wait 1", },
})

DefineConstruction("construction-rocks", {
	Constructions = {
		{Percent = 0, File = "main", Frame = 0},
	}
})

-- rock-1

DefineUnitType("unit-rock-1", {
    Name = "mineral1",
    Image = {"file", "units/rocks/rock_1.png", "size", {96, 96}},
    Shadow = {"file", "units/rocks/rock_1s.png", "size", {96, 96}},
    Animations = "animations-rocks",
    Icon = "icon-rock-1",
    Construction = "construction-rocks",
    MagmaValue = 5000,
    HitPoints = 3000,
    DrawLevel = 2,
    VisibleUnderFog = true,
    NeutralMinimapColor = {196, 196, 196},
    TileSize = {1, 1},
    BoxSize = {48, 48},
    Armor = 999,
    Missile = "missile-none",
    Priority = 0,
    ExplodeWhenKilled = "missile-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineIcon({
    Name = "icon-rock-1",
    Size = {46, 38},
    Frame = 0,
    File = "units/rocks/rock_1i.png"})

DefineAllow("unit-rock-1", AllowAll)

-- rock-2

DefineUnitType("unit-rock-2", {
    Name = "mineral 2",
    Image = {"file", "units/rocks/rock_2.png", "size", {96, 96}},
    Shadow = {"file", "units/rocks/rock_2s.png", "size", {96, 96}},
    Animations = "animations-rocks",
    Icon = "icon-rock-2",
    Construction = "construction-rocks",
    MagmaValue = 4000,
    HitPoints = 2500,
    DrawLevel = 2,
    VisibleUnderFog = true,
    NeutralMinimapColor = {196, 196, 196},
    TileSize = {1, 1},
    BoxSize = {48, 48},
    Armor = 999,
    Missile = "missile-none",
    Priority = 0,
    ExplodeWhenKilled = "missile-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineIcon({
    Name = "icon-rock-2",
    Size = {46, 38},
    Frame = 0,
    File = "units/rocks/rock_2i.png"})

DefineAllow("unit-rock-2", AllowAll)

-- rock-3

DefineUnitType("unit-rock-3", {
    Name = "mineral 3",
    Image = {"file", "units/rocks/rock_3.png", "size", {96, 96}},
    Shadow = {"file", "units/rocks/rock_3s.png", "size", {96, 96}},
    Animations = "animations-rocks",
    Icon = "icon-rock-3",
    Construction = "construction-rocks",
    MagmaValue = 3000,
    HitPoints = 2500,
    DrawLevel = 2,
    VisibleUnderFog = true,
    NeutralMinimapColor = {196, 196, 196},
    TileSize = {1, 1},
    BoxSize = {48, 48},
    Armor = 999,
    Missile = "missile-none",
    Priority = 0,
    ExplodeWhenKilled = "missile-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineIcon({
    Name = "icon-rock-3",
    Size = {46, 38},
    Frame = 0,
    File = "units/rocks/rock_3i.png"})

DefineAllow("unit-rock-3", AllowAll)

-- rock-4

DefineUnitType("unit-rock-4", {
    Name = "mineral 4",
    Image = {"file", "units/rocks/rock_4.png", "size", {96, 96}},
    Shadow = {"file", "units/rocks/rock_4s.png", "size", {96, 96}},
    Animations = "animations-rocks",
    Icon = "icon-rock-4",
    Construction = "construction-rocks",
    MagmaValue = 2000,
    HitPoints = 2500,
    DrawLevel = 2,
    VisibleUnderFog = true,
    NeutralMinimapColor = {196, 196, 196},
    TileSize = {1, 1},
    BoxSize = {48, 48},
    Armor = 999,
    Missile = "missile-none",
    Priority = 0,
    ExplodeWhenKilled = "missile-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineIcon({
    Name = "icon-rock-4",
    Size = {46, 38},
    Frame = 0,
    File = "units/rocks/rock_4i.png"})

DefineAllow("unit-rock-4", AllowAll)

-- rock-5

DefineUnitType("unit-rock-5", {
    Name = "mineral 5",
    Image = {"file", "units/rocks/rock_5.png", "size", {96, 96}},
    Shadow = {"file", "units/rocks/rock_5s.png", "size", {96, 96}},
    Animations = "animations-rocks",
    Icon = "icon-rock-5",
    Construction = "construction-rocks",
    MagmaValue = 1000,
    HitPoints = 1500,
    DrawLevel = 2,
    VisibleUnderFog = true,
    NeutralMinimapColor = {196, 196, 196},
    TileSize = {1, 1},
    BoxSize = {32, 32},
    Armor = 999,
    Missile = "missile-none",
    Priority = 0,
    ExplodeWhenKilled = "missile-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineIcon({
    Name = "icon-rock-5",
    Size = {46, 38},
    Frame = 0,
    File = "units/rocks/rock_5i.png"})

DefineAllow("unit-rock-5", AllowAll)

-- rock-6

DefineUnitType("unit-rock-6", {
    Name = "mineral 6",
    Image = {"file", "units/rocks/rock_6.png", "size", {96, 96}},
    Shadow = {"file", "units/rocks/rock_6s.png", "size", {96, 96}},
    Animations = "animations-rocks",
    Icon = "icon-rock-6",
    Construction = "construction-rocks",
    MagmaValue = 1200,
    HitPoints = 1500,
    DrawLevel = 2,
    VisibleUnderFog = true,
    NeutralMinimapColor = {196, 196, 196},
    TileSize = {1, 1},
    BoxSize = {32, 32},
    Armor = 999,
    Missile = "missile-none",
    Priority = 0,
    ExplodeWhenKilled = "missile-explosion",
    Corpse = "unit-destroyed-1x1-place",
    Type = "land",
    Building = true,
    NumDirections = 1,
    CanHarvestFrom = true,
    Neutral = true,
    Sounds = {}
})

DefineIcon({
    Name = "icon-rock-6",
    Size = {46, 38},
    Frame = 0,
    File = "units/rocks/rock_6i.png"})

DefineAllow("unit-rock-6", AllowAll)


