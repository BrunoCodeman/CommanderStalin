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
--	(c) Copyright 2007-2008 by Antonio becerro Matinez.
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
--      $Id: guichan.lua 304 2005-12-18 13:13:15Z feb $

function RunCreditsMenu(s)
  local menu
  local b

  local credits
  credits = {
     _("Graphics:"),
     "  Antonio Becerro",
     "  alias Littledog",
     "",
     _("Scripting:"),
     "  Antonio Becerro",
     "  alias Littledog",
     "  Guillermo",
     "  alias Patan",

     "",
     _("Maps and campaigns:"),
     "  Antonio Becerro",
     "  alias Littledog",
     "",
     _("Sound:"),
     "  Tina Petersen",
     "  Brian Pedersen",
     " ",
     _("Engine Programmers:"),
     "  Andreas 'Ari' Arens",
     "  Lutz 'Johns' Sammer",
     "  Edgar 'Froese' Toernig",
     "  Jimmy Salmon",
     "  Nehal Mistry",
     "  Russell Smith",
     "  Francois Beerten",
     "  Joris Dauphin",
     "  Mark Pazolli",
     "  Valery Shchedrin",
     "  Iftikhar Rathore",
     "  Charles K Hardin",
     "  Fabrice Rossi",
     "  DigiCat",
     "  Josh Cogliati",
     "  Patrick Mullen",
     "  Vladi Belperchinov-Shabanski",
     "  Cris Daniluk",
     "  Patrice Fortier",
     "  FT Rathore",
     "  Trent Piepho",
     "  Jon Gabrielson",
     "  Lukas Hejtmanek",
     "  Steinar Hamre",
     "  Ian Farmer",
     "  Sebastian Drews",
     "  Jarek Sobieszek",
     "  Anthony Towns",
     "  Stefan Dirsch",
     "  Al Koskelin",
     "  George J. Carrette",
     "  Dirk 'Guardian' Richartz",
     "  Michael O'Reilly",
     "  Dan Hensley",
     "  Sean McMillian",
     "  Mike Earl",
     "  Ian Turner",
     "  David Slimp",
     "  Iuri Fiedoruk",
     "  Luke Mauldin",
     "  Nathan Adams",
     "  Stephan Rasenberger",
     "  Dave Reed",
     "  Josef Spillner",
     "  James Dessart",
     "  Jan Uerpmann",
     "  Aaron Berger",
     "  Latimerius",
     "  Antonis Chaniotis",
     "  Samuel Hays",
     "  David Martinez Moreno",
     "  Flavio Silvestrow",
     "  Daniel Burrows",
     "  Dave Turner",
     "  Ben Hines",
     "  Kachalov Anton",
     _("Patches"),
     "  Martin Renold",
     "  Martin Hajduch",
     "  Jeff Binder",
     "  Ludovic",
     "  Juan Pablo",
     "  Phil Hannent",
     "  Alexander MacLean",
     "",

     _("The Commander Stalin Team agradece"),
     _("everybody who has contributed"),
     _("patches, bug reports, ideas.")
  }

  menu = BosMenu(_("Commander Stalin Credits"))

  local sw = ScrollingWidget(400, Video.Height * 12 / 20)
  menu:add(sw, Video.Width / 2 - 200, Video.Height / 20 * 3)
  sw:setBackgroundColor(dark)
  sw:setActionCallback(function() sw:restart() end)
  for i,f in ipairs(credits) do
    sw:add(Label(f), 50, 20 * i + 50)
  end

  menu:addButton(_("~!Main Menu"), Video.Width / 2 - 100, 
                 Video.Height - 100, function() menu:stop() end)

  menu:run()
end

