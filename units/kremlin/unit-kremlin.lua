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

DefineAnimations("animations-kremlin", {
    Train = {"frame 10", "wait 5", "frame 11", "wait 5", "frame 12", "wait 5",
        "frame 13", "wait 5", "frame 14", "wait 5", "frame 13", "wait 5",
        "frame 12", "wait 5", "frame 11", "wait 5", "frame 10", "wait 30", },
    Still = {"frame 15", "wait 5", "frame 16", "wait 5", "frame 17", "wait 5",
        "frame 18", "wait 5", "frame 19", "wait 5", "frame 18", "wait 5",
        "frame 17", "wait 5", "frame 16", "wait 5", "frame 15", "wait 10", },
    })

DefineIcon({
        Name = "icon-kremlin",
        Size = {46, 38},
        Frame = 0,
        File = "units/kremlin/kremlin-i.png"})

DefineConstruction("construction-kremlin", {
        Constructions = {
                {Percent = 0, File = "main", Frame = 0},
                {Percent = 10, File = "main", Frame = 1},
                {Percent = 20, File = "main", Frame = 2},
                {Percent = 30, File = "main", Frame = 3},
                {Percent = 40, File = "main", Frame = 4},
                {Percent = 50, File = "main", Frame = 5},
                {Percent = 60, File = "main", Frame = 6},
                {Percent = 70, File = "main", Frame = 7},
                {Percent = 80, File = "main", Frame = 8},
                {Percent = 90, File = "main", Frame = 9}
        }
})

MakeSound("vault-selected", GetCurrentLuaPath().."/sfx_fort.select.wav")
MakeSound("vault-ready", GetCurrentLuaPath().."/vault.completed.wav")
MakeSound("vault-help", GetCurrentLuaPath().."/vault.underattack.wav")
MakeSound("vault-dead", GetCurrentLuaPath().."/sfx_fort.die.wav")

DefineUnitType("unit-kremlin", {
    Name = "kremlin",
    Image = {"file", "units/kremlin/kremlin.png", "size", {236, 208}},
    Shadow = {"file", GetCurrentLuaPath().."/kremlin_s.png", "size", {236, 208}},
    Animations = "animations-kremlin",
    Icon = "icon-kremlin",
    EnergyValue = 7500,
    MagmaValue = 3800,
    RepairHp = 4,
    Construction = "construction-kremlin",
    Speed = 0,
    HitPoints = 600,
    DrawLevel = 25,
    TileSize = {6, 6},
    BoxSize = {196, 164},
    SightRange = 4,
    Armor = 30,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 35,
    AnnoyComputerFactor = 45,
    Points = 200,
    DeathExplosion = largeExplosion,
    Corpse = "build-dead-kremlin",
    Type = "land",
    Building = true,
    BuilderOutside = true,
    VisibleUnderFog = true,
    EnergyStorageCapacity = 10000,
    MagmaStorageCapacity = 2000,
    MaxEnergyUtilizationRate = 40,
    MaxMagmaUtilizationRate = 20,
    CanHarvestFrom = true,
    Sounds = {
        "selected", "vault-selected",
        "ready", "vault-ready",
        "help", "vault-help",
        "dead", "vault-dead"}
})

DefineAnimations("animations-dead-kremlin", {
    Death = {"unbreakable begin", "wait 1", "frame 0", "wait 2000", 
        "frame 1", "wait 200", "frame 2", "wait 200",  "unbreakable end", "wait 1", },
    })

DefineUnitType("build-dead-kremlin", {
    Name = "vaultCrater",
    Image = {"file", GetCurrentLuaPath().."/kremlin_c.png", "size", {236, 208}},
    Animations = "animations-dead-kremlin",
    Icon = "icon-cancel",
    Speed = 0,
    HitPoints = 999,
    DrawLevel = 10,
    TileSize = {6, 6},
    BoxSize = {196, 164},
    SightRange = 1,
    BasicDamage = 0,
    PiercingDamage = 0,
    Missile = "missile-none",
    Priority = 0,
    Type = "land",
    Building = true,
    Vanishes = true
})


DefineAllow("unit-kremlin", AllowAll)
