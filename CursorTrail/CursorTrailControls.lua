--[[---------------------------------------------------------------------------
Title:   CursorTrailControls.lua
Credits: Based on code by Mikord (MSBT Options Controls).


================================[ INTERFACES ]=================================
~~~~~~~~~~~~~~~
    Creator
   Functions
~~~~~~~~~~~~~~~

        CreateCheckbox()        - Returns a Checkbox object.
        CreateDropdown()        - Returns a Dropdown object.
        CreateIconButton()      - Returns a standard button frame.
        CreateListbox()         - Returns a Listbox object.
        CreateOptionsButton()   - Returns a standard button frame.
        CreateSlider()          - Returns a Slider object.
        CreateColorSwatch()     - Returns a ColorSwatch object.

~~~~~~~~~~~~~~~
   Checkbox
~~~~~~~~~~~~~~~

    Functions:
        Configure()
        Disable()
        Enable()
        GetChecked()
        SetChecked()
        SetClickHandler( func )
        SetLabel()
        SetTooltip()

    Callbacks:
        clickHandler()      - Called when the checkbox is clicked.

    Variables:
        checkFrame
        fontString

~~~~~~~~~~~~~~~
   Dropdown
~~~~~~~~~~~~~~~

    Functions:
        AddItem( text, id )
        Clear()
        Configure()
        Disable()
        Enable()
        GetNumItems()
        GetSelectedID()
        GetSelectedIndex()
        GetSelectedText()
        HideSelections()
        RemoveItem()
        SetChangeHandler( func )
        SetLabel()
        SetListboxHeight()
        SetListboxWidth()
        SetSelectedID( id )
        SetSelectedIndex( itemNum ) - itemNum starts at 1, not 0.
        SetSelectedText()
        SetTooltip()
        Sort()

    Callbacks:
        changeHandler( id ) - Called when one of the dropdown's options is selected.

    Variables:
        buttonFrame
        items
        itemIDs
        listbox             - See the Listbox section.
        listboxHeight
        selectedItem        - Selected item's index #.

~~~~~~~~~~~~~~~
   Listbox
~~~~~~~~~~~~~~~

    Functions:
        AddItem( text, bScrollIntoView )
        Clear()
        Configure()
        Disable()
        Enable()
        GetItem()
        GetLine()
        GetNumItems()
        GetNumLines()
        GetOffset()
        GetSelectedItem()   - Returns selected item (text).
        Refresh()
        RemoveItem()
        SetClickHandler( func )
        SetCreateLineHandler( func )
        SetDisplayHandler( func )
        SetOffset()
        SetSelectedItem( itemNumber )

    Callbacks:
        clickHandler()      - Called when a line in the listbox is clicked.
        displayHandler()    - Called when a line is being displayed.
        lineHandler()       - Called when a new line needs to be created.

    Variables:
        displayFrame
        sliderFrame
        upButton
        downButton
        highlightFrame
        items
        lines
        lineCache
        selectedItem        - Selected item's index #.

~~~~~~~~~~~~~~~
    Slider
~~~~~~~~~~~~~~~

    Functions:
        Configure()
        SetLabel()
        SetTooltip()
        SetValueChangedHandler( func )
        SetMinMaxValues()
        SetValueStep()
        GetValue()
        SetValue()
        Enable()
        Disable()

    Callbacks:
        valueChangedHandler()   - Called when the value of the slider is changed.

    Variables:
        sliderFrame
        labelFontString
        labelText

~~~~~~~~~~~~~~~~~~~
    ColorSwatch
~~~~~~~~~~~~~~~~~~~
    * See AceGUIWidget-ColorPicker.lua for future enhancement ideas.

    Functions:
        Disable
        Enable
        GetColor
        SetColor
        SetColorChangedHandler
        SetTooltip
        CloseColorPicker

    Variables:
        borderTexture
        oldDisableHandler
        oldEnableHandler
        
=================================[ EXAMPLES ]==================================
~~~~~~~~~~~~~~~~~~
 Dropdown Example
~~~~~~~~~~~~~~~~~~

    local screenHeight = GetScreenHeight() * UIParent:GetEffectiveScale()
    local dropdownListboxScale = 0.95
    local width = 200 / dropdownListboxScale

    local dropdown = _G.CursorTrailControls.CreateDropdown(MyOptionsFrame)
    dropdown:SetPoint("TOPLEFT", MyOptionsFrame, "TOPLEFT", 16, -16)
    dropdown:Configure(width, "Color Names:", "")  -- (width, label, tooltip text)
    dropdown:SetListboxHeight(screenHeight / dropdownListboxScale)
    dropdown.listbox:SetScale( dropdownListboxScale )

    dropdown:SetChangeHandler(
        function(self, selectedID)
            print("Selected Item ID:", selectedID)
        end
    )

    dropdown:AddItem("Red", 1)      -- or AddItem("Red", "Red") if not using ID#s.
    dropdown:AddItem("White", 2)    -- or AddItem("White", "White") if not using ID#s.
    dropdown:AddItem("Blue", 3)     -- or AddItem("Blue", "Blue") if not using ID#s.

    dropdown:SetSelectedID(2)  -- Selects white by ID.  Or SetSelectedID("White") if not using ID#s.
    
    dropdown:SetSelectedIndex(1)  -- Selects first item in the dropdown.
    
    -- Show a tooltip while hovering over any part of the dropdown.
    local function myDropdown_OnEnter(self, motion)
        GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
        GameTooltip:SetText("Some helpful info about this dropdown menu.")
    end
    local function myDropdown_OnLeave(self, motion)
        GameTooltip:Hide()
    end
    
    dropdown.fullWidthButton:SetScript("OnEnter", myDropdown_OnEnter)
    dropdown.fullWidthButton:SetScript("OnLeave", myDropdown_OnLeave)
    dropdown.buttonFrame:SetScript("OnEnter", myDropdown_OnEnter)
    dropdown.buttonFrame:SetScript("OnLeave", myDropdown_OnLeave)

    
~~~~~~~~~~~~~~~~~~~~~
 ColorSwatch Example
~~~~~~~~~~~~~~~~~~~~~

    -- Assume "MyObjectTexture" already exists and is the thing you want to change the color of.
    -- Something like this ...
    --    MyObjectFrame = CreateFrame("Frame", nil, UIParent)
    --    MyObjectTexture = MyObjectFrame:CreateTexture()
    
    local colorswatch = _G.CursorTrailControls.CreateColorSwatch( MyOptionsFrame )
    colorswatch:SetPoint("TOPLEFT", MyOptionsFrame, "TOPLEFT", 16, -16)
    
    colorswatch:SetColor(1,0,0)  -- RGB (No alpha value.  Opacity slider will be hidden in the color picker.)
        - OR -
    colorswatch:SetColor(1,0,0, 1)  -- RGBA (Alpha value specified.  Opacity slider will be shown in the color picker.)
    
    colorswatch:SetColorChangedHandler(function(self) MyObjectTexture:SetVertexColor(self.r, self.g, self.b, self.a) end)

-------------------------------------------------------------------------------]]


CursorTrailControls = {}
CursorTrailControls.AddonName = ...  -- (i.e.  "CursorTrail")


-------------------------------------------------------------------------------
-- Private variables.
-------------------------------------------------------------------------------

-- Prevent tainting global _.
local _

-- Backdrop table to be reused for sliders.
local sliderBackdrop

-- Emphasis shown when a listbox entry is moused over.
local emphasizeFrame

-- Listbox used for dropdowns.
local dropdownListboxFrame

-- Used for correctly calculating string widths.
local calcFontString

-- Height of lines in listboxes and dropdown menus.
local kListboxLineHeight = 17  --DJUadded  (and changed from 20)

-- Color Palette Swatches Frame
local colorPaletteFrame
local kColorPickerDefaultHeight = 200


-------------------------------------------------------------------------------
-- Listbox functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Shows the highlight frame over the passed line.
-- ****************************************************************************
local function Listbox_ShowHighlight(this, line)
    local highlight = this.highlightFrame
    highlight:ClearAllPoints()
    highlight:SetParent(line)
    highlight:SetPoint("TOPLEFT")
    highlight:SetPoint("BOTTOMRIGHT")
    highlight:Show()

    if (emphasizeFrame:GetParent() == line) then emphasizeFrame:Hide() end
end


