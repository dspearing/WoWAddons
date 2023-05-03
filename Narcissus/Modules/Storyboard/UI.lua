local _, addon = ...


local READING_SPEED_LETTER = 180 * 5;   --WPM * avg. word length
local FONT_HEIGHT_DESC = 16;
do
    local textLanguage = GetLocale();
    if textLanguage == "zhCN" or textLanguage == "zhTW" or textLanguage == "koKR" then
        READING_SPEED_LETTER = 200;
        FONT_HEIGHT_DESC = 18;
    end
end


NarciStoryboardMixin = {};

function NarciStoryboardMixin:OnLoad()
    local width = 360;
    local descHight = 0.25*width;
    local height = width + descHight;
    self:SetSize(width, height);
    self.ModelScene:SetSize(width, width);
    self.DescriptionFrame:SetHeight(descHight);

    local shrink = -2;
    NarciAPI.NineSliceUtil.SetUp(self.Border, "ChamferedBevelBorderThick", "border", shrink);
    NarciAPI.NineSliceUtil.SetBorderColor(self.Border, 114/255, 16/255, 17/255, 1);

    self.Border.CloseButton:SetScript("OnClick", function()
        self:Hide();
    end);

    self.Border.CloseButton:SetScript("OnMouseDown", function(f)
        f:SetPoint("CENTER", self, "TOPRIGHT", -6, -8);
    end);

    self.Border.CloseButton:SetScript("OnMouseUp", function(f)
        f:SetPoint("CENTER", self, "TOPRIGHT", -6, -6);
    end);

    local fontName, fontHeight, fontFlags = GameFontBlackMedium:GetFont();
    self.DescriptionFrame.Text:SetFont(fontName, FONT_HEIGHT_DESC, fontFlags);

    self.AnimIn:SetScript("OnFinished", function()
        self.SpeechBalloon:Show();
        self.ModelScene:Show();
        self.DescriptionFrame:Show();
        self.SpeechBalloon.AnimIn:Play();
        self.Border.AnimSheen:Play();
        self.Border.BlackOverlay.FadeOut:Play();
    end);
end

function NarciStoryboardMixin:OnHide()
    self:ClearScene();
    self:Hide();
end

function NarciStoryboardMixin:OnShow()
    self:SetScale(1);
    local px = NarciAPI.GetPixelForWidget(self);
    self:SetScale(px);

    self:StopAnimating();
    self.SpeechBalloon:Hide();
    self.DescriptionFrame:Hide();
    self.ModelScene:Hide();
    self.Border.BlackOverlay:SetAlpha(1);
    self.AnimIn:Play();
end

function NarciStoryboardMixin:ClearScene()
    self.sceneName = nil;

    if self.actors then
        for i, actor in ipairs(self.actors) do
            actor:ClearModel();
        end
    end

    if self.lights then
        for i, light in ipairs(self.lights) do
            light:ClearModel();
        end
    end

    self.DescriptionFrame.Text:SetText(nil);
end

function NarciStoryboardMixin:ResetPosition()
    self:ClearAllPoints();
    self:SetPoint("LEFT", Narci_GuideLineFrame, "LEFT", 160, 80);
end


---- Auto-viewing Quest Item Flavor Texts ----
local ICON_SIZE = 56;
local PADDING = 16;

NarciQuestItemDisplayMixin = {};

function NarciQuestItemDisplayMixin:OnLoad()
    self.queue = {};

    local width = 360;
    local height = ICON_SIZE + 2*PADDING;
    self:SetSize(width, height);

    local maxTextWidth = height * 5 - ICON_SIZE - 3*PADDING;
    self.ItemName:SetWidth(maxTextWidth);
    self.Description:SetWidth(maxTextWidth);

    local shrink = -2;
    NarciAPI.NineSliceUtil.SetUp(self.Border, "ChamferedBevelBorderThick", "border", shrink);
    NarciAPI.NineSliceUtil.SetBorderColor(self.Border, 114/255, 16/255, 17/255, 1);

    self.Border.CloseButton:SetScript("OnClick", function()
        self:Hide();
    end);

    self.Border.CloseButton:SetScript("OnMouseDown", function(f)
        f:SetPoint("CENTER", self, "TOPRIGHT", -6, -8);
    end);

    self.Border.CloseButton:SetScript("OnMouseUp", function(f)
        f:SetPoint("CENTER", self, "TOPRIGHT", -6, -6);
    end);

    local fontName, fontHeight, fontFlags = GameFontBlackMedium:GetFont();
    self.ItemName:SetFont(fontName, FONT_HEIGHT_DESC + 2, fontFlags);
    self.Description:SetFont(fontName, FONT_HEIGHT_DESC, fontFlags);

    self.AnimIn:SetScript("OnFinished", function()
        self.Border.AnimSheen:Play();
        self.Border.CloseButton.Countdown:Resume();
    end);

    self.Border.CloseButton.Countdown:SetScript("OnCooldownDone", function()
        self.AnimOut:Play();
    end);

    self:ClearAllPoints();
    self:SetPoint("LEFT", Narci_GuideLineFrame, "LEFT", 64, 80);

    local function PauseCountdown()
        self.Border.CloseButton.Countdown:Pause();
    end

    local function ResumeCountdown()
        self.Border.CloseButton.Countdown:Resume();
    end

    self:SetScript("OnEnter", PauseCountdown);
    self.Border.CloseButton:SetScript("OnEnter", PauseCountdown);
    self:SetScript("OnLeave", ResumeCountdown);
    self.Border.CloseButton:SetScript("OnLeave", ResumeCountdown);

    self.AnimOut:SetScript("OnFinished", function()
        self:StopAnimating();
        self:Hide();
        self:ProcessQueue();
    end);

    self:SetTheme(1);
