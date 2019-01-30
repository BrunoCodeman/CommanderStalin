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

if(not helpersInited) then
  helpersInited = true

  --- 
  -- Ai helper functions. These function are to be used in coroutines based
  -- ai scripts.

  OldAiWait=AiWait
  function AiWait(unit)
    while OldAiWait(unit) do
      coroutine.yield()
    end
  end

  OldAiSleep = AiSleep
  function AiSleep(cycles)
    while OldAiSleep(cycles) do
      coroutine.yield()
    end
  end

  OldAiWaitForce = AiWaitForce
  function AiWaitForce(forceId)
    while OldAiWaitForce(forceId) do
      coroutine.yield()
    end
  end

  OldAiTimedWaitForce = AiTimedWaitForce
  function AiTimedWaitForce(forceId, maxCycles)
    while OldAiTimedWaitForce(forceId, maxCycles) do
      coroutine.yield()
    end
  end
end
