--[[---------------------------------------------------------------------------
    Addon:  CursorTrail
    File:   CursorTrailHelp.lua
    Desc:   Functions and variables for showing this addon's help text.
-----------------------------------------------------------------------------]]

local kAddonFolderName, private = ...

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Saved (Persistent) Variables                      ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

CursorTrail_PlayerConfig = CursorTrail_PlayerConfig or {}

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Aliases to Globals                                ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local Globals = _G
local _  -- Prevent tainting global _ .
local print = _G.print

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Declare Namespace                                 ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local CursorTrail = _G.CursorTrail or {}
if (not _G.CursorTrail) then _G.CursorTrail = CursorTrail end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Remap Global Environment                          ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

setfenv(1, _G.CursorTrail)  -- Everything after this uses our namespace rather than _G.

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Constants                                         ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

kHelpText_Options = [[
The options window can be opened from the standard addons window, or by typing "/ct" or "/cursortrail".  Settings are saved separately for each of your WoW characters, so your tank (for example) can have different cursor effects than your other characters.

* Shape:  A list of shape effects to choose from.  
The shape's color can be changed by clicking the color swatch button to the right of the Shape selection.  
When "Sparkle" is turn on, the chosen shape color is ignored and the shape "sparkles" instead.  (Sparkle does not affect model color.)

* Model:  A list of animated cursor effects to choose from.  Models can be repositioned using "Model Offsets" described below.

* Shadow %:  Controls how intense the black background circle is.  99% is darkest, while 0% is invisible (off).

* Scale %:  Controls the size of the effect.  Can be 1 to 998.

* Opacity %:  Controls how transparent Shape and Model are.  100% is fully visible, while 0% is invisible (off).

* Layer (Strata):  Controls whether shapes and models are drawn behind or in front of other UI objects.  It does not effect the Shadow option.  ("Background" is the bottom-most drawing layer, and "Tooltip" is the top-most.)  

* Model Offsets:  Moves the center of the Model effect.  The first number box moves it horizontally (negative numbers move left, positive move right).  The second number box moves it vertically (negative numbers move down, positive move up).

* Fade out when idle:  When on, the cursor effects fade out when the mouse stops moving.

* Show only in combat:  When on, the cursor effects will only appear during combat.

* Show during Mouse Look:  When on, the cursor effects will remain visible while using the mouse to look around.

* Defaults:  Each default button has different preset options.  You can use them as a starting point for your own effects.  (To save your own settings, see the "/ct save" and "/ct load" slash commands described below.)
]]

kHelpText_ProfileCommands = [[
Profiles (your settings) can be saved and loaded between all your characters using slash commands:

        /ct save  <profile name>
        /ct load  <profile name>
        /ct delete  <profile name>
        /ct list
]]

kHelpText_SlashCommands = [[
Type "/ct help" to see a list of all slash commands.
]]

kHelpText_Troubleshooting = [[
- Some models disappear if scaling is set too low.  If you select a model and it doesn't show up, try a larger Scale %.  (All models work at 100% scale.)

- If the cursor effects unexpectedly disappear, you can quickly get them back by typing "/ct reload".

- If shapes and shadows do not follow the mouse cursor properly, and you are using an addon to change the game's UI scale below the normal minimum (64%), type "/ct reload" (or do a normal game reload) so CursorTrail uses the new scale value.

- If you also use the CTMod addon, it uses the same slash command (/ct) and only one addon will open.
If CTMod always opens when you type /ct, use /cursortrail to open CursorTrail.
If CursorTrail always opens when you type /ct, you can manually change CursorTrail's slash command to something else, such as "/ctr".
    IMPORTANT - You will need to repeatedly make this change after every download of CursorTrail.
    1. Using any text editor, open "CursorTrail.lua" located in CursorTrail folder within your Warcraft addons folder.
        (e.g. "C:\Program Files\World of Warcraft\_retail_\Interface\AddOns\CursorTrail\CursorTrail.lua")
    2. Search in that file for "SLASH_".
    3. The line after that needs to be modified.  Change the end of the line from,
            Globals["SLASH_"..kAddonName.."2"] = "/ct"
       to your new slash command,
            Globals["SLASH_"..kAddonName.."2"] = "/ctr"
    4. Save your changes, then reload World of Warcraft (/reload).
]]

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
--[[                       Functions                                         ]]
--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

