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

-- general cancel button ------------------------------------------------------

DefineButton( { Pos = 9, Level = 9, Icon = "icon-cancel",
  Action = "cancel",
  Hint = "~<ESC~> CANCEL",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-train-unit",
  Hint = "~<ESC~> CANCEL UNIT TRAINING",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-build",
  Hint = "~<ESC~> CANCEL CONSTRUCTION",
  ForUnit = {"cancel-build"} } )

-- general commands -- almost all units have it -------------------------------


DefineButton({
	Pos = 1, Level = 0, Icon = "icon-move",
	Action = "move", Hint = "~!MOVE",
	ForUnit = {"unit-sovguar", "unit-sovobrero", "unit-regsov", "unit-gerobrero",
             "unit-gerreg", "unit-gerpes", "unit-medic","unit-camion", "unit-katiuska",
             "unit-buggy",
             "elites-group"}})

DefineButton({
	Pos = 2, Level = 0, Icon = "icon-stop",
	Action = "stop", Hint = "~!STOP",
	ForUnit = {"unit-sovguar", "unit-sovobrero", "unit-gerobrero", "unit-regsov",
             "unit-gerreg", "unit-gerpes", "unit-medic","unit-camion", "unit-katiuska",
             "unit-buggy",
             "unit-gturret", "unit-cannon",
             "elites-group"}})

DefineButton({
	Pos = 3, Level = 0, Icon = "icon-attack",
	Action = "attack", Hint = "~!ATTACK",
	ForUnit = {"unit-sovguar", "unit-gerreg", "unit-gerpes", "unit-regsov",
              "unit-buggy", "unit-katiuska",
             "unit-gturret", "unit-cannon",
             "elites-group",}})

DefineButton({
	Pos = 4, Level = 0, Icon = "icon-patrol",
	Action = "patrol", Hint = "~!PATROL",
	ForUnit = {"unit-sovguar", "unit-gerreg", "unit-gerpes",
             "unit-camion", "unit-buggy", "unit-sovobrero", "unit-gerobrero", "unit-regsov", "unit-katiuska",
             "elites-group",}})

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-stand-ground",
	Action = "stand-ground", Hint = "S~!TAND GROUND",
	ForUnit = {"unit-sovguar", "unit-gerreg", "unit-gerpes", "unit-regsov",
             "unit-buggy", "unit-katiuska", "unit-camion",
             "unit-medic", "elites-group",}})

-- resource specific actions ---------------------------------------------------

DefineButton({
	Pos = 6, Level = 0, Icon = "icon-repair",
	Action = "repair", Hint = "~!REPAIR BUILDINGS/VEHICLES",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest", Hint = "~!HARVEST RESOURCE",
	ForUnit = {"unit-camion"}})

-- TODO !!!!!
DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest", Hint = "~!HARVEST RESOURCE",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

-- build basic/advanced structs -----------------------------------------------