end

function NarciQuestItemDisplayMixin:OnHide()

end

function NarciQuestItemDisplayMixin:OnShow()
    self:SetScale(1);
    local px = NarciAPI.GetPixelForWidget(self);
    self:SetScale(px);

    self:StopAnimating();
    self.AnimIn:Play();
    self.Border.AnimSheen:Stop();
    self.Border.TopSheen:SetAlpha(0);
    self.Border.BottomSheen:SetAlpha(0);
end

function NarciQuestItemDisplayMixin:SetTheme(themeID)
    if themeID == 2 then
        self.ItemName:SetTextColor(0.8, 0.8, 0.8);
        self.Description:SetTextColor(0.77, 0.76, 0.62);
        self.Background:SetVertexColor(0.1, 0.1, 0.1);
        NarciAPI.NineSliceUtil.SetBorderColor(self.Border, 69/255, 36/255, 11/255, 1);
    else
        self.ItemName:SetTextColor(0, 0, 0);
        self.Description:SetTextColor(0, 0, 0);
        self.Background:SetVertexColor(1, 1, 1);
        NarciAPI.NineSliceUtil.SetBorderColor(self.Border, 114/255, 16/255, 17/255, 1);
    end
end

function NarciQuestItemDisplayMixin:QueueItem(itemID)
    for i, id in ipairs(self.queue) do
        if id == itemID then
            return
        end
    end

    table.insert(self.queue, itemID);
end

function NarciQuestItemDisplayMixin:ProcessQueue()
    if #self.queue > 0 then
        local itemID = table.remove(self.queue, 1);
        self:SetItem(itemID);
    end
end




function NarciQuestItemDisplayMixin:SetItem(itemID)
    --/run NarciQuestItemDisplay:SetItem(204803);NarciQuestItemDisplay:SetItem(205169)

    local tooltipData = C_TooltipInfo.GetItemByID(itemID);
    if not (tooltipData and tooltipData.lines) then
        self:ProcessQueue();
        return
    end

    local name, description;

    for i, line in ipairs(tooltipData.lines) do
        if line.leftText and line.type ~= 20 then
            if i == 1 then
                name = line.leftText;
            else
                description = line.leftText;
                break
            end
        end
    end

    if not (name and description) then
        self:ProcessQueue();
        return
    end

    if self:IsShown() then
        self:QueueItem(itemID);
        return
    end

    self:Show();

    local icon = C_Item.GetItemIconByID(itemID);
    self.ItemName:ClearAllPoints();
    self.ItemName:SetPoint("TOPLEFT", self, "TOPLEFT", 0, 0);

    self.ItemIcon:SetTexture(icon);
    self.ItemName:SetText(name);
    self.Description:SetText(description);

    local textWidth = math.floor(0.5 + math.max(self.ItemName:GetWrappedWidth(), self.Description:GetWrappedWidth())) ;
    local textHeight = math.floor(0.5 + self.ItemName:GetTop() - self.Description:GetBottom());

    self.ItemName:ClearAllPoints();
    if textHeight < ICON_SIZE then
        textHeight = ICON_SIZE;
        self.ItemName:SetPoint("TOPLEFT", self.ItemIcon, "TOPRIGHT", PADDING, 0.5*(textHeight - ICON_SIZE));
    else
        self.ItemName:SetPoint("TOPLEFT", self.ItemIcon, "TOPRIGHT", PADDING, 0);
    end

    self:SetSize(textWidth + ICON_SIZE + 3*PADDING, textHeight + 2*PADDING);

    local readTime = (strlenutf8(name) + strlenutf8(description)) / READING_SPEED_LETTER * 60;
    self.Border.CloseButton.Countdown:SetCooldownDuration(readTime);
    self.Border.CloseButton.Countdown:Pause();
end