-------------------------------------------------------------------------------
function CursorTrail_ShowHelp(parent, scrollToTopic)
    local topMargin = 3
    local scrollDelaySecs = nil
    
    if not HelpFrame then
        HelpFrame = private.Controls.CreateTextScrollFrame(parent, "*** "..kAddonName.." Help ***", 750)
        HelpFrame.topicOffsets = {}
        local bigFont = "GameFontNormalHuge" --"OptionsFontLarge" --"GameFontNormalLarge"
        local smallFont = "GameTooltipText"
        local lineSpacing = 6
        scrollDelaySecs = 0.1  -- Required so this newly created window has its scrollbar update correctly.

        -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - --

        -- OPTIONS:
        ----HelpFrame.topicOffsets["OPTIONS"] = HelpFrame:GetNextVerticalPosition()
        HelpFrame:AddText(ORANGE.."Options", 0, topMargin, bigFont)
        HelpFrame:AddText(kHelpText_Options, 0, lineSpacing, smallFont)
        ----HelpFrame:AddText(BLUE.."\nTIP:|r You can use the mouse wheel or Up/Down keys to change values.", 0, lineSpacing, smallFont)
        HelpFrame:AddText(" ", 0, lineSpacing, smallFont)
        
        -- PROFILE COMMANDS:
        HelpFrame.topicOffsets["PROFILE_COMMANDS"] = HelpFrame:GetNextVerticalPosition() -12
        HelpFrame:AddText(ORANGE.."Profile Commands", 0, 0, bigFont)
        HelpFrame:AddText(kHelpText_ProfileCommands, 0, lineSpacing, smallFont)
        HelpFrame:AddText(" ", 0, lineSpacing, smallFont)
        
        -- SLASH COMMANDS:
        ----HelpFrame.topicOffsets["SLASH_COMMANDS"] = HelpFrame:GetNextVerticalPosition()
        HelpFrame:AddText(ORANGE.."Slash Commands", 0, 0, bigFont)
        HelpFrame:AddText(kHelpText_SlashCommands, 0, lineSpacing, smallFont)
        HelpFrame:AddText(" ", 0, lineSpacing, smallFont)
        
        -- TROUBLESHOOTING:
        ----HelpFrame.topicOffsets["TROUBLESHOOTING"] = HelpFrame:GetNextVerticalPosition()
        HelpFrame:AddText(ORANGE.."Troubleshooting", 0, 0, bigFont)
        HelpFrame:AddText(kHelpText_Troubleshooting, 0, lineSpacing, smallFont)
        HelpFrame:AddText(" ", 0, lineSpacing, smallFont)
        
        -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - --
        -- Add space at bottom so we can scroll any topic to the top.
        HelpFrame:AddText(" ", 0, HelpFrame.scrollFrame:GetHeight() - 56, smallFont)
        
        -- Allow moving the window.
        local w, h = HelpFrame:GetSize()
        local clampW, clampH = w*0.7, h*0.8
        HelpFrame:EnableMouse(true)
        HelpFrame:SetMovable(true)
        HelpFrame:SetClampedToScreen(true)
        HelpFrame:SetClampRectInsets(clampW, -clampW, -clampH, clampH)
        HelpFrame:RegisterForDrag("LeftButton")
        HelpFrame:SetScript("OnDragStart", function() HelpFrame:StartMoving() end)
        HelpFrame:SetScript("OnDragStop", function() HelpFrame:StopMovingOrSizing() end)
    end 
    
    -- Scroll to top, or to specified topic.
    local scrollOffset = 0
    if scrollToTopic then
        scrollOffset = HelpFrame.topicOffsets[ scrollToTopic ]
        if scrollOffset then
        scrollOffset = scrollOffset - topMargin
        else
            print(kAddonErrorHeading.."Invalid help topic!  ("..scrollToTopic..")")
            scrollOffset = 0
        end
    end
    HelpFrame:SetVerticalScroll( scrollOffset, scrollDelaySecs )
    HelpFrame:Show()
end

-------------------------------------------------------------------------------
function CursorTrail_HideHelp()
    if HelpFrame then HelpFrame:Hide() end
end

--- End of File ---