-- ****************************************************************************
-- Shows or hides the scroll bar and resizes the display area as necessary.
-- ****************************************************************************
local function Listbox_HandleScrollbar(this)
    -- Show or hide the scroll bar if there are more items than will fit on the page.
    local display = this.displayFrame
    local slider = this.sliderFrame
    if (#this.items <= #this.lines) then
        slider:Hide()
        display:SetPoint("BOTTOMRIGHT")
    else
        display:SetPoint("BOTTOMRIGHT", display:GetParent(), "BOTTOMRIGHT", -16, 0)
        slider:Show()
    end
end


-- ****************************************************************************
-- Returns whether the listbox is fully configured.
-- ****************************************************************************
local function Listbox_IsConfigured(this)
    return this.configured and this.lineHandler and this.displayHandler
end


-- ****************************************************************************
-- Returns the current offset.
-- ****************************************************************************
local function Listbox_GetOffset(this)
    return this.sliderFrame:GetValue()
end


-- ****************************************************************************
-- Returns the current offset.
-- ****************************************************************************
local function Listbox_SetOffset(this, offset)
    this.sliderFrame:SetValue(offset)
end


-- ****************************************************************************
-- Called when the listbox needs to be refreshed.
-- ****************************************************************************
local function Listbox_Refresh(this)
    -- Don't do anything if the listbox isn't configured.
    if (not Listbox_IsConfigured(this)) then return end

    -- Handle scroll bar showing / resizing.
    Listbox_HandleScrollbar(this)

    -- Hide the highlight.
    this.highlightFrame:Hide()

    -- Show or hide the correct lines depending on how many items there are and
    -- apply a highlight to the selected item.
    local selectedItem = this.selectedItem
    local isSelected
    for lineNum, line in ipairs(this.lines) do
        if (lineNum > #this.items) then
            line:Hide()
        else
            line.itemNumber = lineNum + Listbox_GetOffset(this)
            line:Show()

            -- Move the highlight to the selected line and show it.
            if (selectedItem == line.itemNumber) then
                Listbox_ShowHighlight(this, line)
        isSelected = true
            else
                isSelected = false
            end

            if (this.displayHandler) then this:displayHandler(line, this.items[line.itemNumber], isSelected) end
        end
    end
end


-- ****************************************************************************
-- Called when the listbox is scrolled up.
-- ****************************************************************************
local function Listbox_ScrollUp(this)
    local slider = this.sliderFrame
    slider:SetValue(slider:GetValue() -  slider:GetValueStep())
end


-- ****************************************************************************
-- Called when the listbox is scrolled down.
-- ****************************************************************************
local function Listbox_ScrollDown(this)
    local slider = this.sliderFrame
    slider:SetValue(slider:GetValue() + slider:GetValueStep())
end


-- ****************************************************************************
-- Called when one of the lines in the listbox is clicked.
-- ****************************************************************************
local function Listbox_OnClickLine(this)
    local listbox = this:GetParent():GetParent()
    listbox.selectedItem = this.lineNumber + Listbox_GetOffset(listbox)

    Listbox_ShowHighlight(listbox, this)

    if (listbox.clickHandler) then listbox:clickHandler(this, listbox.items[listbox.selectedItem]) end
end


-- ****************************************************************************
-- Called when the mouse enters a line.
-- ****************************************************************************
local function Listbox_OnEnterLine(this)
    local listbox = this:GetParent():GetParent()
    if (this.itemNumber ~= listbox.selectedItem) then
        emphasizeFrame:ClearAllPoints()
        emphasizeFrame:SetParent(this)
        emphasizeFrame:SetPoint("TOPLEFT")
        emphasizeFrame:SetPoint("BOTTOMRIGHT")
        emphasizeFrame:Show()
    end

    if (this.tooltip) then
        GameTooltip:SetOwner(this, this.tooltipAnchor or "ANCHOR_RIGHT")
        GameTooltip:SetText(this.tooltip, nil, nil, nil, nil, 1)
    end
end


-- ****************************************************************************
-- Called when the mouse leaves a line.
-- ****************************************************************************
local function Listbox_OnLeaveLine(this)
    emphasizeFrame:Hide()
    GameTooltip:Hide()
end


-- ****************************************************************************
-- Called when the scroll up button is pressed.
-- ****************************************************************************
local function Listbox_OnClickUp(this)
    local listbox = this:GetParent():GetParent()
    Listbox_ScrollUp(listbox)
    PlaySound(826)
end


-- ****************************************************************************
-- Called when the scroll down button is pressed.
-- ****************************************************************************
local function Listbox_OnClickDown(this)
    local listbox = this:GetParent():GetParent()
    Listbox_ScrollDown(listbox)
    PlaySound(827)
end


-- ****************************************************************************
-- Called when the mouse wheel is scrolled in the display frame.
-- ****************************************************************************
local function Listbox_OnMouseWheel(this, delta)
    local listbox = this:GetParent()
    if (delta < 0) then
        Listbox_ScrollDown(listbox)
    elseif (delta > 0) then
        Listbox_ScrollUp(listbox)
    end
end


-- ****************************************************************************
-- Called when the scroll bar slider is changed.
-- ****************************************************************************
local function Listbox_OnValueChanged(this, value)
    Listbox_Refresh(this:GetParent())
end


-- ****************************************************************************
-- Creates a new line using the register create line handler.
-- ****************************************************************************
local function Listbox_CreateLine(this)
    -- Get a line from cache if there are any otherwise call the registered line
    -- handler to create a new line.
    local lineCache = this.lineCache
    local line = (#lineCache > 0) and table.remove(lineCache) or this:lineHandler()

    line:SetParent(this.displayFrame)
    line:SetHeight(this.lineHeight)
    line:ClearAllPoints()
    line:SetScript("OnClick", Listbox_OnClickLine)
    line:SetScript("OnEnter", Listbox_OnEnterLine)
    line:SetScript("OnLeave", Listbox_OnLeaveLine)

    local lines = this.lines
    if (#lines == 0) then
        line:SetPoint("TOPLEFT")
        line:SetPoint("TOPRIGHT")
    else
        line:SetPoint("TOPLEFT", lines[#lines], "BOTTOMLEFT")
        line:SetPoint("TOPRIGHT", lines[#lines], "BOTTOMRIGHT")
    end

    lines[#lines+1] = line
    line.lineNumber = #lines
end


-- ****************************************************************************
-- Reconfigures the listbox if it was already configured.
-- ****************************************************************************
local function Listbox_Reconfigure(this, width, height, lineHeight)
    -- Don't allow negative widths.
    if (width < 0) then width = 0 end

    -- Setup container frame.
    this:SetWidth(width)
    this:SetHeight(height)

    -- Setup line calculations.
    this.lineHeight = lineHeight
    this.linesPerPage = math.floor(height / lineHeight)

    -- Resize the line height of existing lines.
    for _, line in ipairs(this.lines) do
        line:SetHeight(this.lineHeight)
    end

    -- Add lines if more will fit on the page and they are needed.
    local lines = this.lines
    if (#this.items > #lines) then
        while (#lines < this.linesPerPage and #this.items > #lines) do
            Listbox_CreateLine(this)
        end
    end

    -- Remove and cache lines that will no longer fit on the page.
    local lineCache = this.lineCache
    for x = this.linesPerPage+1, #lines do
        lines[#lines]:Hide()
        lineCache[#lineCache+1] = table.remove(lines)
    end

    -- Setup slider frame.
    local slider = this.sliderFrame
    slider:Hide()
    slider:SetMinMaxValues(0, math.max(#this.items - #this.lines, 0))
    slider:SetValue(0)

    Listbox_Refresh(this)
end


-- ****************************************************************************
-- Configures the listbox.
-- ****************************************************************************
local function Listbox_Configure(this, width, height, lineHeight)
    -- Don't do anything if required parameters are invalid.
    if (not width or not height or not lineHeight) then return end

    if (Listbox_IsConfigured(this)) then Listbox_Reconfigure(this, width, height, lineHeight) return end

    -- Don't allow negative widths.
    if (width < 0) then width = 0 end

    -- Setup container frame.
    this:SetWidth(width)
    this:SetHeight(height)

    -- Setup slider frame.
    local slider = this.sliderFrame
    slider:SetMinMaxValues(0, 0)
    slider:SetValue(0)

    -- Setup line calculations.
    this.lineHeight = lineHeight
    this.linesPerPage = math.floor(height / lineHeight)

    this.configured = true
end


-- ****************************************************************************
-- Set the function to be called when a new line needs to be created.  The
-- called function must return a "Button" frame.
-- ****************************************************************************
local function Listbox_SetCreateLineHandler(this, handler)
    this.lineHandler = handler
end


-- ****************************************************************************
-- Set the function to be called when a line is being displayed.
-- It is passed the line frame to be populated, and the value associated
-- with that line.
-- ****************************************************************************
local function Listbox_SetDisplayHandler(this, handler)
    this.displayHandler = handler
end


-- ****************************************************************************
-- Set the function to be called when a line in the listbox is clicked.
-- It is passed the line frame, and the value associated with that line.
-- ****************************************************************************
local function Listbox_SetClickHandler(this, handler)
    this.clickHandler = handler
end


-- ****************************************************************************
-- Returns the passed item number from the listbox.
-- ****************************************************************************
local function Listbox_GetItem(this, itemNumber)
    return this.items[itemNumber]
end


-- ****************************************************************************
-- Adds the passed item to the listbox.
-- ****************************************************************************
local function Listbox_AddItem(this, key, forceVisible)
    -- Don't do anything if the listbox isn't configured.
    if (not Listbox_IsConfigured(this)) then return end

    -- Add the passed key to the items list.
    local items = this.items
    items[#items + 1] = key

    --  Create a new line if the max number allowed per page hasn't been reached.
    local lines = this.lines
    if (#lines < this.linesPerPage) then
        Listbox_CreateLine(this)
    end

    -- Set the new max offset value.
    local maxOffset = math.max(#items - #lines, 0)
    this.sliderFrame:SetMinMaxValues(0, maxOffset)

    -- Make sure the newly added item is visible if the force flag is set.
    if (forceVisible) then Listbox_SetOffset(this, maxOffset) end

    Listbox_Refresh(this)
end


-- ****************************************************************************
-- Removes the passed item number from the listbox.
-- ****************************************************************************
local function Listbox_RemoveItem(this, itemNumber)
    -- Don't do anything if the listbox isn't configured.
    if (not Listbox_IsConfigured(this)) then return end

    local items = this.items
    table.remove(items, itemNumber)

    -- Set the new max offset value.
    this.sliderFrame:SetMinMaxValues(0, math.max(#items - #this.lines, 0))

    Listbox_Refresh(this)
end


-- ****************************************************************************
-- Returns the number of items in the listbox.
-- ****************************************************************************
local function Listbox_GetNumItems(this)
    return #this.items
end


-- ****************************************************************************
-- Returns the selected item from the listbox.
-- ****************************************************************************
local function Listbox_GetSelectedItem(this)
    if (this.selectedItem ~= 0) then return this.items[this.selectedItem] end
end


-- ****************************************************************************
-- Sets the selected item for the listbox.
-- ****************************************************************************
local function Listbox_SetSelectedItem(this, itemNumber)
    -- Don't do anything if the listbox isn't configured.
    if (not Listbox_IsConfigured(this)) then return end

    this.selectedItem = itemNumber <= #this.items and itemNumber or 0

    -- Highlight the selected line if it's visible.
    local line = this.lines[this.selectedItem - this.sliderFrame:GetValue()]
    if (line) then Listbox_ShowHighlight(this, line) end
end


-- ****************************************************************************
-- Returns the line object from the listbox.
-- ****************************************************************************
local function Listbox_GetLine(this, lineNumber)
    local lines = this.lines
    if (lineNumber <= #lines) then return lines[lineNumber] end
end


-- ****************************************************************************
-- Returns the number of lines in the listbox.
-- ****************************************************************************
local function Listbox_GetNumLines(this)
    return math.min(#this.lines, #this.items)
end


-- ****************************************************************************
-- Clears the listbox contents.
-- ****************************************************************************
local function Listbox_Clear(this)
    -- Don't do anything if the listbox isn't configured.
    if (not Listbox_IsConfigured(this)) then return end

    local items = this.items
    for k, v in ipairs(items) do
        items[k] = nil
    end

    -- Set the new max offset value.
    this.sliderFrame:SetMinMaxValues(0, 0)

    this.selectedItem = 0

    Listbox_Refresh(this)
end


-- ****************************************************************************
-- Disables the listbox.
-- ****************************************************************************
local function Listbox_Disable(this)
    this.displayFrame:EnableMouseWheel(false)
    this.sliderFrame:EnableMouse(false)
    this.upButton:Disable()
    this.downButton:Disable()
end


-- ****************************************************************************
-- Enables the listbox.
-- ****************************************************************************
local function Listbox_Enable(this)
    this.displayFrame:EnableMouseWheel(true)
    this.sliderFrame:EnableMouse(true)
    this.upButton:Enable()
    this.downButton:Enable()
end


-- ****************************************************************************
-- Creates and returns a listbox object ready to be configured.
-- ****************************************************************************
local function CreateListbox(parent)
    -- Create the frame used to emphasize the entry the mouse is over.
    if (not emphasizeFrame) then
        emphasizeFrame = CreateFrame("Frame")

        local texture = emphasizeFrame:CreateTexture(nil, "ARTWORK")
        texture:SetTexture("Interface\\QuestFrame\\UI-QuestLogTitleHighlight")
        texture:SetBlendMode("ADD")
        texture:SetPoint("TOPLEFT", emphasizeFrame, "TOPLEFT")
        texture:SetPoint("BOTTOMRIGHT", emphasizeFrame, "BOTTOMRIGHT")
    end

    -- Create container frame.
    local listbox = CreateFrame("Frame", nil, parent)

    -- Highlight frame.
    local highlight = CreateFrame("Frame")

    local texture = highlight:CreateTexture(nil, "ARTWORK")
    texture:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
    texture:SetBlendMode("ADD")
    texture:SetPoint("TOPLEFT", highlight, "TOPLEFT")
    texture:SetPoint("BOTTOMRIGHT", highlight, "BOTTOMRIGHT")

    -- Create display area.
    local display = CreateFrame("Frame", nil, listbox)
    display:SetPoint("TOPLEFT", listbox, "TOPLEFT")
    display:SetPoint("BOTTOMRIGHT", listbox, "BOTTOMRIGHT")

    -- Create slider to track the position.
    local slider = CreateFrame("Slider", nil, listbox)
    slider:Hide()
    slider:SetWidth(16)
    slider:SetPoint("TOPRIGHT", listbox, "TOPRIGHT", 0, -16)
    slider:SetPoint("BOTTOMRIGHT", listbox, "BOTTOMRIGHT", 0, 16)
    slider:SetThumbTexture("Interface\\Buttons\\UI-ScrollBar-Knob")
    slider:SetValueStep(1)
    slider:SetObeyStepOnDrag(true)
    slider:SetScript("OnValueChanged", Listbox_OnValueChanged)

    -- Up button.
    local upButton = CreateFrame("Button", nil, slider, "UIPanelScrollUpButtonTemplate")
    upButton:SetPoint("BOTTOM", slider, "TOP")
    upButton:SetScript("OnClick", Listbox_OnClickUp)

    -- Down button.
    local downButton = CreateFrame("Button", nil, slider, "UIPanelScrollDownButtonTemplate")
    downButton:SetPoint("TOP", slider, "BOTTOM")
    downButton:SetScript("OnClick", Listbox_OnClickDown)


    -- Make it work with the mouse wheel.
    display:EnableMouseWheel(true)
    display:SetScript("OnMouseWheel", Listbox_OnMouseWheel)


    -- Extension functions.
    listbox.Configure               = Listbox_Configure
    listbox.SetCreateLineHandler    = Listbox_SetCreateLineHandler
    listbox.SetDisplayHandler       = Listbox_SetDisplayHandler
    listbox.SetClickHandler         = Listbox_SetClickHandler
    listbox.GetOffset               = Listbox_GetOffset
    listbox.SetOffset               = Listbox_SetOffset
    listbox.GetItem                 = Listbox_GetItem
    listbox.AddItem                 = Listbox_AddItem
    listbox.RemoveItem              = Listbox_RemoveItem
    listbox.GetNumItems             = Listbox_GetNumItems
    listbox.GetSelectedItem         = Listbox_GetSelectedItem
    listbox.SetSelectedItem         = Listbox_SetSelectedItem
    listbox.GetLine                 = Listbox_GetLine
    listbox.GetNumLines             = Listbox_GetNumLines
    listbox.Refresh                 = Listbox_Refresh
    listbox.Clear                   = Listbox_Clear
    listbox.Disable                 = Listbox_Disable
    listbox.Enable                  = Listbox_Enable

    -- Track internal values.
    listbox.displayFrame = display
    listbox.sliderFrame = slider
    listbox.upButton = upButton
    listbox.downButton = downButton
    listbox.highlightFrame = highlight
    listbox.items = {}
    listbox.lines = {}
    listbox.lineCache = {}
    listbox.selectedItem = 0
    return listbox
end


-------------------------------------------------------------------------------
-- Checkbox functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Called when the internal checkbutton is clicked.
-- ****************************************************************************
local function Checkbox_OnClick(this)
    local isChecked = this:GetChecked() and true or false
    if (isChecked) then PlaySound(856) else PlaySound(857) end

    local checkbox = this:GetParent()
    if (checkbox.clickHandler) then checkbox:clickHandler(isChecked) end
end


-- ****************************************************************************
-- Called when the mouse enters the internal checkbutton.
-- ****************************************************************************
local function Checkbox_OnEnter(this)
    if (this.tooltip) then
        GameTooltip:SetOwner(this, this.tooltipAnchor or "ANCHOR_RIGHT")
        GameTooltip:SetText(this.tooltip, nil, nil, nil, nil, 1)
    end
end


-- ****************************************************************************
-- Called when the mouse leaves the internal checkbutton.
-- ****************************************************************************
local function Checkbox_OnLeave(this)
    GameTooltip:Hide()
end


-- ****************************************************************************
-- Sets the label for the checkbox.
-- ****************************************************************************
local function Checkbox_SetLabel(this, label)
    local fontString = this.fontString
    fontString:SetText(label or "")
    calcFontString:SetText(label or "")
    local width = this.checkFrame:GetWidth() + calcFontString:GetStringWidth() + 2
    this:SetWidth(math.ceil(width))
end


-- ****************************************************************************
-- Sets the tooltip for the checkbox.
-- ****************************************************************************
local function Checkbox_SetTooltip(this, tooltip)
    this.checkFrame.tooltip = tooltip
end


-- ****************************************************************************
-- Configures the checkbox.
-- ****************************************************************************
local function Checkbox_Configure(this, size, label, tooltip)
    -- Don't do anything if required parameters are invalid.
    if (not size) then return end

    -- Setup the container frame.
    this:SetHeight(size)

    -- Setup the checkbox dimensions.
    local check = this.checkFrame
    check:SetWidth(size)
    check:SetHeight(size)

    -- Setup the label and tooltip.
    Checkbox_SetLabel(this, label)
    Checkbox_SetTooltip(this, tooltip)

    this.configured = true
end


-- ****************************************************************************
-- Sets the function to be called when the checkbox is clicked.
-- It is passed the checkbox and whether or not it's checked.
-- ****************************************************************************
local function Checkbox_SetClickHandler(this, handler)
    this.clickHandler = handler
end


-- ****************************************************************************
-- Returns whether or not the checkbox is checked.
-- ****************************************************************************
local function Checkbox_GetChecked(this)
    return this.checkFrame:GetChecked() and true or false
end


-- ****************************************************************************
-- Sets the checked state.
-- ****************************************************************************
local function Checkbox_SetChecked(this, isChecked)
    this.checkFrame:SetChecked(isChecked)
end


-- ****************************************************************************
-- Disables the checkbox.
-- ****************************************************************************
local function Checkbox_Disable(this)
    this.checkFrame:Disable()
    this.fontString:SetTextColor(0.5, 0.5, 0.5)
end


-- ****************************************************************************
-- Enables the checkbox.
-- ****************************************************************************
local function Checkbox_Enable(this)
    this.checkFrame:Enable()
    this.fontString:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
end


-- ****************************************************************************
-- Creates and returns a checkbox object ready to be configured.
-- ****************************************************************************
local function CreateCheckbox(parent)
    -- XXX Hack to work around apparent WoW API bug not returning correct string width.
    if (not calcFontString) then
        calcFontString = UIParent:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    end

    -- Create container frame.
    local checkbox = CreateFrame("Frame", nil, parent)

    -- Create check button.
    local checkbutton = CreateFrame("CheckButton", nil, checkbox)
    checkbutton:SetPoint("TOPLEFT")
    checkbutton:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up")
    checkbutton:SetPushedTexture("Interface\\Buttons\\UI-CheckBox-Down")
    checkbutton:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight")
    checkbutton:SetDisabledCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check-Disabled")
    checkbutton:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
    checkbutton:SetScript("OnClick", Checkbox_OnClick)
    checkbutton:SetScript("OnEnter", Checkbox_OnEnter)
    checkbutton:SetScript("OnLeave", Checkbox_OnLeave)

    -- Label.
    local fontString = checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    fontString:SetPoint("LEFT", checkbutton, "RIGHT", 2, 0)
    fontString:SetPoint("RIGHT", checkbox, "RIGHT", 0, 0)
    fontString:SetJustifyH("LEFT")


    -- Extension functions.
    checkbox.Configure          = Checkbox_Configure
    checkbox.SetLabel           = Checkbox_SetLabel
    checkbox.SetTooltip         = Checkbox_SetTooltip
    checkbox.SetClickHandler    = Checkbox_SetClickHandler
    checkbox.GetChecked         = Checkbox_GetChecked
    checkbox.SetChecked         = Checkbox_SetChecked
    checkbox.Disable            = Checkbox_Disable
    checkbox.Enable             = Checkbox_Enable

    -- Track internal values.
    checkbox.checkFrame = checkbutton
    checkbox.fontString = fontString
    return checkbox
end



-------------------------------------------------------------------------------
-- Button functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Called when the button is clicked.
-- ****************************************************************************
local function Button_OnClick(this)
    PlaySound(856)
    if (this.clickHandler) then this:clickHandler() end
end


-- ****************************************************************************
-- Called when the mouse enters the button.
-- ****************************************************************************
local function Button_OnEnter(this)
    if (this.tooltip) then
        GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
        GameTooltip:SetText(this.tooltip, nil, nil, nil, nil, 1)
    end
end


-- ****************************************************************************
-- Called when the mouse leaves the button.
-- ****************************************************************************
local function Button_OnLeave(this)
    GameTooltip:Hide()
end


-- ****************************************************************************
-- Sets the tooltip for the button.
-- ****************************************************************************
local function Button_SetTooltip(this, tooltip)
    this.tooltip = tooltip
end


-- ****************************************************************************
-- Sets the function to be called when the button is clicked.
-- ****************************************************************************
local function Button_SetClickHandler(this, handler)
    this.clickHandler = handler
end



-- ****************************************************************************
-- Creates and returns a generic button object.  Only used internally.
-- ****************************************************************************
local function CreateButton(parent)
    -- Create button frame.
    local button = CreateFrame("Button", nil, parent)
    button:SetScript("OnClick", Button_OnClick)
    button:SetScript("OnEnter", Button_OnEnter)
    button:SetScript("OnLeave", Button_OnLeave)

    -- Extension functions.
    button.SetClickHandler  = Button_SetClickHandler
    button.SetTooltip   = Button_SetTooltip

    return button
end


-------------------------------------------------------------------------------
-- OptionButton functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Set the label for the option button.
-- ****************************************************************************
local function OptionButton_SetLabel(this, label)
    this:SetText(label or "")
    this:SetWidth(this:GetFontString():GetStringWidth() + 50)
end


-- ****************************************************************************
-- Configures the option button.
-- ****************************************************************************
local function OptionButton_Configure(this, height, label, tooltip)
    this:SetHeight(height)
    OptionButton_SetLabel(this, label)
    Button_SetTooltip(this, tooltip)
end


-- ****************************************************************************
-- Creates and returns a push button object ready to be configured.
-- ****************************************************************************
local function CreateOptionButton(parent)
    -- Create generic button.
    local button = CreateButton(parent)
    local fontString = button:CreateFontString(nil, "OVERLAY")
    fontString:SetPoint("CENTER")
    button:SetFontString(fontString)
    button:SetNormalFontObject(GameFontNormalSmall)
    button:SetHighlightFontObject(GameFontHighlightSmall)
    button:SetDisabledFontObject(GameFontDisableSmall)
    button:SetNormalTexture("Interface\\Buttons\\UI-Panel-Button-Up")
    button:SetPushedTexture("Interface\\Buttons\\UI-Panel-Button-Down")
    button:SetDisabledTexture("Interface\\Buttons\\UI-Panel-Button-Disabled")
    button:SetHighlightTexture("Interface\\Buttons\\UI-Panel-Button-Highlight")
    button:GetNormalTexture():SetTexCoord(0, 0.625, 0, 0.6875)
    button:GetPushedTexture():SetTexCoord(0, 0.625, 0, 0.6875)
    button:GetDisabledTexture():SetTexCoord(0, 0.625, 0, 0.6875)
    button:GetHighlightTexture():SetTexCoord(0, 0.625, 0, 0.6875)


    -- Extension functions.
    button.SetLabel         = OptionButton_SetLabel
    button.Configure        = OptionButton_Configure

    return button
end


--[[
-------------------------------------------------------------------------------
-- IconButton functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Creates and returns an icon button object ready to be configured.
-- ****************************************************************************
local function CreateIconButton(parent, buttonType)
    -- Create generic button.
    local button = CreateButton(parent)
    local path =  "Interface\\Addons\\" .. CursorTrailControls.AddonName .. "\\Artwork\\"  -- DJUadded
    button:SetWidth(24)
    button:SetHeight(24)
    button:SetNormalTexture(path .. buttonType .. "Icon")
    button:SetDisabledTexture(path .. buttonType .. "IconDisable")
    button:SetHighlightTexture(path .. buttonType .. "IconHighlight")

    return button
end
]]


-------------------------------------------------------------------------------
-- Slider functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Called when the value of the slider changes.
-- ****************************************************************************
local function Slider_OnValueChanged(this, value)
    local slider = this:GetParent()
    if (slider.labelText ~= "") then
        slider.labelFontString:SetText(slider.labelText .. ": " .. value)
    else
        slider.labelFontString:SetText(value)
    end
    if (slider.valueChangedHandler) then slider:valueChangedHandler(value) end
end


-- ****************************************************************************
-- Called when the mouse enters the slider.
-- ****************************************************************************
local function Slider_OnEnter(this)
    if (this.tooltip) then
        GameTooltip:SetOwner(this, this.tooltipAnchor or "ANCHOR_RIGHT")
        GameTooltip:SetText(this.tooltip, nil, nil, nil, nil, 1)
    end
end


-- ****************************************************************************
-- Called when the mouse leaves the slider.
-- ****************************************************************************
local function Slider_OnLeave(this)
    GameTooltip:Hide()
end


-- ****************************************************************************
-- Sets the label for the slider.
-- ****************************************************************************
local function Slider_SetLabel(this, label)
    this.labelText = label or ""
    if (this.labelText ~= "") then
        this.labelFontString:SetText(this.labelText .. ": " .. this:GetValue())
    else
        this.labelFontString:SetText(this:GetValue())
    end
end


-- ****************************************************************************
-- Sets the tooltip for the slider.
-- ****************************************************************************
local function Slider_SetTooltip(this, tooltip)
    this.sliderFrame.tooltip = tooltip
end


-- ****************************************************************************
-- Configures the slider.
-- ****************************************************************************
local function Slider_Configure(this, width, label, tooltip)
    this:SetWidth(width)
    Slider_SetLabel(this, label)
    Slider_SetTooltip(this, tooltip)
end


-- ****************************************************************************
-- Sets the function to be called when the value of the slider is changed.
-- It is passed the slider and the new value.
-- ****************************************************************************
local function Slider_SetValueChangedHandler(this, handler)
    this.valueChangedHandler = handler
end


-- ****************************************************************************
-- Sets the minimum and maximum values for the slider.
-- ****************************************************************************
local function Slider_SetMinMaxValues(this, minValue, maxValue)
    this.sliderFrame:SetMinMaxValues(minValue, maxValue)
end


-- ****************************************************************************
-- Sets how far the slider moves with each "tick."
-- ****************************************************************************
local function Slider_SetValueStep(this, value)
    this.sliderFrame:SetValueStep(value)
end


-- ****************************************************************************
-- Sets the current value of the slider.
-- ****************************************************************************
local function Slider_GetValue(this)
    return this.sliderFrame:GetValue()
end


-- ****************************************************************************
-- Sets the current value of the slider.
-- ****************************************************************************
local function Slider_SetValue(this, value)
    this.sliderFrame:SetValue(value)
end


-- ****************************************************************************
-- Disables the slider.
-- ****************************************************************************
local function Slider_Disable(this)
    this.sliderFrame:EnableMouse(false)
    this.labelFontString:SetTextColor(0.5, 0.5, 0.5)
end


-- ****************************************************************************
-- Enables the slider.
-- ****************************************************************************
local function Slider_Enable(this)
    this.sliderFrame:EnableMouse(true)
    this.labelFontString:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
end


-- ****************************************************************************
-- Creates and returns a slider object ready to be configured.
-- ****************************************************************************
local function CreateSlider(parent)
    -- Create the backdrop table if it hasn't already been so it can be reused.
    if (not sliderBackdrop) then
        sliderBackdrop = {
            bgFile = "Interface\\Buttons\\UI-SliderBar-Background",
            edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
            tile = true, tileSize = 8, edgeSize = 8,
            insets = {left=3, right=3, top=6, bottom=6},
        }
    end

    -- Create container frame.
    local slider = CreateFrame("Frame", nil, parent)
    slider:SetHeight(30)

    -- Create slider.
    local sliderFrame = CreateFrame("Slider", nil, slider)
    sliderFrame:SetOrientation("HORIZONTAL")
    sliderFrame:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Horizontal")
    sliderFrame:SetPoint("LEFT")
    sliderFrame:SetPoint("RIGHT")
    sliderFrame:SetHeight(16)
    sliderFrame:SetBackdrop(sliderBackdrop)
    sliderFrame:SetObeyStepOnDrag(true)
    sliderFrame:SetScript("OnValueChanged", Slider_OnValueChanged)
    sliderFrame:SetScript("OnEnter", Slider_OnEnter)
    sliderFrame:SetScript("OnLeave", Slider_OnLeave)


    -- Label.
    local label = slider:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    label:SetPoint("BOTTOM", sliderFrame, "TOP", 0, 0)

    -- Extension functions.
    slider.Configure                = Slider_Configure
    slider.SetLabel                 = Slider_SetLabel
    slider.SetTooltip               = Slider_SetTooltip
    slider.SetValueChangedHandler   = Slider_SetValueChangedHandler
    slider.SetMinMaxValues          = Slider_SetMinMaxValues
    slider.SetValueStep             = Slider_SetValueStep
    slider.GetValue                 = Slider_GetValue
    slider.SetValue                 = Slider_SetValue
    slider.Enable                   = Slider_Enable
    slider.Disable                  = Slider_Disable


    -- Track internal values.
    slider.sliderFrame = sliderFrame
    slider.labelFontString = label
    slider.labelText = ""
    return slider
end


-------------------------------------------------------------------------------
-- Dropdown functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Hides the dropdown listbox frame that holds the selections.
-- ****************************************************************************
local function Dropdown_HideSelections(this)
    if (dropdownListboxFrame:IsShown() and dropdownListboxFrame.dropdown == this) then
        dropdownListboxFrame:Hide()
    end
end

-- ****************************************************************************
-- Called when the mouse enters the dropdown.
-- ****************************************************************************
local function Dropdown_OnEnter(this)
    if (this.tooltip) then
        GameTooltip:SetOwner(this, this.tooltipAnchor or "ANCHOR_RIGHT")
        GameTooltip:SetText(this.tooltip, nil, nil, nil, nil, 1)
    end
end


-- ****************************************************************************
-- Called when the mouse leaves the dropdown.
-- ****************************************************************************
local function Dropdown_OnLeave(this)
    GameTooltip:Hide()
end


-- ****************************************************************************
-- Called when the dropdown is hidden.
-- ****************************************************************************
local function Dropdown_OnHide(this)
    Dropdown_HideSelections(this)
end


-- ****************************************************************************
-- Called when the button for the dropdown is pressed.
-- ****************************************************************************
local function Dropdown_OnClick(this)
    -- Close the listbox and exit if it's already open for the dropdown.
    local dropdown = this:GetParent()
    if (dropdownListboxFrame:IsShown() and dropdownListboxFrame.dropdown == dropdown) then
        dropdownListboxFrame:Hide()
        return
    end

    -- Resize and move the dropdown listbox frame for the clicked dropdown.
    local height = #dropdown.items * kListboxLineHeight
    local listboxHeight = dropdown.listboxHeight or (kListboxLineHeight * 7)
    local listboxWidth = dropdown.listboxWidth or dropdown:GetWidth()  ----DJUremoved: +20
    height = math.max(math.min(height, listboxHeight), kListboxLineHeight)
    dropdownListboxFrame:SetParent(dropdown:GetParent())
    dropdownListboxFrame:SetHeight(height + 24)
    dropdownListboxFrame:SetWidth(listboxWidth)
    dropdownListboxFrame:ClearAllPoints()
    dropdownListboxFrame:SetPoint("TOPLEFT", dropdown, "BOTTOMLEFT")
    dropdownListboxFrame.dropdown = dropdown

    -- Setup the listbox.
    local listbox = dropdownListboxFrame.listbox
    Listbox_Clear(listbox)
    listbox:SetPoint("TOPLEFT", dropdownListboxFrame, "TOPLEFT", 8, -12)
    listbox:SetPoint("BOTTOMRIGHT", dropdownListboxFrame, "BOTTOMRIGHT", -12, 12)
    Listbox_Configure(listbox, 0, height, kListboxLineHeight)
    for itemNum in ipairs(dropdown.items) do
        Listbox_AddItem(listbox, itemNum)
    end
    Listbox_SetSelectedItem(listbox, dropdown.selectedItem)
    Listbox_SetOffset(listbox, dropdown.selectedItem - 1)

    dropdownListboxFrame:Show()
    dropdownListboxFrame:Raise()
end


-- ****************************************************************************
-- Called by listbox to create a line.
-- ****************************************************************************
local function Dropdown_CreateLine(this)
    local frame = CreateFrame("Button", nil, this)
    local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    fontString:SetPoint("LEFT", frame, "LEFT", 4, 0)  --DJUadded X offset.
    fontString:SetPoint("RIGHT", frame, "RIGHT")
    fontString:SetJustifyH("LEFT")  --DJUadded

    frame.fontString = fontString
    return frame
end


-- ****************************************************************************
-- Called by listbox to display a line.
-- ****************************************************************************
local function Dropdown_DisplayLine(this, line, key, isSelected)
    line.fontString:SetText(dropdownListboxFrame.dropdown.items[key])
    local color = isSelected and HIGHLIGHT_FONT_COLOR or NORMAL_FONT_COLOR
    line.fontString:SetTextColor(color.r, color.g, color.b)
end


-- ****************************************************************************
-- Called when a line is clicked.
-- ****************************************************************************
local function Dropdown_OnClickLine(this, line, value)
    local dropdown = dropdownListboxFrame.dropdown
    dropdown.selectedFontString:SetText(dropdown.items[value])
    dropdown.selectedItem = value
    dropdownListboxFrame:Hide()

    -- Call the registered change handler for the dropdown.
    if (dropdown.changeHandler) then dropdown:changeHandler(dropdown.itemIDs[value]) end
end


-- ****************************************************************************
-- Sets the label for the dropdown.
-- ****************************************************************************
local function Dropdown_SetLabel(this, label)
    this.labelFontString:SetText(label or "")
end


-- ****************************************************************************
-- Sets the tooltip for the dropdown.
-- ****************************************************************************
local function Dropdown_SetTooltip(this, tooltip)
    this.tooltip = tooltip
end


-- ****************************************************************************
-- Configures the dropdown.
-- ****************************************************************************
local function Dropdown_Configure(this, width, label, tooltip)
    -- Don't do anything if required parameters are invalid.
    ----DJUremoved:  if (not width) then return end
    assert(width ~= nil and width > 0)  --DJUadded

    -- Set the width of the dropdown and the max height of the listbox is shown.
    this:SetWidth(width)

    Dropdown_SetLabel(this, label)
    Dropdown_SetTooltip(this, tooltip)
end


-- ****************************************************************************
-- Sets the max height the listbox frame can be for the dropdown.
-- ****************************************************************************
local function Dropdown_SetListboxHeight(this, height)
    this.listboxHeight = height
end

-- ****************************************************************************
-- Sets the width of the listbox frame for the dropdown.
-- ****************************************************************************
local function Dropdown_SetListboxWidth(this, width)
    this.listboxWidth = width
end


-- ****************************************************************************
-- Sets the function to be called when one of the dropdown's options is
-- selected. It is passed the ID for the selected item.
-- ****************************************************************************
local function Dropdown_SetChangeHandler(this, handler)
    this.changeHandler = handler
end


-- ****************************************************************************
-- Returns the number of items in the listbox.
-- ****************************************************************************
local function Dropdown_GetNumItems(this)  --DJUadded
    return #this.items
end


-- ****************************************************************************
-- Adds the passed text and id to the dropdown.
-- ****************************************************************************
local function Dropdown_AddItem(this, text, id)
    this.items[#this.items+1] = text
    this.itemIDs[#this.items] = id
end


-- ****************************************************************************
-- Remove the passed item id from the dropdown.
-- ****************************************************************************
local function Dropdown_RemoveItem(this, id)
    for itemNum, itemID in ipairs(this.itemIDs) do
        if (itemID == id) then
            -- Hide dropdown if it is shown.
            Dropdown_HideSelections(this)

            -- Clear the selected item if it's the item being removed.
            if (itemNum == this.selectedItem) then
                this.selectedItem = 0
                this.selectedFontString:SetText("")
            end

            table.remove(this.items, itemNum)
            table.remove(this.itemIDs, itemNum)
            return
        end
    end
end


-- ****************************************************************************
-- Clears the dropdown.
-- ****************************************************************************
local function Dropdown_Clear(this)
    local items = this.items
    for k, v in ipairs(items) do
        items[k] = nil
    end

    local itemIDs = this.itemIDs
    for k, v in ipairs(itemIDs) do
        itemIDs[k] = nil
    end

    this.selectedFontString:SetText(nil)
end


-- ****************************************************************************
-- Gets the selected text from the dropdown.
-- ****************************************************************************
local function Dropdown_GetSelectedText(this)
    return this.selectedFontString:GetText()
end

--~ >>> UNTESTED...
--~ -- ****************************************************************************
--~ -- Sets the selected item for the dropdown given the text shown in the menu.
--~ -- ****************************************************************************
--~ local function Dropdown_SetSelectedText(this, text)  --DJUadded
--~     for itemNum, itemText in ipairs(this.items) do
--~         if (itemText == text) then
--~             Dropdown_SetSelectedIndex(this, itemNum)
--~             return  -- Done, exit loop.
--~         end
--~     end
--~ end


-- ****************************************************************************
-- Gets the selected index (item number) from the dropdown.
-- ****************************************************************************
local function Dropdown_GetSelectedIndex(this)  --DJUadded
    return this.selectedItem
end


-- ****************************************************************************
-- Sets the selected item for the dropdown given an item number (1-based index).
-- ****************************************************************************
local function Dropdown_SetSelectedIndex(this, itemNum)  --DJUadded
    this.selectedFontString:SetText(this.items[itemNum])
    this.selectedItem = itemNum

--~     -- Call the registered change handler for the dropdown.
--~     if (this.changeHandler) then this:changeHandler(this.itemIDs[itemNum]) end
end


-- ****************************************************************************
-- Gets the selected id from the dropdown.
-- ****************************************************************************
local function Dropdown_GetSelectedID(this)
    if (this.selectedItem) then return this.itemIDs[this.selectedItem] end
end


-- ****************************************************************************
-- Sets the selected item for the dropdown given an item ID.
-- ****************************************************************************
local function Dropdown_SetSelectedID(this, id)
    for itemNum, itemID in ipairs(this.itemIDs) do
        if (itemID == id) then
            Dropdown_SetSelectedIndex(this, itemNum)  --DJUadded
            return  -- Done, exit loop.               --DJUadded
            --DJUremoved:  this.selectedFontString:SetText(this.items[itemNum])
            --DJUremoved:  this.selectedItem = itemNum
            --DJUremoved:  return
        end
    end
end


-- ****************************************************************************
-- Sorts the contents of the dropdown.
-- ****************************************************************************
local function Dropdown_Sort(this)
    local selectedID = Dropdown_GetSelectedID(this)

    -- Sort the dropdown items and associated IDs using an insertion sort.
    local items = this.items
    local itemIDs = this.itemIDs
    local tempItem, tempID, j
    for i = 2, #items do
        tempItem = items[i]
        tempID = itemIDs[i]
        j = i - 1
        while (j > 0 and items[j] > tempItem) do
            items[j + 1] = items[j]
            itemIDs[j + 1] = itemIDs[j]
            j = j - 1
        end
        items[j + 1] = tempItem
        itemIDs[j + 1] = tempID
    end

    Dropdown_SetSelectedID(this, selectedID)
end


-- ****************************************************************************
-- Disables the dropdown.
-- ****************************************************************************
local function Dropdown_Disable(this)
    Dropdown_HideSelections(this)
    this.buttonFrame:Disable()
    this:EnableMouse(false)
    this.labelFontString:SetTextColor(0.5, 0.5, 0.5)
    this.selectedFontString:SetTextColor(0.5, 0.5, 0.5)
end


-- ****************************************************************************
-- Enables the dropdown.
-- ****************************************************************************
local function Dropdown_Enable(this)
    this:EnableMouse(true)
    this.buttonFrame:Enable()
    this.labelFontString:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
    this.selectedFontString:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
end


-- ****************************************************************************
-- Creates the listbox frame that dropdowns use.
-- ****************************************************************************
local function Dropdown_CreateListboxFrame(parent)
    dropdownListboxFrame = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    dropdownListboxFrame:EnableMouse(true)
    dropdownListboxFrame:SetToplevel(true)
    dropdownListboxFrame:SetFrameStrata("FULLSCREEN_DIALOG")
    dropdownListboxFrame:SetBackdrop{
        ----bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",  --DJUchanged
        bgFile = "Interface\\Addons\\" .. CursorTrailControls.AddonName .. "\\Media\\Background-SolidBlack",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        ----insets = {left = 6, right = 6, top = 6, bottom = 6},
        ----insets = {left=2, right=4, top=4, bottom=4},  edgeSize=12,  --DJUadded
        insets = {left=6, right=6, top=6, bottom=6},  edgeSize=24,  --DJUadded
    }
    dropdownListboxFrame:Hide()

    local listbox = CreateListbox(dropdownListboxFrame)
    listbox:SetToplevel(true)
    listbox:SetFrameStrata("FULLSCREEN_DIALOG")
    listbox:SetCreateLineHandler(Dropdown_CreateLine)
    listbox:SetDisplayHandler(Dropdown_DisplayLine)
    listbox:SetClickHandler(Dropdown_OnClickLine)

    dropdownListboxFrame.listbox = listbox

    --DJUadded vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    dropdownListboxFrame:SetClampedToScreen(true)  -- Keep the bottom of the dropdown list on-screen.
    dropdownListboxFrame:SetScript("OnKeyDown", function(this, key)
            -- Close dropdown list when Escape key is pressed.
            local bPassKeyToParent = false
            if key == "ESCAPE" then this:Hide()
            else bPassKeyToParent = true end
            this:SetPropagateKeyboardInput(bPassKeyToParent)
        end)
    --DJUadded ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
end


-- ****************************************************************************
-- Creates and returns a dropdown object ready to be configured.
-- ****************************************************************************
local function CreateDropdown(parent)
    -- Create dropdown listbox if it hasn't already been.
    if (not dropdownListboxFrame) then Dropdown_CreateListboxFrame(parent) end


    -- Create container frame.
    local dropdown = CreateFrame("Frame", nil, parent)
    dropdown:SetHeight(25)  --DJUchanged: Was 38.
    dropdown:EnableMouse(true)
    dropdown:SetScript("OnEnter", Dropdown_OnEnter)
    dropdown:SetScript("OnLeave", Dropdown_OnLeave)
    dropdown:SetScript("OnHide", Dropdown_OnHide)


    -- Left border.
    local left = dropdown:CreateTexture(nil, "BACKGROUND")
    left:SetTexture("Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame")
    left:SetWidth(9)
    left:SetHeight(25)
    left:SetPoint("BOTTOMLEFT")
    left:SetTexCoord(0.125, 0.1953125, 0.28125, 0.671875)

    -- Right border.
    local right = dropdown:CreateTexture(nil, "BACKGROUND")
    right:SetTexture("Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame")
    right:SetWidth(9)
    right:SetHeight(25)
    right:SetPoint("BOTTOMRIGHT")
    right:SetTexCoord(0.7890625, 0.859375, 0.28125, 0.671875)

    -- Middle border.
    local middle = dropdown:CreateTexture(nil, "BACKGROUND")
    middle:SetTexture("Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame")
    middle:SetWidth(76)
    middle:SetHeight(25)
    middle:SetPoint("LEFT", left, "RIGHT", 0, 0)
    middle:SetPoint("RIGHT", right, "LEFT", 0, 0)
    middle:SetTexCoord(0.1953125, 0.7890625, 0.28125, 0.671875)

    -- Label.
    local label = dropdown:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    label:SetPoint("BOTTOMLEFT", left, "TOPLEFT", 2, 2)


    -- Dropdown button.
    local button = CreateFrame("Button", nil, dropdown)
    button:SetWidth(24)
    button:SetHeight(24)
    button:SetPoint("BOTTOMRIGHT", 1, 1)
    button:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up")
    button:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Down")
    button:SetDisabledTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Disabled")
    button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
    button:GetHighlightTexture():SetBlendMode("ADD")
    button:SetScript("OnClick", Dropdown_OnClick)

    --DJUadded vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    local fullWidthButton = CreateFrame("Button", nil, dropdown)
    fullWidthButton:SetPoint("TOPLEFT", dropdown, "TOPLEFT")
    fullWidthButton:SetPoint("BOTTOMRIGHT", button, "BOTTOMLEFT")
    fullWidthButton:SetScript("OnClick", Dropdown_OnClick)
    --DJUadded ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


    -- Selected text.
    local selected = dropdown:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    selected:SetPoint("LEFT", left, "RIGHT")
    selected:SetPoint("RIGHT", button, "LEFT")
    selected:SetJustifyH("LEFT")  --DJUchanged (was "RIGHT")


    -- Extension functions.
    dropdown.Configure          = Dropdown_Configure
    dropdown.SetListboxHeight   = Dropdown_SetListboxHeight
    dropdown.SetListboxWidth    = Dropdown_SetListboxWidth
    dropdown.SetLabel           = Dropdown_SetLabel
    dropdown.SetTooltip         = Dropdown_SetTooltip
    dropdown.SetChangeHandler   = Dropdown_SetChangeHandler
    dropdown.HideSelections     = Dropdown_HideSelections
    dropdown.GetNumItems        = Dropdown_GetNumItems  --DJUadded
    dropdown.AddItem            = Dropdown_AddItem
    dropdown.RemoveItem         = Dropdown_RemoveItem
    dropdown.Clear              = Dropdown_Clear
    dropdown.GetSelectedText    = Dropdown_GetSelectedText
--~ UNTESTED...    dropdown.SetSelectedText    = Dropdown_SetSelectedText  --DJUadded
    dropdown.GetSelectedID      = Dropdown_GetSelectedID
    dropdown.SetSelectedID      = Dropdown_SetSelectedID
    dropdown.GetSelectedIndex   = Dropdown_GetSelectedIndex  --DJUadded
    dropdown.SetSelectedIndex   = Dropdown_SetSelectedIndex  --DJUadded
    dropdown.Sort               = Dropdown_Sort
    dropdown.Disable            = Dropdown_Disable
    dropdown.Enable             = Dropdown_Enable
    dropdown.listbox            = dropdownListboxFrame  --DJUadded

    -- Track internal values.
    dropdown.selectedFontString = selected
    dropdown.buttonFrame = button
    dropdown.labelFontString = label
    dropdown.items = {}
    dropdown.itemIDs = {}
    dropdown.selectedItem = 0  -- index #
    dropdown.fullWidthButton = fullWidthButton  --DJUadded
    return dropdown
end


--[[
-------------------------------------------------------------------------------
-- Editbox functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Called when the editbox has focus and escape is pressed.
-- ****************************************************************************
local function Editbox_OnEscape(this)
    this:ClearFocus()
    local editbox = this:GetParent()
    if (editbox.escapeHandler) then editbox:escapeHandler() end
end


-- ****************************************************************************
-- Called when the editbox loses focus.
-- ****************************************************************************
local function Editbox_OnFocusLost(this)
    this:HighlightText(0, 0)
end


-- ****************************************************************************
-- Called when the editbox gains focus.
-- ****************************************************************************
local function Editbox_OnFocusGained(this)
    this:HighlightText()
end


-- ****************************************************************************
-- Called when the text in the editbox changes.
-- ****************************************************************************
local function Editbox_OnTextChanged(this)
    local editbox = this:GetParent()
    if (editbox.textChangedHandler) then editbox:textChangedHandler() end
end


-- ****************************************************************************
-- Called when the mouse enters the editbox.
-- ****************************************************************************
local function Editbox_OnEnter(this)
    if (this.tooltip) then
        GameTooltip:SetOwner(this, this.tooltipAnchor or "ANCHOR_RIGHT")
        GameTooltip:SetText(this.tooltip, nil, nil, nil, nil, 1)
    end
end


-- ****************************************************************************
-- Called when the mouse leaves the editbox.
-- ****************************************************************************
local function Editbox_OnLeave(this)
    GameTooltip:Hide()
end


-- ****************************************************************************
-- Sets the label for the editbox.
-- ****************************************************************************
local function Editbox_SetLabel(this, label)
    this.labelFontString:SetText(label)
end


-- ****************************************************************************
-- Sets the tooltip for the editbox.
-- ****************************************************************************
local function Editbox_SetTooltip(this, tooltip)
    this.editboxFrame.tooltip = tooltip
end


-- ****************************************************************************
-- Configures the editbox.
-- ****************************************************************************
local function Editbox_Configure(this, width, label, tooltip)
    -- Don't do anything if required parameters are invalid.
    if (not width) then return end

    this:SetWidth(width)
    Editbox_SetLabel(this, label)
    Editbox_SetTooltip(this, tooltip)
end


-- ****************************************************************************
-- Sets the handler to be called when the enter button is pressed.
-- ****************************************************************************
local function Editbox_SetEnterHandler(this, handler)
    this.editboxFrame:SetScript("OnEnterPressed", handler)
end


-- ****************************************************************************
-- Sets the handler to be called when the escape button is pressed.
-- ****************************************************************************
local function Editbox_SetEscapeHandler(this, handler)
    this.escapeHandler = handler
end


-- ****************************************************************************
-- Sets the handler to be called when the text in the editbox changes.
-- ****************************************************************************
local function Editbox_SetTextChangedHandler(this, handler)
    this.textChangedHandler = handler
end


-- ****************************************************************************
-- Sets the focus to the editbox.
-- ****************************************************************************
local function Editbox_SetFocus(this)
    this.editboxFrame:SetFocus()
end


-- ****************************************************************************
-- Gets the text entered in the editbox.
-- ****************************************************************************
local function Editbox_GetText(this)
    return this.editboxFrame:GetText()
end


-- ****************************************************************************
-- Sets the text entered in the editbox.
-- ****************************************************************************
local function Editbox_SetText(this, text)
    return this.editboxFrame:SetText(text or "")
end


-- ****************************************************************************
-- Disables the editbox.
-- ****************************************************************************
local function Editbox_Disable(this)
    this.editboxFrame:EnableMouse(false)
    this.labelFontString:SetTextColor(0.5, 0.5, 0.5)
end

-- ****************************************************************************
-- Enables the editbox.
-- ****************************************************************************
local function Editbox_Enable(this)
    this.editboxFrame:EnableMouse(true)
    this.labelFontString:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
end


-- ****************************************************************************
-- Creates and returns an editbox object ready to be configured.
-- ****************************************************************************
local function CreateEditbox(parent)
    -- Create container frame.
    local editbox = CreateFrame("Frame", nil, parent)
    editbox:SetHeight(32)

    -- Create editbox frame.
    local editboxFrame = CreateFrame("Editbox", nil, editbox)
    editboxFrame:SetHeight(20)
    editboxFrame:SetPoint("BOTTOMLEFT", editbox, "BOTTOMLEFT", 5, 0)
    editboxFrame:SetPoint("BOTTOMRIGHT")
    editboxFrame:SetAutoFocus(false)
    editboxFrame:SetFontObject(ChatFontNormal)
    editboxFrame:SetScript("OnEscapePressed", Editbox_OnEscape)
    editboxFrame:SetScript("OnEditFocusLost", Editbox_OnFocusLost)
    editboxFrame:SetScript("OnEditFocusGained", Editbox_OnFocusGained)
    editboxFrame:SetScript("OnTextChanged", Editbox_OnTextChanged)
    editboxFrame:SetScript("OnEnter", Editbox_OnEnter)
    editboxFrame:SetScript("OnLeave", Editbox_OnLeave)

    -- Left border.
    local left = editboxFrame:CreateTexture(nil, "BACKGROUND")
    left:SetTexture("Interface\\Common\\Common-Input-Border")
    left:SetWidth(8)
    left:SetHeight(20)
    left:SetPoint("LEFT", editboxFrame, "LEFT", -5, 0)
    left:SetTexCoord(0, 0.0625, 0, 0.625)

    -- Right border.
    local right = editboxFrame:CreateTexture(nil, "BACKGROUND")
    right:SetTexture("Interface\\Common\\Common-Input-Border")
    right:SetWidth(8)
    right:SetHeight(20)
    right:SetPoint("RIGHT")
    right:SetTexCoord(0.9375, 1, 0, 0.625)

    -- Middle border.
    local middle = editboxFrame:CreateTexture(nil, "BACKGROUND")
    middle:SetTexture("Interface\\Common\\Common-Input-Border")
    middle:SetWidth(10)
    middle:SetHeight(20)
    middle:SetPoint("LEFT", left, "RIGHT", 0, 0)
    middle:SetPoint("RIGHT", right, "LEFT", 0, 0)
    middle:SetTexCoord(0.0625, 0.9375, 0, 0.625)


    -- Label.
    local label = editbox:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    label:SetPoint("TOPLEFT")
    label:SetPoint("TOPRIGHT")
    label:SetJustifyH("LEFT")


    -- Extension functions.
    editbox.Configure               = Editbox_Configure
    editbox.SetLabel                = Editbox_SetLabel
    editbox.SetTooltip              = Editbox_SetTooltip
    editbox.SetEnterHandler         = Editbox_SetEnterHandler
    editbox.SetEscapeHandler        = Editbox_SetEscapeHandler
    editbox.SetTextChangedHandler   = Editbox_SetTextChangedHandler
    editbox.SetFocus                = Editbox_SetFocus
    editbox.GetText                 = Editbox_GetText
    editbox.SetText                 = Editbox_SetText
    editbox.Disable                 = Editbox_Disable
    editbox.Enable                  = Editbox_Enable


    -- Track internal values.
    editbox.editboxFrame = editboxFrame
    editbox.labelFontString = label
    return editbox
end
]]


-------------------------------------------------------------------------------
-- ColorSwatch functions.
-------------------------------------------------------------------------------

-- ****************************************************************************
-- Sets the color of the color swatch.
-- ****************************************************************************
local function ColorSwatch_SetColor(swatchBtn, r, g, b, a)
    -- Update our variables.
    swatchBtn.r = r
    swatchBtn.g = g
    swatchBtn.b = b
    swatchBtn.a = a
    
    -- Update swatch button's color.
    swatchBtn:GetNormalTexture():SetVertexColor(r, g, b, a)
end


-- ****************************************************************************
-- Returns the color of the color swatch.
-- ****************************************************************************
local function ColorSwatch_GetColor(swatchBtn)
    return swatchBtn.r, swatchBtn.g, swatchBtn.b, swatchBtn.a
end

    
-- ****************************************************************************
-- Called when the color picker values change, or the picker is canceled.
-- ****************************************************************************
local function ColorSwatch_Callback(previousValues)
    local swatchBtn = ColorPickerFrame.associatedColorSwatch
    if (not swatchBtn) then return end
    
    local r, g, b, a
    if previousValues then
        -- The user canceled.  Extract the old color from 'previousValues', initialized in ShowColorPicker().
        r, g, b, a = previousValues.r, previousValues.g, previousValues.b, previousValues.a
    else
        -- Either color or opacity changed.  Check both.
        r, g, b = ColorPickerFrame:GetColorRGB()
        if ColorPickerFrame.hasOpacity then
            a = 1 - OpacitySliderFrame:GetValue()
        end
    end

    ColorSwatch_SetColor(swatchBtn, r, g, b, a)  -- Updates color of the swatch button.
    if swatchBtn.colorChangedHandler then swatchBtn:colorChangedHandler() end  -- Updates color of caller's UI element(s).
end


-- ****************************************************************************
-- Creates a color palette frame (if necessary).  This palette is shown in the color picker.
-- ****************************************************************************
local function ColorSwatch_CreateColorPalette()
    if not colorPaletteFrame then
        local paletteColors = {
                { r = 1.0, g = 1.0, b = 1.0, a = 1.0 }, -- white
                { r = 0.0, g = 0.0, b = 0.0, a = 1.0 }, -- black
                { r = 1.0, g = 0.0, b = 0.0, a = 1.0 },	-- red
                --{ r = 1.0, g = 0.0, b = 0.5, a = 1.0 }, -- rose
                { r = 1.0, g = 0.0, b = 1.0, a = 1.0 },	-- magenta
                { r = 0.5, g = 0.0, b = 1.0, a = 1.0 },	-- violet
                { r = 0.0, g = 0.0, b = 1.0, a = 1.0 },	-- blue
                { r = 0.0, g = 0.5, b = 1.0, a = 1.0 },	-- azure
                { r = 0.0, g = 1.0, b = 1.0, a = 1.0 },	-- cyan
                --{ r = 0.0, g = 1.0, b = 0.5, a = 1.0 }, -- aquamarine
                { r = 0.0, g = 1.0, b = 0.0, a = 1.0 }, -- green
                { r = 0.5, g = 1.0, b = 0.0, a = 1.0 }, -- chartreuse
                { r = 1.0, g = 1.0, b = 0.0, a = 1.0 }, -- yellow
                { r = 1.0, g = 0.5, b = 0.0, a = 1.0 }, -- orange
                { r = 0.976, g = 0.549, b = 0.714, a = 1.0 }, -- Pastels ...
                { r = 0.984, g = 0.714, b = 0.820, a = 1.0 },
                { r = 0.647, g = 0.537, b = 0.757, a = 1.0 },
                { r = 0.757, g = 0.702, b = 0.843, a = 1.0 },
                { r = 0.459, g = 0.537, b = 0.749, a = 1.0 },
                { r = 0.580, g = 0.659, b = 0.816, a = 1.0 },
                { r = 0.604, g = 0.808, b = 0.874, a = 1.0 },
                { r = 0.710, g = 0.882, b = 0.682, a = 1.0 },
                { r = 0.749, g = 0.894, b = 0.462, a = 1.0 },
                { r = 0.999, g = 0.980, b = 0.506, a = 1.0 },
                { r = 0.992, g = 0.792, b = 0.635, a = 1.0 },
                --{ r = 0.859, g = 0.835, b = 0.725, a = 1.0 },
                --{ r = 0.0, g = 0.0, b = 0.0, a = 1.0 }, -- black
                --{ r = 0.1, g = 0.1, b = 0.1, a = 1.0 }, -- shades of gray
                --{ r = 0.2, g = 0.2, b = 0.2, a = 1.0 },
                --{ r = 0.3, g = 0.3, b = 0.3, a = 1.0 },
                --{ r = 0.4, g = 0.4, b = 0.4, a = 1.0 },
                { r = 0.5, g = 0.5, b = 0.5, a = 1.0 }, -- gray
                --{ r = 0.6, g = 0.6, b = 0.6, a = 1.0 },
                --{ r = 0.7, g = 0.7, b = 0.7, a = 1.0 },
                --{ r = 0.8, g = 0.8, b = 0.8, a = 1.0 },
                --{ r = 0.9, g = 0.9, b = 0.9, a = 1.0 },
                --{ r = 1.0, g = 1.0, b = 1.0, a = 1.0 }, -- white
                --{ r = 0.7, g = 0.7, b = 0.7, a = 0.7 }, -- transparent gray
            }
        local rows = 2
        local cols = 12
        local spacer = 0
        local margin = 0
        local swatchSize = 20
        local bgtable = {
                bgFile = "Interface\\Buttons\\WHITE8X8",
                edgeFile = "Interface\\Buttons\\WHITE8X8",
                tile = false,
                tileSize = 16,
                edgeSize = 1,
                insets = { 0, 0, 0, 0 },
            }
    
        -- Create a frame for the palette squares.
        colorPaletteFrame = CreateFrame("Frame", nil, ColorPickerFrame, BackdropTemplateMixin and "BackdropTemplate")
        colorPaletteFrame:SetBackdrop(bgtable)
        colorPaletteFrame:SetFrameLevel( OpacitySliderFrame:GetFrameLevel() )
        colorPaletteFrame:SetSize((cols*swatchSize)+((cols-1)*spacer)+(2*margin),
                                  (rows*swatchSize)+((rows-1)*spacer)+(2*margin))
        colorPaletteFrame:ClearAllPoints()
        colorPaletteFrame:SetPoint("CENTER", ColorPickerFrame, "CENTER", 0, 0)
        colorPaletteFrame:SetPoint("BOTTOM", ColorPickerOkayButton, "TOP", 0, 8)
        colorPaletteFrame:SetBackdropColor(0, 0, 0, 0)
        colorPaletteFrame:SetBackdropBorderColor(0, 0, 0, 0)
        colorPaletteFrame:Show()
        
        -- Create palette swatch squares.
        local i, j, k = 0, 0, 0
        for j = 1, rows do
            for i = 1, cols do
                k = k + 1
                local color = paletteColors[k]
                if not color then break end  -- Stop if no more colors in palette.
                local f = CreateFrame("Button", nil, colorPaletteFrame, BackdropTemplateMixin and "BackdropTemplate")
                f:SetBackdrop(bgtable)
                f:SetBackdropColor(color.r, color.g, color.b, color.a)
                f:SetBackdropBorderColor(0, 0, 0)  --(0, 0, 0, color.a)
                f:SetSize(swatchSize, swatchSize)
                ----createCheckerboardBG(f, false, swatchSize, swatchSize)
                f:ClearAllPoints()
                f:SetPoint("TOPLEFT", colorPaletteFrame, "TOPLEFT", 
                              margin + (spacer*(i-1)) + ((i-1)*swatchSize), 
                            -(margin + (spacer*(j-1)) + ((j-1)*swatchSize)))
                            
                f:SetScript("OnClick", function(self)  -- 'self' is one of the palette buttons.
                            local r, g, b, a = self:GetBackdropColor()
                            ColorPickerFrame:SetColorRGB(r, g, b)
                            if ColorPickerFrame.hasOpacity then
                                ColorPickerFrame.opacity = 1 - a
                                OpacitySliderFrame:SetValue( ColorPickerFrame.opacity )
                            end
                        end)
            end
        end
    end

    ColorPickerFrame:SetHeight( kColorPickerDefaultHeight + colorPaletteFrame:GetHeight() + 16 )
end


-- ****************************************************************************
-- Called when the color swatch is clicked.  Shows the color picker.
-- ****************************************************************************
local function ColorSwatch_ShowColorPicker(swatchBtn)
    if ColorPickerFrame:IsShown() then return end
    ----_G.ViragDevTool_AddData(swatchBtn, "swatchBtn in ColorSwatch_ShowColorPicker()")
    ColorPickerFrame.associatedColorSwatch = swatchBtn
    swatchBtn.r = swatchBtn.r or 1
    swatchBtn.g = swatchBtn.g or 1
    swatchBtn.b = swatchBtn.b or 1
    ColorPickerFrame.previousValues = {r = swatchBtn.r, g = swatchBtn.g, b = swatchBtn.b, a = swatchBtn.a}
    
    if (swatchBtn.a ~= nil) then
        ColorPickerFrame.hasOpacity = true
        ColorPickerFrame.opacity = (1 - swatchBtn.a)
    else
        ColorPickerFrame.hasOpacity = false
        ColorPickerFrame.opacity = nil
    end
    
    ColorPickerFrame.func = ColorSwatch_Callback
    ColorPickerFrame.opacityFunc = ColorSwatch_Callback
    ColorPickerFrame.cancelFunc = ColorSwatch_Callback
    
    ColorPickerFrame:SetColorRGB(swatchBtn.r, swatchBtn.g, swatchBtn.b)
    if (ColorPickerFrame.opacity) then 
        OpacitySliderFrame:SetValue(ColorPickerFrame.opacity) 
    end

    -- Attach color picker to top-right corner of the parent frame.
    ColorPickerFrame:ClearAllPoints()
    ----ColorPickerFrame:SetPoint("CENTER", swatchBtn, "CENTER")
    ColorPickerFrame:SetPoint("TOPLEFT", swatchBtn:GetParent(), "TOPRIGHT", -12, -6)
    ColorPickerFrame:SetClampedToScreen(true)  -- Keep color picker frame on screen.
    ColorPickerFrame:SetClampRectInsets(12, -12, -12, 12) -- Allow for dragging partially off screen.
    
    --::::::::::::::::::[ CUSTOMIZE COLOR PICKER ]:::::::::::::::::::
    
    -- Verify no other addon customtized the color picker.  (Check its height.)
    if (ColorPickerFrame:GetHeight() <  kColorPickerDefaultHeight+1) then
        ----ColorPickerFrame.Header.Text:SetText(CursorTrailControls.AddonName .. " Color Picker")
        ----local strWidth = ColorPickerFrame.Header.Text:GetStringWidth()
        ----ColorPickerFrame.Header:SetWidth( strWidth+24 )
        
        -- Reposition the Color Picker's OK and CANCEL buttons (slightly).
        ColorPickerOkayButton:SetWidth(138)  -- Was 144.
        ColorPickerCancelButton:SetWidth(138)  -- Was 144.
        ColorPickerCancelButton:ClearAllPoints()
        ColorPickerCancelButton:SetPoint("BOTTOMRIGHT", ColorPickerFrame, "BOTTOMRIGHT", -14, 16)
        ColorPickerOkayButton:ClearAllPoints()
        ColorPickerOkayButton:SetPoint("RIGHT", ColorPickerCancelButton, "LEFT", -2, 0)

        -- Add color palette swatches to the bottom of the standard color picker.
        ColorSwatch_CreateColorPalette()
    end
    --:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

    -- Finish.
    ColorPickerFrame:EnableKeyboard(false)  -- Prevent color picker from intercepting keystrokes.
    ColorPickerFrame:Hide()  -- Need to run the OnShow handler.
    ColorPickerFrame:Show()
end


-- ****************************************************************************
-- Closes the color picker (if it is open) by triggering its OK or CANCEL button
-- depending on the bSaveChanges parameter passed in.
-- ****************************************************************************
local function ColorSwatch_CloseColorPicker(bSaveChanges)
    if ColorPickerFrame:IsShown() then
        if bSaveChanges then
            ColorPickerOkayButton:Click()
        else
            ColorPickerCancelButton:Click()
        end
    end
end


-- ****************************************************************************
-- Called when the mouse enters the color swatch.
-- ****************************************************************************
local function ColorSwatch_OnEnter(swatchBtn)
    if (swatchBtn.tooltip) then
        GameTooltip:SetOwner(swatchBtn, swatchBtn.tooltipAnchor or "ANCHOR_RIGHT")
        GameTooltip:SetText(swatchBtn.tooltip, nil, nil, nil, nil, 1)
    end

    ----swatchBtn.borderTexture:SetVertexColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
end


-- ****************************************************************************
-- Called when the mouse leaves the color swatch.
-- ****************************************************************************
local function ColorSwatch_OnLeave(swatchBtn)
    GameTooltip:Hide()
    ----swatchBtn.borderTexture:SetVertexColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
end


-- ****************************************************************************
-- Sets the handler to be called when the color changes.
-- ****************************************************************************
local function ColorSwatch_SetColorChangedHandler(swatchBtn, handler)
    swatchBtn.colorChangedHandler = handler
end


-- ****************************************************************************
-- Sets the tooltip for the color swatch.
-- ****************************************************************************
local function ColorSwatch_SetTooltip(swatchBtn, tooltip)
    swatchBtn.tooltip = tooltip
end


-- ****************************************************************************
-- Disables the colors watch.
-- ****************************************************************************
local function ColorSwatch_Disable(swatchBtn)
    swatchBtn:GetNormalTexture():SetVertexColor(0.5, 0.5, 0.5) -- Dim the color swatch.
    swatchBtn:SetAlpha(0.2)
    swatchBtn:oldDisableHandler()
end


-- ****************************************************************************
-- Enables the color swatch.
-- ****************************************************************************
local function ColorSwatch_Enable(swatchBtn)
    swatchBtn:oldEnableHandler()
    swatchBtn:GetNormalTexture():SetVertexColor(swatchBtn.r, swatchBtn.g, swatchBtn.b)  -- Undim the color swatch.
    swatchBtn:SetAlpha(1.0)
end


-- ****************************************************************************
-- Creates and returns a color swatch object ready to be configured.
-- ****************************************************************************
local function CreateColorSwatch(parent, size)
    size = size or 20
    
    -- Create button frame.
    local colorswatch = CreateFrame("Button", nil, parent)
    colorswatch:SetWidth(size)
    colorswatch:SetHeight(size)
    colorswatch:SetNormalTexture("Interface\\ChatFrame\\ChatFrameColorSwatch")
    colorswatch:SetScript("OnClick", ColorSwatch_ShowColorPicker)
    colorswatch:SetScript("OnEnter", ColorSwatch_OnEnter)
    colorswatch:SetScript("OnLeave", ColorSwatch_OnLeave)

    -- Border texture.
    colorswatch.borderTexture = colorswatch:CreateTexture(nil, "BACKGROUND")
    colorswatch.borderTexture:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    ----colorswatch.borderTexture:SetVertexColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
    colorswatch.borderTexture:SetVertexColor(1, 1, 1)
    ----colorswatch.borderTexture:SetColorTexture(1, 1, 1)
    colorswatch.borderTexture:SetWidth(size-2)
    colorswatch.borderTexture:SetHeight(size-2)
    colorswatch.borderTexture:SetPoint("CENTER")

    -- Checkerboard texture.  (Requires WoW version 10.0.2 or later to use texture 188523.)
    if (select(4, GetBuildInfo()) >= 100002) then
        colorswatch.checkers = colorswatch:CreateTexture(nil, "BACKGROUND")
        colorswatch.checkers:SetWidth(size * 0.75)
        colorswatch.checkers:SetHeight(size * 0.75)
        colorswatch.checkers:SetTexture(188523) -- Tileset\\Generic\\Checkers
        colorswatch.checkers:SetTexCoord(.25, 0, 0.5, .25)
        colorswatch.checkers:SetDesaturated(true)
        colorswatch.checkers:SetVertexColor(1, 1, 1, 0.75)
        colorswatch.checkers:SetPoint("CENTER")
    end

    -- Save old disable/enable handlers.
    colorswatch.oldDisableHandler = colorswatch.Disable
    colorswatch.oldEnableHandler = colorswatch.Enable

    -- Extension functions.
    colorswatch.SetColor                = ColorSwatch_SetColor
    colorswatch.GetColor                = ColorSwatch_GetColor
    colorswatch.SetColorChangedHandler  = ColorSwatch_SetColorChangedHandler
    colorswatch.SetTooltip              = ColorSwatch_SetTooltip
    colorswatch.Disable                 = ColorSwatch_Disable
    colorswatch.Enable                  = ColorSwatch_Enable
    colorswatch.CloseColorPicker        = ColorSwatch_CloseColorPicker

    -- Finish.
    return colorswatch
end


-------------------------------------------------------------------------------
-- Module interface.
-------------------------------------------------------------------------------

-- Protected Functions.
CursorTrailControls.CreateListbox           = CreateListbox
CursorTrailControls.CreateCheckbox          = CreateCheckbox
CursorTrailControls.CreateIconButton        = CreateIconButton
CursorTrailControls.CreateSlider            = CreateSlider
CursorTrailControls.CreateDropdown          = CreateDropdown
CursorTrailControls.CreateEditbox           = CreateEditbox
--~ CursorTrailControls.CreateOptionButton      = CreateOptionButton
CursorTrailControls.CreateColorSwatch       = CreateColorSwatch

--- End of File ---