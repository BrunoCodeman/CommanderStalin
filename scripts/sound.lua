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

------------------------------------------------------------------------------
--	Music part

------------------------------------------------------------------------------
--	MusicStopped() is called if the current music is finished.
--
--		This is a random music player demo
--

function MusicStopped()
  if (table.getn(playlist) ~= 0) then
    PlayMusic("music/" .. playlist[math.random(table.getn(playlist))])
  end
end

------------------------------------------------------------------------------
--	Define sounds later used
--

sound_click = MakeSound("click", "ui/click.wav")

------------------------------------------------------------------------------
--	ELITES
--

-- MISSILE
MakeSound("grenade-impact", "sounds/grenadier_g_hit.wav")
MakeSound("rocket-impact", "sounds/bazoo_g_hit.wav")


------------------------------------------------------------------------------
--	Define sounds used by game
--

DefineGameSounds(
  "placement-error", sound_click,
  "placement-success", sound_click,
  "click", sound_click,
  "chat-message", MakeSound("", "ui/chatmessage.wav"))

sound_click = MakeSound("statsthump", "ui/click.wav")

