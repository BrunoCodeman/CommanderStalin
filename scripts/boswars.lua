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


print("Commander Stalin default config file loading ...\n")

-------------------------------------------------------------------------------
--	Config-Part
-------------------------------------------------------------------------------

--	Enter your default title screen.
-- El video no funciona si tienes OpenGL Activado
-- Da un error de SDL, el error sale por pantalla cuando ejecutas cstalin 
-- desde la terminal.
SetTitleScreens(
  		
                {Image = "intro/logo_cstalin.png", StretchImage = false, Music = "music/title.ogg", Timeout=6})
--                {Image = "intro/intro4.ogg", Music = "music/title.ogg", Timeout=3})
                
   
  
--Image = "intro/boswars_intro.ogg",      



-------------------------------------------------------------------------------
--	Music play list -	Insert your titles here
-------------------------------------------------------------------------------

playlist={}
local musiclist = ListFilesInDirectory("music/")
for i,f in ipairs(musiclist) do
  if(string.find(f, ".ogg$") or string.find(f, ".wav$") or string.find(f, ".mp3$")) then 
    print("Added music file:" .. f) 
    playlist[i] = f 
  end
end

Preference.ShowSightRange = false
Preference.ShowAttackRange = false
Preference.ShowReactionRange = false
Preference.ShowOrders = 2

-- Mana and Health sprites
DefineSprites({Name = "sprite-mana", File = "general/mana2.png",
  Offset = {0, -1}, Size = {31, 4}})
DefineSprites({Name = "sprite-health", File = "general/health2.png",
  Offset = {0, -4}, Size = {31, 4}})

-- HealthDot
DefineDecorations({Index = "HitPoints", HideNeutral = true, CenterX = true,
  OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-health"}},
  ShowWhenMax = false})

-- ManaDot
DefineDecorations({Index = "Mana", HideNeutral = true, CenterX = true,
  OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}},
  ShowWhenMax = false})
DefineDecorations({Index = "Transport", HideNeutral = true, CenterX = true,
  OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}},
  ShowWhenMax = false})
DefineDecorations({Index = "Training", HideNeutral = true, CenterX = true,
  OffsetPercent = {50, 100},Method = {"sprite", {"sprite-mana"}},
  ShowWhenMax = false})

-------------------------------------------------------------------------------
--	Game modification
-------------------------------------------------------------------------------

--  Fighters move by default.
RightButtonMoves();

--	Set the name of the missile to use when clicking (move order)
SetClickMissile("missile-green-cross")

--	Set the name of the missile to use when displaying damage
SetDamageMissile("missile-hit")

--	Enable stopping scrolling on mouse leave.
SetLeaveStops(true)

--	Enable mouse and keyboard scrolling.
SetMouseScroll(true)
SetKeyScroll(true)
SetMouseScrollSpeedDefault(4)
SetMouseScrollSpeedControl(15)

SetDoubleClickDelay(300)
SetHoldClickDelay(1000)

--	Enable minimap terrain by default.
SetMinimapTerrain(true)

--  Use OpenGL texture compression if supported
UseGLTextureCompression = true

-------------------------------------------------------------------------------
--	Define default resources
-------------------------------------------------------------------------------

DefineDefaultResourceNames("energy", "magma")

DefinePlayerColorIndex(208, 4)

DefinePlayerColors({
  "red", {{164, 0, 0}, {124, 0, 0}, {92, 4, 0}, {68, 4, 0}},
  "blue", {{12, 72, 204}, {4, 40, 160}, {0, 20, 116}, {0, 4, 76}},
  "violet", {{152, 72, 176}, {116, 44, 132}, {80, 24, 88}, {44, 8, 44}},
  "orange", {{248, 140, 20}, {200, 96, 16}, {152, 60, 16}, {108, 32, 12}},
  "black", {{40, 40, 60}, {28, 28, 44}, {20, 20, 32}, {12, 12, 20}},
  "white", {{224, 224, 224}, {152, 152, 180}, {84, 84, 128}, {36, 40, 76}},
  "yellow", {{252, 252, 72}, {228, 204, 40}, {204, 160, 16}, {180, 116, 0}},
  "green", {{44, 180, 148}, {20, 132, 92}, {4, 84, 44}, {0, 40, 12}},
  "neutral", {{96, 96, 96}, {72, 72, 72}, {48, 48, 48}, {24, 24, 24}},
})

function InitGameVariables()
   SetSpeeds(1)
   InitAiScripts()
end

--  Pathfinder
AStarFixedUnitCrossingCost = 1000
AStarMovingUnitCrossingCost = 4
AStarKnowUnseenTerrain = false
AStarUnknownTerrainCost = 2

--	Maximum number of selectable units
SetMaxSelectable(50)

--	All player unit limit
SetAllPlayersUnitLimit(200)
--	All player building limit
SetAllPlayersBuildingLimit(200)
--	All player total unit limit
SetAllPlayersTotalUnitLimit(400)

-------------------------------------------------------------------------------
--  Default triggers for single player

function SinglePlayerTriggers()
  AddTrigger(
    function() return ThisPlayer.TotalNumUnits == 0 end,
    function() return StopGame(GameDefeat) end)

  AddTrigger(
    function() return GetNumOpponents(ThisPlayer.Index) == 0 end,
    function() return StopGame(GameVictory) end)   
end

-------------------------------------------------------------------------------
--	Tables-Part
-------------------------------------------------------------------------------
SetFogOfWarGraphics("general/fog.png")

Load("preferences.lua")

if (preferences == nil) then
  preferences = {
    VideoWidth = 800,
    VideoHeight = 600,
    VideoFullScreen = false,
    PlayerName = "Player",
    FogOfWar = true,
    ShowCommandKey = true,
    GroupKeys = "0123456789`",
    GameSpeed = 30,
    EffectsEnabled = true,
    EffectsVolume = 128,
    MusicEnabled = true,
    MusicVolume = 128,
    StratagusTranslation = "",
    GameTranslation = "",
    TipNumber = 0,
    ShowTips = true,
    GrabMouse = false,
    UseOpenGL = true,
  }
end

UseOpenGL = preferences.UseOpenGL
SetVideoResolution(preferences.VideoWidth, preferences.VideoHeight)
SetVideoFullScreen(preferences.VideoFullScreen)
SetLocalPlayerName(preferences.PlayerName)
SetFogOfWar(preferences.FogOfWar)
UI.ButtonPanel.ShowCommandKey = preferences.ShowCommandKey
SetGroupKeys(preferences.GroupKeys)
SetGameSpeed(preferences.GameSpeed)
SetEffectsEnabled(preferences.EffectsEnabled)
SetEffectsVolume(preferences.EffectsVolume)
SetMusicEnabled(preferences.MusicEnabled)
SetMusicVolume(preferences.MusicVolume)
SetTranslationsFiles(preferences.StratagusTranslation, preferences.GameTranslation)
SetGrabMouse(preferences.GrabMouse)

InitVideo()

--; Uses Stratagus Library path!
Load("scripts/icons.lua")
Load("scripts/sound.lua")
Load("scripts/explosions.lua")
Load("scripts/missiles.lua")
Load("scripts/spells.lua")
Load("scripts/units.lua")
Load("scripts/fonts.lua")
Load("scripts/ui.lua")
Load("scripts/buttons.lua")
Load("scripts/ai.lua")
Load("scripts/commands.lua")
Load("scripts/cheats.lua")
Load("scripts/maps.lua")


default_objective = _("Eliminate your enemies.")

print("... ready!")