DefineButton({
	Pos = 7, Level = 0, Icon = "icon-build-lvl1", Action = "button",
	Value = 1, Hint = "BUILD ~!BASIC STRUCTURES",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

DefineButton({
	Pos = 8, Level = 0, Icon = "icon-build-lvl2", Action = "button",
	Value = 2, Hint = "BUILD ~!UNIT STRUCTURES",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

DefineButton({
	Pos = 9, Level = 0, Icon = "icon-build-lvl3", Action = "button",
	Value = 3, Hint = "BUILD ~!DEFENSIVE STRUCTURES",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

-- simple buildings elites -----------------------------------------------------

DefineButton({
        Pos = 1, Level = 1, Icon = "icon-kremlin", Action = "build",
        Value = "unit-kremlin", Hint = "BUILD ~!KREMLIN",
        ForUnit = {"unit-sovobrero"}})

DefineButton({
        Pos = 1, Level = 1, Icon = "icon-troskremlin", Action = "build",
        Value = "unit-troskremlin", Hint = "BUILD ~!TROSKREMLIN",
        ForUnit = {"unit-sovobrero"}})

DefineButton({
        Pos = 1, Level = 1, Icon = "ico-cancilleria", Action = "build",
        Value = "unit-cancilleria", Hint = "BUILD ~!CANCILLERIA",
        ForUnit = {"unit-gerobrero"}})
        
DefineButton({
	Pos = 9, Level = 1, Icon = "icon-cancel", Action = "button",
	Value = 0, Hint = "~<ESC~> CANCEL",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

DefineButton({
	Pos = 9, Level = 2, Icon = "icon-cancel", Action = "button",
	Value = 0, Hint = "~<ESC~> CANCEL",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})

DefineButton({
	Pos = 9, Level = 3, Icon = "icon-cancel", Action = "button",
	Value = 0, Hint = "~<ESC~> CANCEL",
	ForUnit = {"unit-sovobrero", "unit-gerobrero"}})


-- buildings commands ---------------------------------------------------------

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-sovobrero",
	Action = "train-unit", Value = "unit-sovobrero",
	Hint = "TRAIN ~!OBRERO SOVIETICO",
	ForUnit = {"unit-kremlin"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-sovobrero",
	Action = "train-unit", Value = "unit-sovobrero",
	Hint = "TRAIN ~!OBRERO SOVIETICO",
	ForUnit = {"unit-troskremlin"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-gerobrero",
	Action = "train-unit", Value = "unit-gerobrero",
	Hint = "TRAIN ~!OBRERO ALEMAN",
	ForUnit = {"unit-cancilleria"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "ico-sovobrero",
	Action = "train-unit", Value = "unit-sovobrero",
	Hint = "TRAIN ~!OBRERO SOVIETICO",
	ForUnit = {"unit-sovcuartel"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-gerobrero",
	Action = "train-unit", Value = "unit-gerobrero",
	Hint = "TRAIN ~!OBRERO ALEMAN",
	ForUnit = {"unit-gercuartel"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-regsov",
	Action = "train-unit", Value = "unit-regsov",
	Hint = "TRAIN ~!SOLDADO SOVIETICO",
	ForUnit = {"unit-sovcuartel"}})

DefineButton({
	Pos = 2, Level = 0, Icon = "icon-gerreg",
	Action = "train-unit", Value = "unit-gerreg",
	Hint = "TRAIN ~!GRENADIER",
	ForUnit = {"unit-gercuartel"}})

DefineButton({
	Pos = 3, Level = 0, Icon = "icon-gerpes",
	Action = "train-unit", Value = "unit-gerpes",
	Hint = "TRAIN ~!GERPES",
	ForUnit = {"unit-gercuartel"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-katiuska",
	Action = "train-unit", Value = "unit-katiuska",
	Hint = "BUILD ~!KATIUSKA",
	ForUnit = {"unit-sovfabrica"}})

DefineButton({
	Pos = 3, Level = 0, Icon = "ico-t34",
	Action = "train-unit", Value = "unit-t34",
	Hint = "BUILD ~!T34",
	ForUnit = {"unit-sovfabrica"}})

DefineButton({
	Pos = 4, Level = 0, Icon = "ico-t50",
	Action = "train-unit", Value = "unit-t50",
	Hint = "BUILD ~!T50",
	ForUnit = {"unit-sovfabrica"}})

DefineButton({
	Pos = 2, Level = 0, Icon = "icon-camion",
	Action = "train-unit", Value = "unit-camion",
	Hint = "BUILD MINERAL ~!HARVESTER",
	ForUnit = {"unit-sovfabrica"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "icon-camion",
	Action = "train-unit", Value = "unit-camion",
	Hint = "BUILD MINERAL ~!HARVESTER",
	ForUnit = {"unit-gerfabrica"}})

DefineButton({
	Pos = 2, Level = 0, Icon = "ico-tiger1",
	Action = "train-unit", Value = "unit-tiger1",
	Hint = "BUILD ~!TIGER1",
	ForUnit = {"unit-gerfabrica"}})

DefineButton({
	Pos = 4, Level = 0, Icon = "ico-elefant",
	Action = "train-unit", Value = "unit-elefant",
	Hint = "BUILD ~!ELEFANT",
	ForUnit = {"unit-gerfabrica"}})

DefineButton({
	Pos = 1, Level = 0, Icon = "ico-bf110",
	Action = "train-unit", Value = "unit-bf110",
	Hint = "BUILD ~!BF110",
	ForUnit = {"unit-geravionfa"}})

DefineButton({
	Pos = 2, Level = 0, Icon = "ico-pe2",
	Action = "train-unit", Value = "unit-pe2",
	Hint = "BUILD ~!PE2",
	ForUnit = {"unit-avionfab"}})

DefineButton({
	Pos = 3, Level = 0, Icon = "ico-poli",
	Action = "train-unit", Value = "unit-poli",
	Hint = "BUILD ~!POLI",
	ForUnit = {"unit-avionfab"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "ico-kv2",
	Action = "train-unit", Value = "unit-kv2",
	Hint = "BUILD ~!KV2",
	ForUnit = {"unit-sovfabrica"}})


-- vault actions ---------------------------------------------------------


DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Hint = "SET ~!HARVEST/MINE",
	ForUnit = {"unit-kremlin"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Hint = "SET ~!HARVEST/MINE",
	ForUnit = {"unit-troskremlin"}})

DefineButton({
	Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Hint = "SET ~!HARVEST/MINE",
	ForUnit = {"unit-cancilleria"}})

DefineButton({
	Pos = 7, Level = 0, Icon = "icon-move",	Action = "move",
	Hint = "SET ~!NEW UNITS TARGET",
	ForUnit = {"unit-kremlin", "unit-cancilleria", "unit-troskremlin"}})

DefineButton({
	Pos = 8, Level = 0, Icon = "icon-stop", Action = "stop",
	Hint = "SET ~!CANCEL UNIT TARGET",
	ForUnit = {"unit-kremlin", "unit-cancilleria", "unit-troskremlin"}})

DefineButton({
	Pos = 9, Level = 0, Icon = "icon-attack", Action = "attack",
	Hint = "UN~!IT ATTACK",
	ForUnit = {"unit-kremlin", "unit-cancilleria", "unit-troskremlin"}})

-- spells ----------------------------------------------------------

DefineButton({
	Pos = 3, Level = 0, Icon = "icon-attack",
	Action = "cast-spell", Value = "spell-nuke",
	Allowed = "check-true", Hint = "~!NUKE EM",
	ForUnit = {"unit-v2"}})

