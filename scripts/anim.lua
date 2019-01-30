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

 

---------------------------------------
-- Misc.

DefineAnimations("animations-building", {
    Still = {"frame 0", "wait 4", "frame 0", "wait 1"},
    })

---------------------------------------
--        Dead Body

DefineAnimations("animations-dead-body", {
    Death = {"unbreakable begin", "frame 5", "wait 200", "frame 10", "wait 200",
        "frame 15", "wait 200", "frame 20", "wait 200", "frame 25", "wait 200",
        "frame 25", "unbreakable end", "wait 1", },
    })

---------------------------------------
--        Destroyed *x* Place

DefineAnimations("animations-destroyed-place", {
    Death = {"unbreakable begin", "frame 0", "wait 200", "frame 1", "wait 200",
        "frame 1", "unbreakable end", "wait 1", },
    })


