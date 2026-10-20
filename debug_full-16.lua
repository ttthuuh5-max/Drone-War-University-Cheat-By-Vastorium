

local Players, RunService, UIS, lp, flySpeed, flying, noclip, espEnabled, ScreenGui, PURPLE, DKPUR, LTPUR, BGROW, WHITE, OFFWHITE, GREEN, ACCENT, Main, CloseBtn, MinBtn, Bubble
do 
Players = game:GetService("Players")
RunService = game:GetService("RunService")
UIS = game:GetService("UserInputService")
lp = Players.LocalPlayer

flySpeed = 50
flying = false
noclip = false
espEnabled = false

local _old = gethui():FindFirstChild("DroneWarUniCheat")
if _old then _old:Destroy() end

ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DroneWarUniCheat"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = gethui()

PURPLE   = Color3.fromRGB(100, 30, 160)
DKPUR    = Color3.fromRGB(60, 10, 100)
LTPUR    = Color3.fromRGB(130, 50, 200)
local BGDARK   = Color3.fromRGB(12, 8, 20)
BGROW    = Color3.fromRGB(22, 14, 36)
local BGPANEL  = Color3.fromRGB(18, 10, 28)
WHITE    = Color3.fromRGB(255, 255, 255)
OFFWHITE = Color3.fromRGB(210, 200, 230)
GREEN    = Color3.fromRGB(80, 255, 140)
ACCENT   = Color3.fromRGB(180, 100, 255)

Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 580, 0, 420)
Main.Position = UDim2.new(0.5, -290, 0.5, -210)
Main.BackgroundColor3 = BGDARK
Main.BorderSizePixel = 0
Main.Active = true
Main.Visible = false
Main.Parent = ScreenGui

local uig = Instance.new("UIGradient")
uig.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 8, 30)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 4, 16))
})
uig.Rotation = 135
uig.Parent = Main

local Watermark = Instance.new("Frame")
Watermark.Size = UDim2.new(0, 210, 0, 32)
Watermark.Position = UDim2.new(1, -218, 1, -40)
Watermark.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
Watermark.BackgroundTransparency = 0.25
Watermark.BorderSizePixel = 0
Watermark.Parent = ScreenGui
Instance.new("UICorner", Watermark).CornerRadius = UDim.new(0, 8)

local WmStroke = Instance.new("UIStroke")
WmStroke.Color = Color3.fromRGB(120, 40, 200)
WmStroke.Thickness = 1
WmStroke.Transparency = 0.4
WmStroke.Parent = Watermark

local WmGrad = Instance.new("UIGradient")
WmGrad.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 30, 170)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 8, 60)),
})
WmGrad.Rotation = 90
WmGrad.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.75),
    NumberSequenceKeypoint.new(1, 0.75),
})
WmGrad.Parent = Watermark

local WmDot = Instance.new("TextLabel")
WmDot.Size = UDim2.new(0, 8, 0, 8)
WmDot.Position = UDim2.new(0, 10, 0.5, -4)
WmDot.BackgroundColor3 = Color3.fromRGB(160, 60, 255)
WmDot.BorderSizePixel = 0
WmDot.Text = ""
WmDot.Parent = Watermark
Instance.new("UICorner", WmDot).CornerRadius = UDim.new(1, 0)

local WmLabel = Instance.new("TextLabel")
WmLabel.Size = UDim2.new(1, -30, 1, 0)
WmLabel.Position = UDim2.new(0, 24, 0, 0)
WmLabel.BackgroundTransparency = 1
WmLabel.Text = "by Vastorium"
WmLabel.TextColor3 = Color3.fromRGB(200, 160, 255)
WmLabel.TextSize = 13
WmLabel.Font = Enum.Font.GothamBold
WmLabel.TextXAlignment = Enum.TextXAlignment.Left
WmLabel.Parent = Watermark

local WmSub = Instance.new("TextLabel")
WmSub.Size = UDim2.new(1, -30, 1, 0)
WmSub.Position = UDim2.new(0, 24, 0, 0)
WmSub.BackgroundTransparency = 1
WmSub.Text = "Drone War Uni Cheat"
WmSub.TextColor3 = Color3.fromRGB(130, 90, 180)
WmSub.TextSize = 10
WmSub.Font = Enum.Font.Gotham
WmSub.TextXAlignment = Enum.TextXAlignment.Left
WmSub.Parent = Watermark

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 52)
Header.BackgroundColor3 = DKPUR
Header.BorderSizePixel = 0
Header.Parent = Main

local HeaderGrad = Instance.new("UIGradient")
HeaderGrad.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 20, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 8, 80))
})
HeaderGrad.Rotation = 90
HeaderGrad.Parent = Header

local HeaderLine = Instance.new("Frame")
HeaderLine.Size = UDim2.new(1, 0, 0, 2)
HeaderLine.Position = UDim2.new(0, 0, 1, -2)
HeaderLine.BackgroundColor3 = LTPUR
HeaderLine.BorderSizePixel = 0
HeaderLine.Parent = Header

local TitleLbl = Instance.new("TextLabel")
TitleLbl.Size = UDim2.new(1, -110, 1, 0)
TitleLbl.Position = UDim2.new(0, 16, 0, 0)
TitleLbl.BackgroundTransparency = 1
TitleLbl.Text = "Drone War University Cheat"
TitleLbl.TextColor3 = WHITE
TitleLbl.TextSize = 16
TitleLbl.Font = Enum.Font.GothamBold
TitleLbl.TextXAlignment = Enum.TextXAlignment.Left
TitleLbl.Parent = Header

local SubLbl = Instance.new("TextLabel")
SubLbl.Size = UDim2.new(1, -110, 0, 16)
SubLbl.Position = UDim2.new(0, 16, 1, -18)
SubLbl.BackgroundTransparency = 1
SubLbl.Text = "by Vastorium"
SubLbl.TextColor3 = ACCENT
SubLbl.TextSize = 11
SubLbl.Font = Enum.Font.Gotham
SubLbl.TextXAlignment = Enum.TextXAlignment.Left
SubLbl.Parent = Header

CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 40, 0, 40)
CloseBtn.Position = UDim2.new(1, -48, 0, 6)
CloseBtn.BackgroundColor3 = Color3.fromRGB(80, 10, 10)
CloseBtn.TextColor3 = WHITE
CloseBtn.Text = ""
CloseBtn.TextSize = 16
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = Header
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 8)

MinBtn = Instance.new("TextButton")
MinBtn.Size = UDim2.new(0, 40, 0, 40)
MinBtn.Position = UDim2.new(1, -92, 0, 6)
MinBtn.BackgroundColor3 = DKPUR
MinBtn.TextColor3 = WHITE
MinBtn.Text = ""
MinBtn.TextSize = 20
MinBtn.Font = Enum.Font.GothamBold
MinBtn.Parent = Header
Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 8)

Bubble = Instance.new("TextButton")
Bubble.Size = UDim2.new(0, 42, 0, 42)
Bubble.Position = UDim2.new(0, 16, 0, 70)
Bubble.BackgroundColor3 = PURPLE
Bubble.TextColor3 = WHITE
Bubble.Text = ""
Bubble.Visible = true
Bubble.Active = true
Bubble.Draggable = true
Bubble.Parent = ScreenGui
Instance.new("UICorner", Bubble).CornerRadius = UDim.new(1, 0)

local BubbleGrad = Instance.new("UIGradient")
BubbleGrad.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 60, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 20, 180)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 5, 100)),
})
BubbleGrad.Rotation = 135
BubbleGrad.Parent = Bubble

end 
local makeToggle, makeSlider, makeNumberInput, makeDivider, makeCategory, activePanels, ContentScroll, ContentLayout, SideScroll, visPanel, utilPanel, camPanel, dronePanel, tracerPanel, tpPanel, mapPanel
do 
local BubbleGlow = Instance.new("UIStroke")
BubbleGlow.Color = Color3.fromRGB(180, 90, 255)
BubbleGlow.Thickness = 2.5
BubbleGlow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BubbleGlow.Parent = Bubble

local BubbleV = Instance.new("TextLabel")
BubbleV.Size = UDim2.new(1, 0, 1, 0)
BubbleV.Position = UDim2.new(0, 0, 0, -1)
BubbleV.BackgroundTransparency = 1
BubbleV.Text = "V"
BubbleV.TextColor3 = WHITE
BubbleV.TextSize = 18
BubbleV.Font = Enum.Font.GothamBold
BubbleV.TextStrokeTransparency = 0.4
BubbleV.TextStrokeColor3 = Color3.fromRGB(200, 120, 255)
BubbleV.Parent = Bubble

local SideBar = Instance.new("Frame")
SideBar.Size = UDim2.new(0, 180, 1, -52)
SideBar.Position = UDim2.new(0, 0, 0, 52)
SideBar.BackgroundColor3 = Color3.fromRGB(16, 8, 26)
SideBar.BorderSizePixel = 0
SideBar.Parent = Main

local SideDiv = Instance.new("Frame")
SideDiv.Size = UDim2.new(0, 2, 1, 0)
SideDiv.Position = UDim2.new(1, -2, 0, 0)
SideDiv.BackgroundColor3 = PURPLE
SideDiv.BorderSizePixel = 0
SideDiv.Parent = SideBar

local ContentArea = Instance.new("Frame")
ContentArea.Size = UDim2.new(1, -182, 1, -52)
ContentArea.Position = UDim2.new(0, 182, 0, 52)
ContentArea.BackgroundTransparency = 1
ContentArea.BorderSizePixel = 0
ContentArea.ClipsDescendants = true
ContentArea.Parent = Main

SideScroll = Instance.new("ScrollingFrame")
SideScroll.Size = UDim2.new(1, 0, 1, 0)
SideScroll.BackgroundTransparency = 1
SideScroll.BorderSizePixel = 0
SideScroll.ScrollBarThickness = 2
SideScroll.ScrollBarImageColor3 = PURPLE
SideScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
SideScroll.Parent = SideBar

local SideLayout = Instance.new("UIListLayout")
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Padding = UDim.new(0, 2)
SideLayout.Parent = SideScroll

SideLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    SideScroll.CanvasSize = UDim2.new(0, 0, 0, SideLayout.AbsoluteContentSize.Y + 8)
end)

ContentScroll = Instance.new("ScrollingFrame")
ContentScroll.Size = UDim2.new(1, -8, 1, -8)
ContentScroll.Position = UDim2.new(0, 4, 0, 4)
ContentScroll.BackgroundTransparency = 1
ContentScroll.BorderSizePixel = 0
ContentScroll.ScrollBarThickness = 3
ContentScroll.ScrollBarImageColor3 = PURPLE
ContentScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
ContentScroll.Parent = ContentArea

ContentLayout = Instance.new("UIListLayout")
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Padding = UDim.new(0, 6)
ContentLayout.Parent = ContentScroll

ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ContentScroll.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 12)
end)

activePanels = {}

function makeCategory(text, order)
    
    local sideBtn = Instance.new("TextButton")
    sideBtn.Size = UDim2.new(1, -4, 0, 44)
    sideBtn.BackgroundColor3 = BGROW
    sideBtn.TextColor3 = OFFWHITE
    sideBtn.Text = ""sideBtn.LayoutOrder = order
    sideBtn.Parent = SideScroll
    Instance.new("UICorner", sideBtn).CornerRadius = UDim.new(0, 6)

    local arrow = Instance.new("TextLabel")
    arrow.Size = UDim2.new(0, 12, 1, 0)
    arrow.Position = UDim2.new(0, 8, 0, 0)
    arrow.BackgroundTransparency = 1
    arrow.Text = ""arrow.TextColor3 = ACCENT
    arrow.TextSize = 10
    arrow.Font = Enum.Font.GothamBold
    arrow.Parent = sideBtn

    local sideLbl = Instance.new("TextLabel")
    sideLbl.Size = UDim2.new(1, -28, 1, 0)
    sideLbl.Position = UDim2.new(0, 24, 0, 0)
    sideLbl.BackgroundTransparency = 1
    sideLbl.Text = text
    sideLbl.TextColor3 = OFFWHITE
    sideLbl.TextSize = 13
    sideLbl.Font = Enum.Font.Gotham
    sideLbl.TextXAlignment = Enum.TextXAlignment.Left
    sideLbl.Parent = sideBtn

    
    local secHeader = Instance.new("Frame")
    secHeader.Size = UDim2.new(1, 0, 0, 36)
    secHeader.BackgroundColor3 = DKPUR
    secHeader.BorderSizePixel = 0
    secHeader.LayoutOrder = order
    secHeader.Visible = true
    secHeader.Parent = ContentScroll
    Instance.new("UICorner", secHeader).CornerRadius = UDim.new(0, 8)

    local secGrad = Instance.new("UIGradient")
    secGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 25, 150)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 10, 90))
    })
    secGrad.Rotation = 90
    secGrad.Parent = secHeader

    local secLbl = Instance.new("TextLabel")
    secLbl.Size = UDim2.new(1, -16, 1, 0)
    secLbl.Position = UDim2.new(0, 12, 0, 0)
    secLbl.BackgroundTransparency = 1
    secLbl.Text = text
    secLbl.TextColor3 = WHITE
    secLbl.TextSize = 14
    secLbl.Font = Enum.Font.GothamBold
    secLbl.TextXAlignment = Enum.TextXAlignment.Left
    secLbl.Parent = secHeader

    
    local panel = Instance.new("Frame")
    panel.Size = UDim2.new(1, 0, 0, 0)
    panel.BackgroundTransparency = 1
    panel.BorderSizePixel = 0
    panel.LayoutOrder = order + 0.5
    panel.Visible = true
    panel.Parent = ContentScroll

    local panelLayout = Instance.new("UIListLayout")
    panelLayout.Padding = UDim.new(0, 4)
    panelLayout.Parent = panel

    panelLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        panel.Size = UDim2.new(1, 0, 0, panelLayout.AbsoluteContentSize.Y + 4)
        ContentScroll.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 12)
    end)

    secHeader.Visible = false
    panel.Visible = false
    activePanels[order] = {header=secHeader, panel=panel, btn=sideBtn, arrow=arrow, lbl=sideLbl, active=false}

    sideBtn.MouseButton1Click:Connect(function()
        
        for _, ent in pairs(activePanels) do
            ent.active = false
            ent.header.Visible = false
            ent.panel.Visible = false
            ent.btn.BackgroundColor3 = BGROW
            ent.arrow.Text = ""ent.arrow.TextColor3 = ACCENT
            ent.lbl.TextColor3 = OFFWHITE
        end
        
        local entry = activePanels[order]
        entry.active = true
        entry.header.Visible = true
        entry.panel.Visible = true
        entry.btn.BackgroundColor3 = PURPLE
        entry.arrow.Text = ""entry.arrow.TextColor3 = WHITE
        entry.lbl.TextColor3 = WHITE
    end)

    return panel
end

function makeToggle(parent, text, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 48)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -8)
    stripe.Position = UDim2.new(0, 0, 0, 4)
    stripe.BackgroundColor3 = PURPLE
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -90, 1, 0)
    lbl.Position = UDim2.new(0, 14, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 13
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    local pill = Instance.new("Frame")
    pill.Size = UDim2.new(0, 58, 0, 28)
    pill.Position = UDim2.new(1, -68, 0.5, -14)
    pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
    pill.BorderSizePixel = 0
    pill.Parent = row
    Instance.new("UICorner", pill).CornerRadius = UDim.new(1, 0)

    local pillLbl = Instance.new("TextLabel")
    pillLbl.Size = UDim2.new(1, 0, 1, 0)
    pillLbl.BackgroundTransparency = 1
    pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
    pillLbl.TextSize = 11
    pillLbl.Font = Enum.Font.GothamBold
    pillLbl.Parent = pill

    local state = false
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""btn.Parent = row

    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            pill.BackgroundColor3 = Color3.fromRGB(40, 100, 40)
            pillLbl.Text = "ON"pillLbl.TextColor3 = GREEN
            stripe.BackgroundColor3 = GREEN
        else
            pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
            pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
            stripe.BackgroundColor3 = PURPLE
        end
        callback(state)
    end)
end

function makeSlider(parent, text, min, max, default, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 64)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -8)
    stripe.Position = UDim2.new(0, 0, 0, 4)
    stripe.BackgroundColor3 = LTPUR
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -16, 0, 22)
    lbl.Position = UDim2.new(0, 14, 0, 6)
    lbl.BackgroundTransparency = 1
    lbl.Text = text .. ": " .. default
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 12
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    local minus = Instance.new("TextButton")
    minus.Size = UDim2.new(0, 40, 0, 26)
    minus.Position = UDim2.new(0, 10, 0, 32)
    minus.BackgroundColor3 = DKPUR
    minus.TextColor3 = WHITE
    minus.Text = ""minus.TextSize = 16
    minus.Font = Enum.Font.GothamBold
    minus.Parent = row
    Instance.new("UICorner", minus).CornerRadius = UDim.new(0, 6)

    local plus = Instance.new("TextButton")
    plus.Size = UDim2.new(0, 40, 0, 26)
    plus.Position = UDim2.new(1, -50, 0, 32)
    plus.BackgroundColor3 = Color3.fromRGB(50, 20, 80)
    plus.TextColor3 = ACCENT
    plus.Text = "+"plus.TextSize = 16
    plus.Font = Enum.Font.GothamBold
    plus.Parent = row
    Instance.new("UICorner", plus).CornerRadius = UDim.new(0, 6)

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(1, -108, 0, 8)
    bar.Position = UDim2.new(0, 54, 0, 42)
    bar.BackgroundColor3 = Color3.fromRGB(30, 16, 50)
    bar.Parent = row
    Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 4)

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new((default-min)/(max-min), 0, 1, 0)
    fill.BackgroundColor3 = LTPUR
    fill.Parent = bar
    Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 4)

    local val = default
    local function set(v)
        val = math.clamp(v, min, max)
        fill.Size = UDim2.new((val-min)/(max-min), 0, 1, 0)
        lbl.Text = text .. ": " .. val
        callback(val)
    end

    minus.MouseButton1Click:Connect(function() set(val - 10) end)
    plus.MouseButton1Click:Connect(function() set(val + 10) end)

    local drag = false
    bar.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.Touch or i.UserInputType == Enum.UserInputType.MouseButton1 then drag = true end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.Touch or i.UserInputType == Enum.UserInputType.MouseButton1 then drag = false end
    end)
    UIS.InputChanged:Connect(function(i)
        if not drag then return end
        if i.UserInputType == Enum.UserInputType.Touch or i.UserInputType == Enum.UserInputType.MouseMovement then
            local rel = math.clamp((i.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
            set(math.floor(rel * (max - min)) + min)
        end
    end)
end

function makeNumberInput(parent, text, default, minVal, maxVal, callback)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 52)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -8)
    stripe.Position = UDim2.new(0, 0, 0, 4)
    stripe.BackgroundColor3 = LTPUR
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(0.52, -14, 1, 0)
    lbl.Position = UDim2.new(0, 14, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 12
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0, 110, 0, 32)
    box.Position = UDim2.new(1, -118, 0.5, -16)
    box.BackgroundColor3 = Color3.fromRGB(22, 10, 36)
    box.TextColor3 = WHITE
    box.PlaceholderColor3 = Color3.fromRGB(120, 80, 160)
    box.Text = tostring(default)
    box.PlaceholderText = tostring(default)
    box.TextSize = 13
    box.Font = Enum.Font.GothamBold
    box.ClearTextOnFocus = false
    box.BorderSizePixel = 0
    box.Parent = row
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
    local bs = Instance.new("UIStroke", box)
    bs.Color = LTPUR bs.Thickness = 1 bs.Transparency = 0.5

    local function apply()
        local n = tonumber(box.Text)
        if not n then box.Text = tostring(default) return end
        n = math.clamp(math.floor(n), minVal, maxVal)
        box.Text = tostring(n)
        stripe.BackgroundColor3 = GREEN
        task.delay(0.6, function() stripe.BackgroundColor3 = LTPUR end)
        callback(n)
    end

    box.FocusLost:Connect(apply)
    box.ReturnPressedFromOnScreenKeyboard:Connect(apply)
end

function makeDivider(parent, text)
    
    return parent
end

local function makeInfo(parent, key, value)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 36)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local kLbl = Instance.new("TextLabel")
    kLbl.Size = UDim2.new(0.45, 0, 1, 0)
    kLbl.Position = UDim2.new(0, 12, 0, 0)
    kLbl.BackgroundTransparency = 1
    kLbl.Text = key
    kLbl.TextColor3 = ACCENT
    kLbl.TextSize = 12
    kLbl.Font = Enum.Font.Gotham
    kLbl.TextXAlignment = Enum.TextXAlignment.Left
    kLbl.Parent = row

    local vLbl = Instance.new("TextLabel")
    vLbl.Size = UDim2.new(0.5, 0, 1, 0)
    vLbl.Position = UDim2.new(0.5, 0, 0, 0)
    vLbl.BackgroundTransparency = 1
    vLbl.Text = value
    vLbl.TextColor3 = WHITE
    vLbl.TextSize = 12
    vLbl.Font = Enum.Font.GothamBold
    vLbl.TextXAlignment = Enum.TextXAlignment.Left
    vLbl.Parent = row
end

local mainPanel   = makeCategory(" Инфо",        0)

local movePanel   = makeCategory(" Движение",     1)

visPanel    = makeCategory(" Визуал",        2)

camPanel    = makeCategory(" Камеры",         3)

utilPanel   = makeCategory(" Утилиты",       4)

dronePanel  = makeCategory(" Дроны",           5)

mapPanel    = makeCategory(" Карта",          6)

do
    local first = activePanels[0]
    if first then
        first.active = true
        first.header.Visible = true
        first.panel.Visible = true
        first.btn.BackgroundColor3 = PURPLE
        first.arrow.Text = ""first.arrow.TextColor3 = WHITE
        first.lbl.TextColor3 = WHITE
    end
end

local playerPanel  = movePanel
local invisPanel   = visPanel
local espPanel     = visPanel
tracerPanel  = visPanel
local speedPanel   = movePanel
tpPanel      = utilPanel

makeInfo(mainPanel, "Чит:", "Drone War Uni Cheat")
makeInfo(mainPanel, "Автор:", "Vastorium")
makeInfo(mainPanel, "Версия:", "v6.4.0")
makeInfo(mainPanel, "Игра:", "Drone War")

local _sec670 = makeDivider(movePanel, "ПОЛЁТ")
makeToggle(playerPanel, "Fly", function(state)
    flying = state
    local char = lp.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    local hum  = char and char:FindFirstChild("Humanoid")
    if hum then hum.PlatformStand = state end
    if hrp and not state then
        hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
    DpadFrame.Visible = state
    UDFrame.Visible   = state
end)

makeSlider(playerPanel, "Fly Speed", 10, 210, 50, function(v) flySpeed = v end)

local jumpValue   = 50
local jumpActive  = false

local _sec709 = makeDivider(movePanel, "ПРЫЖОК")
makeToggle(playerPanel, "Jump Power", function(state)
    jumpActive = state
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChild("Humanoid")
    if not hum then return end
    if state then
        hum.JumpPower = jumpValue
        lp.CharacterAdded:Connect(function(c)
            if not jumpActive then return end
            local h = c:WaitForChild("Humanoid")
            h.JumpPower = jumpValue
        end)
    else
        if hum then hum.JumpPower = 50 end
    end
end)

makeSlider(playerPanel, "Jump Height", 50, 500, 50, function(v)
    jumpValue = v
    if jumpActive then
        local char = lp.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then hum.JumpPower = v end
        end
    end
end)

local _sec739 = makeDivider(movePanel, "НОКЛИП")
makeToggle(playerPanel, "Noclip", function(state)
    noclip = state
    local function apply(char)
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
        char.DescendantAdded:Connect(function(part)
            if noclip and part:IsA("BasePart") then
                task.wait() part.CanCollide = false
            end
        end)
    end
    if noclip then
        local char = lp.Character if char then apply(char) end
        lp.CharacterAdded:Connect(apply)
    else
        local char = lp.Character
        if char then
            for _,p in pairs(char:GetDescendants()) do
                if p:IsA("BasePart") then p.CanCollide = true end
            end
        end
    end
end)

local invisActive = false
local invisLevel  = 0
local savedTransparencies = {}  

local function applyInvis(char, level)
    if not char then return end
    savedTransparencies = {}
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            savedTransparencies[part] = part.Transparency
            part.Transparency = level
        elseif part:IsA("Decal") then
            savedTransparencies[part] = part.Transparency
            part.Transparency = level
        end
    end
end

local function resetInvis(char)
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            part.Transparency = savedTransparencies[part] or 0
        end
    end
    savedTransparencies = {}
end

RunService.RenderStepped:Connect(function()
    if not invisActive then return end
    local char = lp.Character if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") and part.Transparency ~= invisLevel then
            part.Transparency = invisLevel
        end
    end
end)

local function makeInvisBtn(parent, label, level, order)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 48)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.LayoutOrder = order
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -8)
    stripe.Position = UDim2.new(0, 0, 0, 4)
    stripe.BackgroundColor3 = LTPUR
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -90, 1, 0)
    lbl.Position = UDim2.new(0, 14, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = label
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 13
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    local pill = Instance.new("Frame")
    pill.Size = UDim2.new(0, 58, 0, 28)
    pill.Position = UDim2.new(1, -68, 0.5, -14)
    pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
    pill.BorderSizePixel = 0
    pill.Parent = row
    Instance.new("UICorner", pill).CornerRadius = UDim.new(1, 0)

    local pillLbl = Instance.new("TextLabel")
    pillLbl.Size = UDim2.new(1, 0, 1, 0)
    pillLbl.BackgroundTransparency = 1
    pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
    pillLbl.TextSize = 11
    pillLbl.Font = Enum.Font.GothamBold
    pillLbl.Parent = pill

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""btn.Parent = row

    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            invisActive = true
            invisLevel  = level
            pill.BackgroundColor3 = Color3.fromRGB(40, 100, 40)
            pillLbl.Text = "ON"pillLbl.TextColor3 = GREEN
            stripe.BackgroundColor3 = GREEN
            local char = lp.Character
            applyInvis(char, level)
            lp.CharacterAdded:Connect(function(c) if invisActive and invisLevel == level then applyInvis(c, level) end end)
        else
            state = false
            invisActive = false
            pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
            pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
            stripe.BackgroundColor3 = LTPUR
            resetInvis(lp.Character)
        end
    end)
end

local _sec876 = makeDivider(visPanel, "НЕВИДИМОСТЬ")
makeInvisBtn(invisPanel, "Invis 20%",   0.2, 1)
makeInvisBtn(invisPanel, "Invis 50%",   0.5, 2)
makeInvisBtn(invisPanel, "Invis 70%",   0.7, 3)
makeInvisBtn(invisPanel, "Invis 100%",  1.0, 4)

local fakeInvisActive = false
local fakeInvisConn   = nil
local savedCFrame     = nil

makeToggle(invisPanel, "Fake Invis (под карту)", function(state)
    fakeInvisActive = state
    local char = lp.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChild("Humanoid")
    if not hrp or not hum then return end

    if state then
        savedCFrame = hrp.CFrame
        hum.PlatformStand = true

        
        for _, p in pairs(char:GetDescendants()) do
            if p:IsA("BasePart") then p.CanCollide = false end
        end

        
        hrp.CFrame = hrp.CFrame * CFrame.new(0, -5000, 0)

        
        fakeInvisConn = RunService.Stepped:Connect(function()
            if not fakeInvisActive then return end
            local c = lp.Character
            if not c then return end
            local h = c:FindFirstChild("HumanoidRootPart")
            if h then
                
                h.CFrame = CFrame.new(h.Position.X, -5000, h.Position.Z)
            end
        end)

    else
        
        if fakeInvisConn then fakeInvisConn:Disconnect() fakeInvisConn = nil end
        if savedCFrame then
            hrp.CFrame = savedCFrame
        end
        hum.PlatformStand = false
        for _, p in pairs(char:GetDescendants()) do
            if p:IsA("BasePart") then p.CanCollide = true end
        end
        savedCFrame = nil
    end
end)

local speedActive   = false
local speedValue    = 16  
local defaultSpeed  = 16

local function setSpeed(v)
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChild("Humanoid")
    if hum then hum.WalkSpeed = v end
end

local _sec948 = makeDivider(movePanel, "СКОРОСТЬ")
makeToggle(speedPanel, "Speed Hack", function(state)
    speedActive = state
    if state then
        setSpeed(speedValue)
        lp.CharacterAdded:Connect(function(char)
            if not speedActive then return end
            local hum = char:WaitForChild("Humanoid")
            hum.WalkSpeed = speedValue
        end)
    else
        setSpeed(defaultSpeed)
    end
end)

makeSlider(speedPanel, "Speed", 16, 300, 16, function(v)
    speedValue = v
    if speedActive then setSpeed(v) end
end)

local speedInfo = Instance.new("Frame")
speedInfo.Size = UDim2.new(1, 0, 0, 36)
speedInfo.BackgroundColor3 = Color3.fromRGB(18, 8, 30)
speedInfo.BorderSizePixel = 0
speedInfo.Parent = speedPanel
Instance.new("UICorner", speedInfo).CornerRadius = UDim.new(0, 8)

local speedHint = Instance.new("TextLabel")
speedHint.Size = UDim2.new(1, -16, 1, 0)
speedHint.Position = UDim2.new(0, 12, 0, 0)
speedHint.BackgroundTransparency = 1
speedHint.Text = " дефолт = 16 | макс = 300"
speedHint.TextColor3 = Color3.fromRGB(140, 90, 200)
speedHint.TextSize = 11
speedHint.Font = Enum.Font.Gotham
speedHint.TextXAlignment = Enum.TextXAlignment.Left
speedHint.Parent = speedInfo

local espConns = {}

local function removeESP(player)
    if espConns[player] then espConns[player]:Disconnect() espConns[player]=nil end
    if player.Character then
        
        local hrp=player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then local g=hrp:FindFirstChild("ESPGui") if g then g:Destroy() end end
        
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("SelectionBox") and part.Name=="ESPBox" then
                part:Destroy()
            end
        end
    end
end

local function getMyTeam()
    if lp.Team then return lp.Team.Name end
    return nil
end

local function isEnemy(p)
    local mt=getMyTeam() if not mt then return true end
    if p.Team then return p.Team.Name~=mt end
    return true
end

local function addESP(player)
    if player==lp then return end
    local function onChar(char)
        local hrp=char:WaitForChild("HumanoidRootPart",5) if not hrp then return end
        local old=hrp:FindFirstChild("ESPGui") if old then old:Destroy() end
        local enemy=isEnemy(player)

        
        local hlColor = enemy and Color3.fromRGB(255,40,40) or Color3.fromRGB(60,160,255)
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                local box = Instance.new("SelectionBox")
                box.Name       = "ESPBox"box.Adornee    = part
                box.Color3     = hlColor
                box.LineThickness = 0.09
                box.SurfaceTransparency = 0.65
                box.SurfaceColor3 = hlColor
                box.Parent     = part
            end
        end

        
        local bb = Instance.new("BillboardGui", hrp)
        bb.Name = "ESPGui"bb.Size = UDim2.new(0, 160, 0, 52)
        bb.StudsOffset = Vector3.new(0, 5.5, 0)
        bb.AlwaysOnTop = true
        bb.MaxDistance = 2000

        
        local nameLbl = Instance.new("TextLabel", bb)
        nameLbl.Size = UDim2.new(1, 0, 0.55, 0)
        nameLbl.BackgroundTransparency = 1
        nameLbl.Text = player.Name
        nameLbl.TextColor3 = enemy and Color3.fromRGB(255, 60, 60) or Color3.fromRGB(80, 180, 255)
        nameLbl.TextSize = 15
        nameLbl.Font = Enum.Font.GothamBold
        nameLbl.TextStrokeTransparency = 0
        nameLbl.TextStrokeColor3 = Color3.fromRGB(0,0,0)

        
        local barBg = Instance.new("Frame", bb)
        barBg.Size = UDim2.new(1, 0, 0.38, 0)
        barBg.Position = UDim2.new(0, 0, 0.62, 0)
        barBg.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
        barBg.BorderSizePixel = 0
        Instance.new("UICorner", barBg).CornerRadius = UDim.new(0, 3)

        
        local barFill = Instance.new("Frame", barBg)
        barFill.Size = UDim2.new(1, 0, 1, 0)
        barFill.BackgroundColor3 = Color3.fromRGB(220, 30, 30)
        barFill.BorderSizePixel = 0
        Instance.new("UICorner", barFill).CornerRadius = UDim.new(0, 3)

        local hum = char:FindFirstChild("Humanoid")
        if hum then
            local function updateBar()
                local pct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
                barFill.Size = UDim2.new(pct, 0, 1, 0)
                
                barFill.BackgroundColor3 = Color3.fromRGB(
                    math.floor(180 + 75 * pct),
                    math.floor(20 * pct),
                    math.floor(20 * pct)
                )
            end
            updateBar()
            hum:GetPropertyChangedSignal("Health"):Connect(updateBar)
        end
    end
    if player.Character then onChar(player.Character) end
    espConns[player]=player.CharacterAdded:Connect(onChar)
end

local _sec1092 = makeDivider(visPanel, "ESP")
makeToggle(espPanel, "Enemy ESP", function(state)
    espEnabled=state
    if state then
        for _,p in pairs(Players:GetPlayers()) do addESP(p) end
        Players.PlayerAdded:Connect(function(p) if espEnabled then addESP(p) end end)
    else
        for _,p in pairs(Players:GetPlayers()) do removeESP(p) end
    end
end)

for _,p in pairs(Players:GetPlayers()) do
    p:GetPropertyChangedSignal("Team"):Connect(function()
        if espEnabled then removeESP(p) addESP(p) end
    end)
end
Players.PlayerAdded:Connect(function(p)
    p:GetPropertyChangedSignal("Team"):Connect(function()
        if espEnabled then removeESP(p) addESP(p) end
    end)
end)

end 
do 
local tracersEnabled = false
local tracerColor    = Color3.fromRGB(255, 40, 40)
local tracerConn     = nil

local tracerLines = {}

local function clearTracers()
    for _, line in pairs(tracerLines) do
        line:Remove()
    end
    tracerLines = {}
end

local function drawTracers()
    clearTracers()
    if not tracersEnabled then return end

    local myChar = lp.Character
    if not myChar then return end
    local myHRP = myChar:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end

    
    local screenCenter = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y)

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= lp and p.Character then
            local enemy = true
            if lp.Team and p.Team then enemy = lp.Team ~= p.Team end
            if not enemy then continue end

            local pChar = p.Character
            local pHRP  = pChar:FindFirstChild("HumanoidRootPart")
            local pHum  = pChar:FindFirstChild("Humanoid")
            if not pHRP or not pHum or pHum.Health <= 0 then continue end

            local screenPos, onScreen = cam:WorldToScreenPoint(pHRP.Position)
            if not onScreen then continue end

            local line = Drawing.new("Line")
            line.Visible   = true
            line.From       = screenCenter
            line.To         = Vector2.new(screenPos.X, screenPos.Y)
            line.Color      = tracerColor
            line.Thickness  = 1.5
            line.Transparency = 1

            table.insert(tracerLines, line)
        end
    end
end

local _sec1171 = makeDivider(visPanel, "ТРАССЕРЫ")
makeToggle(tracerPanel, "Tracers ON", function(state)
    tracersEnabled = state
    if state then
        tracerConn = RunService.RenderStepped:Connect(drawTracers)
    else
        if tracerConn then tracerConn:Disconnect() tracerConn = nil end
        clearTracers()
    end
end)

local colorRow = Instance.new("Frame")
colorRow.Size = UDim2.new(1, 0, 0, 48)
colorRow.BackgroundColor3 = BGROW
colorRow.BorderSizePixel = 0
colorRow.Parent = tracerPanel
Instance.new("UICorner", colorRow).CornerRadius = UDim.new(0, 8)

local colorLbl = Instance.new("TextLabel")
colorLbl.Size = UDim2.new(1, 0, 0, 18)
colorLbl.Position = UDim2.new(0, 12, 0, 4)
colorLbl.BackgroundTransparency = 1
colorLbl.Text = "Цвет: Красный"
colorLbl.TextColor3 = OFFWHITE
colorLbl.TextSize = 12
colorLbl.Font = Enum.Font.Gotham
colorLbl.TextXAlignment = Enum.TextXAlignment.Left
colorLbl.Parent = colorRow

local colors = {
    {name="Красный", col=Color3.fromRGB(255,40,40),  bg=Color3.fromRGB(120,0,0)},
    {name="Жёлтый",  col=Color3.fromRGB(255,220,0),  bg=Color3.fromRGB(100,80,0)},
    {name="Белый",   col=Color3.fromRGB(255,255,255), bg=Color3.fromRGB(60,60,60)},
}
local cBtns = {}
for i, c in ipairs(colors) do
    local cb = Instance.new("TextButton")
    cb.Size = UDim2.new(0, 72, 0, 22)
    cb.Position = UDim2.new(0, 10 + (i-1)*76, 0, 22)
    cb.BackgroundColor3 = i == 1 and c.col or c.bg
    cb.TextColor3 = i == 1 and Color3.fromRGB(0,0,0) or WHITE
    cb.Text = c.name
    cb.TextSize = 11
    cb.Font = Enum.Font.Gotham
    cb.Parent = colorRow
    Instance.new("UICorner", cb).CornerRadius = UDim.new(0, 5)

    cb.MouseButton1Click:Connect(function()
        tracerColor = c.col
        colorLbl.Text = "Цвет: " .. c.name
        for j, b in pairs(cBtns) do
            b.BackgroundColor3 = j == i and colors[j].col or colors[j].bg
            b.TextColor3 = j == i and Color3.fromRGB(0,0,0) or WHITE
        end
    end)
    table.insert(cBtns, cb)
end

end 
local buildPlayerList
do 
local trInfo = Instance.new("Frame")
trInfo.Size = UDim2.new(1, 0, 0, 36)
trInfo.BackgroundColor3 = Color3.fromRGB(18, 8, 30)
trInfo.BorderSizePixel = 0
trInfo.Parent = tracerPanel
Instance.new("UICorner", trInfo).CornerRadius = UDim.new(0, 8)

local trHint = Instance.new("TextLabel")
trHint.Size = UDim2.new(1, -16, 1, 0)
trHint.Position = UDim2.new(0, 12, 0, 0)
trHint.BackgroundTransparency = 1
trHint.Text = " линии от центра экрана до врагов"
trHint.TextColor3 = Color3.fromRGB(140, 90, 200)
trHint.TextSize = 11
trHint.Font = Enum.Font.Gotham
trHint.TextXAlignment = Enum.TextXAlignment.Left
trHint.Parent = trInfo

local _sec1249 = makeDivider(utilPanel, "ТЕЛЕПОРТ")
local tpInputRow = Instance.new("Frame")
tpInputRow.Size = UDim2.new(1, 0, 0, 52)
tpInputRow.BackgroundColor3 = BGROW
tpInputRow.BorderSizePixel = 0
tpInputRow.Parent = tpPanel
Instance.new("UICorner", tpInputRow).CornerRadius = UDim.new(0, 8)

local tpBox = Instance.new("TextBox")
tpBox.Size = UDim2.new(1, -80, 0, 32)
tpBox.Position = UDim2.new(0, 10, 0, 10)
tpBox.BackgroundColor3 = Color3.fromRGB(20, 10, 34)
tpBox.TextColor3 = WHITE
tpBox.PlaceholderText = "ник / буква..."
tpBox.PlaceholderColor3 = Color3.fromRGB(120,80,160)
tpBox.Text = ""
tpBox.TextSize = 13
tpBox.Font = Enum.Font.Gotham
tpBox.ClearTextOnFocus = false
tpBox.Parent = tpInputRow
Instance.new("UICorner", tpBox).CornerRadius = UDim.new(0, 6)

local tpGo = Instance.new("TextButton")
tpGo.Size = UDim2.new(0, 60, 0, 32)
tpGo.Position = UDim2.new(1, -70, 0, 10)
tpGo.BackgroundColor3 = PURPLE
tpGo.TextColor3 = WHITE
tpGo.Text = "TP"
tpGo.TextSize = 13
tpGo.Font = Enum.Font.GothamBold
tpGo.Parent = tpInputRow
Instance.new("UICorner", tpGo).CornerRadius = UDim.new(0, 6)

local tpStatusRow = Instance.new("Frame")
tpStatusRow.Size = UDim2.new(1, 0, 0, 28)
tpStatusRow.BackgroundTransparency = 1
tpStatusRow.Parent = tpPanel

local tpStatus = Instance.new("TextLabel")
tpStatus.Size = UDim2.new(1, -10, 1, 0)
tpStatus.Position = UDim2.new(0, 10, 0, 0)
tpStatus.BackgroundTransparency = 1
tpStatus.Text = ""
tpStatus.TextColor3 = GREEN
tpStatus.TextSize = 12
tpStatus.Font = Enum.Font.Gotham
tpStatus.TextXAlignment = Enum.TextXAlignment.Left
tpStatus.Parent = tpStatusRow

local function findPlayer(q)
    q=q:lower()
    local best,score=nil,999
    for _,p in pairs(Players:GetPlayers()) do
        if p~=lp then
            local n=p.Name:lower()
            if n==q then return p end
            if n:sub(1,#q)==q then if #n<score then best=p score=#n end
            elseif n:find(q,1,true) then if #n<score then best=p score=#n end end
        end
    end
    return best
end

local function doTpToPlayer(target)
    local char  = lp.Character
    local tchar = target.Character
    if not char or not tchar then tpStatus.Text = "персонаж не загружен" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return end
    local hrp  = char:FindFirstChild("HumanoidRootPart")
    local thrp = tchar:FindFirstChild("HumanoidRootPart")
    if not hrp or not thrp then tpStatus.Text = "нет HRP" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return end
    hrp.CFrame = thrp.CFrame + Vector3.new(0, 3, 0)
    tpStatus.Text = " " .. target.Name
    tpStatus.TextColor3 = GREEN
end

tpGo.MouseButton1Click:Connect(function()
    local target = findPlayer(tpBox.Text)
    if not target then tpStatus.Text = "не найден" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return end
    doTpToPlayer(target)
end)

local _sec1331 = makeDivider(tpPanel, "ИГРОКИ — ТАП  ТП")

local plrListFrame = Instance.new("Frame")
plrListFrame.Size = UDim2.new(1, 0, 0, 0)
plrListFrame.BackgroundTransparency = 1
plrListFrame.BorderSizePixel = 0
plrListFrame.Parent = _sec1331

local plrListLayout = Instance.new("UIListLayout")
plrListLayout.Padding = UDim.new(0, 3)
plrListLayout.Parent = plrListFrame
plrListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    plrListFrame.Size = UDim2.new(1, 0, 0, plrListLayout.AbsoluteContentSize.Y + 4)
end)

function buildPlayerList()
    for _, ch in pairs(plrListFrame:GetChildren()) do
        if not ch:IsA("UIListLayout") then ch:Destroy() end
    end
    local list = Players:GetPlayers()
    if #list <= 1 then
        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, 0, 0, 28)
        lbl.BackgroundTransparency = 1
        lbl.Text = "других игроков нет"lbl.TextColor3 = Color3.fromRGB(120, 80, 160)
        lbl.TextSize = 11
        lbl.Font = Enum.Font.Gotham
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.Parent = plrListFrame
        return
    end
    for _, p in pairs(list) do
        if p == lp then continue end
        local row = Instance.new("Frame")
        row.Size = UDim2.new(1, 0, 0, 40)
        row.BackgroundColor3 = BGROW
        row.BorderSizePixel = 0
        row.Parent = plrListFrame
        Instance.new("UICorner", row).CornerRadius = UDim.new(0, 7)

        local stripe = Instance.new("Frame")
        stripe.Size = UDim2.new(0, 3, 1, -8)
        stripe.Position = UDim2.new(0, 0, 0, 4)
        stripe.BackgroundColor3 = LTPUR
        stripe.BorderSizePixel = 0
        stripe.Parent = row
        Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

        local nameLbl = Instance.new("TextLabel")
        nameLbl.Size = UDim2.new(1, -80, 1, 0)
        nameLbl.Position = UDim2.new(0, 12, 0, 0)
        nameLbl.BackgroundTransparency = 1
        nameLbl.Text = p.Name
        nameLbl.TextColor3 = OFFWHITE
        nameLbl.TextSize = 12
        nameLbl.Font = Enum.Font.GothamBold
        nameLbl.TextXAlignment = Enum.TextXAlignment.Left
        nameLbl.Parent = row

        
        local distLbl = Instance.new("TextLabel")
        distLbl.Size = UDim2.new(0, 60, 1, 0)
        distLbl.Position = UDim2.new(1, -136, 0, 0)
        distLbl.BackgroundTransparency = 1
        distLbl.TextColor3 = Color3.fromRGB(140, 90, 200)
        distLbl.TextSize = 10
        distLbl.Font = Enum.Font.Gotham
        distLbl.Parent = row
        local function refreshDist()
            local myChar = lp.Character
            local tc = p.Character
            if myChar and tc then
                local a = myChar:FindFirstChild("HumanoidRootPart")
                local b = tc:FindFirstChild("HumanoidRootPart")
                if a and b then
                    distLbl.Text = math.floor((a.Position-b.Position).Magnitude).." m"return
                end
            end
            distLbl.Text = "? m"end
        refreshDist()
        task.delay(0, function()
            while plrListFrame.Parent do
                refreshDist()
                task.wait(2)
            end
        end)

        local tpBtn = Instance.new("TextButton")
        tpBtn.Size = UDim2.new(0, 58, 0, 26)
        tpBtn.Position = UDim2.new(1, -66, 0.5, -13)
        tpBtn.BackgroundColor3 = Color3.fromRGB(40, 10, 80)
        tpBtn.TextColor3 = Color3.fromRGB(200, 150, 255)
        tpBtn.Text = " ТП"tpBtn.TextSize = 11
        tpBtn.Font = Enum.Font.GothamBold
        tpBtn.Parent = row
        Instance.new("UICorner", tpBtn).CornerRadius = UDim.new(1, 0)

        local player = p
        tpBtn.MouseButton1Click:Connect(function()
            doTpToPlayer(player)
            tpBtn.BackgroundColor3 = Color3.fromRGB(20, 60, 20)
            tpBtn.TextColor3 = GREEN
            task.delay(1.2, function()
                tpBtn.BackgroundColor3 = Color3.fromRGB(40, 10, 80)
                tpBtn.TextColor3 = Color3.fromRGB(200, 150, 255)
            end)
        end)
    end
end

local refreshPlrRow = Instance.new("Frame")
refreshPlrRow.Size = UDim2.new(1, 0, 0, 36)
refreshPlrRow.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
refreshPlrRow.BorderSizePixel = 0
refreshPlrRow.Parent = _sec1331
Instance.new("UICorner", refreshPlrRow).CornerRadius = UDim.new(0, 8)

local refreshPlrBtn = Instance.new("TextButton")
refreshPlrBtn.Size = UDim2.new(1, -20, 0, 24)
refreshPlrBtn.Position = UDim2.new(0, 10, 0, 6)
refreshPlrBtn.BackgroundColor3 = DKPUR
refreshPlrBtn.TextColor3 = OFFWHITE
refreshPlrBtn.Text = "Обновить список игроков"
refreshPlrBtn.TextSize = 11
refreshPlrBtn.Font = Enum.Font.GothamBold
refreshPlrBtn.Parent = refreshPlrRow
Instance.new("UICorner", refreshPlrBtn).CornerRadius = UDim.new(0, 6)
refreshPlrBtn.MouseButton1Click:Connect(buildPlayerList)
buildPlayerList()

local _sec1467 = makeDivider(tpPanel, "ДРУГИЕ ТОЧКИ")

local function makeTpQuickBtn(parent, label, col, fn)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 40)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -8)
    stripe.Position = UDim2.new(0, 0, 0, 4)
    stripe.BackgroundColor3 = col
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -80, 1, 0)
    lbl.Position = UDim2.new(0, 12, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = label
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 12
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 58, 0, 26)
    btn.Position = UDim2.new(1, -66, 0.5, -13)
    btn.BackgroundColor3 = Color3.fromRGB(30, 14, 50)
    btn.TextColor3 = col
    btn.Text = " ТП"btn.TextSize = 11
    btn.Font = Enum.Font.GothamBold
    btn.Parent = row
    Instance.new("UICorner", btn).CornerRadius = UDim.new(1, 0)

    btn.MouseButton1Click:Connect(function()
        fn(btn, stripe)
    end)
    return btn
end

makeTpQuickBtn(tpPanel, "К спавну", Color3.fromRGB(80, 200, 255), function(btn, stripe)
    local char = lp.Character
    if not char then tpStatus.Text = "нет персонажа" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    local spawn = workspace:FindFirstChildOfClass("SpawnLocation")
        or workspace:FindFirstChildWhichIsA("SpawnLocation")
    if spawn then
        hrp.CFrame = spawn.CFrame + Vector3.new(0, 5, 0)
        tpStatus.Text = " спавн" tpStatus.TextColor3 = GREEN
    else
        
        hrp.CFrame = CFrame.new(hrp.Position.X, 5, hrp.Position.Z)
        tpStatus.Text = " Y=5 (спавн не найден)" tpStatus.TextColor3 = Color3.fromRGB(255,200,50)
    end
    btn.TextColor3 = GREEN task.delay(1.2, function() btn.TextColor3 = Color3.fromRGB(80,200,255) end)
end)

makeTpQuickBtn(tpPanel, "К ближайшему дрону", Color3.fromRGB(255,160,0), function(btn, stripe)
    local char = lp.Character
    if not char then tpStatus.Text = "нет персонажа" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local myPos = hrp.Position
    local bestDist = math.huge
    local bestPart = nil
    local bestName = ""for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Model") then
            for _, n in pairs(DRONE_TARGET_NAMES) do
                if obj.Name:lower() == n:lower() then
                    local rp = obj:FindFirstChildWhichIsA("BasePart")
                    if rp then
                        local d = (rp.Position - myPos).Magnitude
                        if d < bestDist then
                            bestDist = d bestPart = rp bestName = obj.Name
                        end
                    end
                    break
                end
            end
        end
    end
    if bestPart then
        hrp.CFrame = CFrame.new(bestPart.Position + Vector3.new(0, 6, 0))
        tpStatus.Text = string.format(" %s (%.0f m)", bestName, bestDist) tpStatus.TextColor3 = GREEN
        btn.TextColor3 = GREEN task.delay(1.2, function() btn.TextColor3 = Color3.fromRGB(255,160,0) end)
    else
        tpStatus.Text = "дроны не найдены" tpStatus.TextColor3 = Color3.fromRGB(255,80,80)
    end
end)

local _sec1569 = makeDivider(tpPanel, "КООРДИНАТЫ XYZ")

local xyzRow = Instance.new("Frame")
xyzRow.Size = UDim2.new(1, 0, 0, 52)
xyzRow.BackgroundColor3 = BGROW
xyzRow.BorderSizePixel = 0
xyzRow.Parent = _sec1569
Instance.new("UICorner", xyzRow).CornerRadius = UDim.new(0, 8)

local xyzHint = Instance.new("TextLabel")
xyzHint.Size = UDim2.new(1, -12, 0, 16)
xyzHint.Position = UDim2.new(0, 10, 0, 4)
xyzHint.BackgroundTransparency = 1
xyzHint.Text = "X  /  Y  /  Z"
xyzHint.TextColor3 = Color3.fromRGB(140, 90, 200)
xyzHint.TextSize = 10
xyzHint.Font = Enum.Font.Gotham
xyzHint.TextXAlignment = Enum.TextXAlignment.Left
xyzHint.Parent = xyzRow

local function makeXyzBox(placeholderTxt, xOffset, width)
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0, width, 0, 26)
    box.Position = UDim2.new(0, xOffset, 0, 20)
    box.BackgroundColor3 = Color3.fromRGB(20, 10, 34)
    box.TextColor3 = WHITE
    box.PlaceholderText = placeholderTxt
    box.PlaceholderColor3 = Color3.fromRGB(100, 60, 140)
    box.Text = ""box.TextSize = 12
    box.Font = Enum.Font.Gotham
    box.ClearTextOnFocus = false
    box.Parent = xyzRow
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 5)
    return box
end

local xBox = makeXyzBox("X", 8, 68)
local yBox = makeXyzBox("Y", 82, 68)
local zBox = makeXyzBox("Z", 156, 68)

local xyzGoBtn = Instance.new("TextButton")
xyzGoBtn.Size = UDim2.new(0, 58, 0, 26)
xyzGoBtn.Position = UDim2.new(1, -66, 0, 20)
xyzGoBtn.BackgroundColor3 = PURPLE
xyzGoBtn.TextColor3 = WHITE
xyzGoBtn.Text = "TP XYZ"
xyzGoBtn.TextSize = 11
xyzGoBtn.Font = Enum.Font.GothamBold
xyzGoBtn.Parent = xyzRow
Instance.new("UICorner", xyzGoBtn).CornerRadius = UDim.new(0, 6)

xyzGoBtn.MouseButton1Click:Connect(function()
    local x = tonumber(xBox.Text)
    local y = tonumber(yBox.Text)
    local z = tonumber(zBox.Text)
    if not x or not y or not z then
        tpStatus.Text = "введи X Y Z числами" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return
    end
    local char = lp.Character
    if not char then tpStatus.Text = "нет персонажа" tpStatus.TextColor3 = Color3.fromRGB(255,80,80) return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    hrp.CFrame = CFrame.new(x, y, z)
    tpStatus.Text = string.format(" %.0f / %.0f / %.0f", x, y, z) tpStatus.TextColor3 = GREEN
end)

local copyPosRow = Instance.new("Frame")
copyPosRow.Size = UDim2.new(1, 0, 0, 32)
copyPosRow.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
copyPosRow.BorderSizePixel = 0
copyPosRow.Parent = _sec1569
Instance.new("UICorner", copyPosRow).CornerRadius = UDim.new(0, 6)

local copyPosBtn = Instance.new("TextButton")
copyPosBtn.Size = UDim2.new(1, -20, 0, 22)
copyPosBtn.Position = UDim2.new(0, 10, 0, 5)
copyPosBtn.BackgroundColor3 = Color3.fromRGB(30, 14, 50)
copyPosBtn.TextColor3 = Color3.fromRGB(160, 110, 220)
copyPosBtn.Text = " Вставить мои координаты в поля"
copyPosBtn.TextSize = 11
copyPosBtn.Font = Enum.Font.Gotham
copyPosBtn.Parent = copyPosRow
Instance.new("UICorner", copyPosBtn).CornerRadius = UDim.new(0, 5)

copyPosBtn.MouseButton1Click:Connect(function()
    local char = lp.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local pos = hrp.Position
    xBox.Text = string.format("%.1f", pos.X)
    yBox.Text = string.format("%.1f", pos.Y)
    zBox.Text = string.format("%.1f", pos.Z)
    tpStatus.Text = "координаты вставлены" tpStatus.TextColor3 = Color3.fromRGB(140, 90, 200)
end)

local _sec1671 = makeDivider(tpPanel, "СОХРАНЁННЫЕ ТОЧКИ")

local WAYPOINTS_FILE = "workspace/vanta_waypoints.txt"local waypoints = {}

local function serializeWaypoints()
    local lines = {}
    for _, wp in ipairs(waypoints) do
        lines[#lines+1] = string.format("%s|%.3f|%.3f|%.3f", wp.name, wp.x, wp.y, wp.z)
    end
    return table.concat(lines, "\n")
end

local function deserializeWaypoints(content)
    local result = {}
    for line in content:gmatch("[^\n]+") do
        local name, x, y, z = line:match("^(.+)|([%-%.%d]+)|([%-%.%d]+)|([%-%.%d]+)$")
        if name and x and y and z then
            result[#result+1] = {name=name, x=tonumber(x), y=tonumber(y), z=tonumber(z)}
        end
    end
    return result
end

local function saveWaypointsFile()
    local ok = pcall(function()
        writefile(WAYPOINTS_FILE, serializeWaypoints())
    end)
    return ok
end

local function loadWaypointsFile()
    local ok, content = pcall(function() return readfile(WAYPOINTS_FILE) end)
    if ok and content and content ~= "" then
        waypoints = deserializeWaypoints(content)
        return true
    end
    return false
end

local wpNameRow = Instance.new("Frame")
wpNameRow.Size = UDim2.new(1, 0, 0, 44)
wpNameRow.BackgroundColor3 = BGROW
wpNameRow.BorderSizePixel = 0
wpNameRow.Parent = _sec1671
Instance.new("UICorner", wpNameRow).CornerRadius = UDim.new(0, 8)

local wpHintLbl = Instance.new("TextLabel")
wpHintLbl.Size = UDim2.new(1, -12, 0, 14)
wpHintLbl.Position = UDim2.new(0, 10, 0, 3)
wpHintLbl.BackgroundTransparency = 1
wpHintLbl.Text = "Название точки"
wpHintLbl.TextColor3 = Color3.fromRGB(140, 90, 200)
wpHintLbl.TextSize = 10
wpHintLbl.Font = Enum.Font.Gotham
wpHintLbl.TextXAlignment = Enum.TextXAlignment.Left
wpHintLbl.Parent = wpNameRow

local wpNameBox = Instance.new("TextBox")
wpNameBox.Size = UDim2.new(1, -90, 0, 24)
wpNameBox.Position = UDim2.new(0, 8, 0, 16)
wpNameBox.BackgroundColor3 = Color3.fromRGB(20, 10, 34)
wpNameBox.TextColor3 = WHITE
wpNameBox.PlaceholderText = "база / точка А / ..."
wpNameBox.PlaceholderColor3 = Color3.fromRGB(100, 60, 140)
wpNameBox.Text = ""
wpNameBox.TextSize = 12
wpNameBox.Font = Enum.Font.Gotham
wpNameBox.ClearTextOnFocus = false
wpNameBox.Parent = wpNameRow
Instance.new("UICorner", wpNameBox).CornerRadius = UDim.new(0, 5)

local wpSaveBtn = Instance.new("TextButton")
wpSaveBtn.Size = UDim2.new(0, 72, 0, 24)
wpSaveBtn.Position = UDim2.new(1, -80, 0, 16)
wpSaveBtn.BackgroundColor3 = Color3.fromRGB(30, 80, 30)
wpSaveBtn.TextColor3 = GREEN
wpSaveBtn.Text = " Сохранить"
wpSaveBtn.TextSize = 10
wpSaveBtn.Font = Enum.Font.GothamBold
wpSaveBtn.Parent = wpNameRow
Instance.new("UICorner", wpSaveBtn).CornerRadius = UDim.new(0, 5)

local wpListFrame = Instance.new("Frame")
wpListFrame.Size = UDim2.new(1, 0, 0, 0)
wpListFrame.BackgroundTransparency = 1
wpListFrame.BorderSizePixel = 0
wpListFrame.Parent = _sec1671

local wpListLayout = Instance.new("UIListLayout")
wpListLayout.Padding = UDim.new(0, 3)
wpListLayout.Parent = wpListFrame
wpListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    wpListFrame.Size = UDim2.new(1, 0, 0, wpListLayout.AbsoluteContentSize.Y + 4)
end)

local wpStatusLbl = Instance.new("TextLabel")
wpStatusLbl.Size = UDim2.new(1, 0, 0, 18)
wpStatusLbl.BackgroundTransparency = 1
wpStatusLbl.Text = ""
wpStatusLbl.TextColor3 = GREEN
wpStatusLbl.TextSize = 10
wpStatusLbl.Font = Enum.Font.Gotham
wpStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
wpStatusLbl.Parent = _sec1671

local function setWpStatus(txt, col)
    wpStatusLbl.Text = "" .. txt
    wpStatusLbl.TextColor3 = col or GREEN
end

local function rebuildWpList()
    for _, ch in pairs(wpListFrame:GetChildren()) do
        if not ch:IsA("UIListLayout") then ch:Destroy() end
    end

    if #waypoints == 0 then
        local empty = Instance.new("TextLabel")
        empty.Size = UDim2.new(1, 0, 0, 24)
        empty.BackgroundTransparency = 1
        empty.Text = "нет сохранённых точек"empty.TextColor3 = Color3.fromRGB(100, 70, 140)
        empty.TextSize = 11
        empty.Font = Enum.Font.Gotham
        empty.TextXAlignment = Enum.TextXAlignment.Left
        empty.Parent = wpListFrame
        return
    end

    for i = #waypoints, 1, -1 do  
        local wp = waypoints[i]
        local idx = i

        local row = Instance.new("Frame")
        row.Size = UDim2.new(1, 0, 0, 48)
        row.BackgroundColor3 = BGROW
        row.BorderSizePixel = 0
        row.Parent = wpListFrame
        Instance.new("UICorner", row).CornerRadius = UDim.new(0, 7)

        local stripe = Instance.new("Frame")
        stripe.Size = UDim2.new(0, 3, 1, -8)
        stripe.Position = UDim2.new(0, 0, 0, 4)
        stripe.BackgroundColor3 = ACCENT
        stripe.BorderSizePixel = 0
        stripe.Parent = row
        Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

        local nameLbl = Instance.new("TextLabel")
        nameLbl.Size = UDim2.new(1, -140, 0, 22)
        nameLbl.Position = UDim2.new(0, 10, 0, 4)
        nameLbl.BackgroundTransparency = 1
        nameLbl.Text = wp.name
        nameLbl.TextColor3 = OFFWHITE
        nameLbl.TextSize = 12
        nameLbl.Font = Enum.Font.GothamBold
        nameLbl.TextXAlignment = Enum.TextXAlignment.Left
        nameLbl.TextTruncate = Enum.TextTruncate.AtEnd
        nameLbl.Parent = row

        local coordLbl = Instance.new("TextLabel")
        coordLbl.Size = UDim2.new(1, -140, 0, 16)
        coordLbl.Position = UDim2.new(0, 10, 0, 26)
        coordLbl.BackgroundTransparency = 1
        coordLbl.Text = string.format("%.0f / %.0f / %.0f", wp.x, wp.y, wp.z)
        coordLbl.TextColor3 = Color3.fromRGB(120, 80, 170)
        coordLbl.TextSize = 10
        coordLbl.Font = Enum.Font.Gotham
        coordLbl.TextXAlignment = Enum.TextXAlignment.Left
        coordLbl.Parent = row

        
        local tpWpBtn = Instance.new("TextButton")
        tpWpBtn.Size = UDim2.new(0, 52, 0, 38)
        tpWpBtn.Position = UDim2.new(1, -132, 0, 5)
        tpWpBtn.BackgroundColor3 = Color3.fromRGB(30, 14, 50)
        tpWpBtn.TextColor3 = ACCENT
        tpWpBtn.Text = " ТП"tpWpBtn.TextSize = 11
        tpWpBtn.Font = Enum.Font.GothamBold
        tpWpBtn.Parent = row
        Instance.new("UICorner", tpWpBtn).CornerRadius = UDim.new(0, 6)

        
        local delWpBtn = Instance.new("TextButton")
        delWpBtn.Size = UDim2.new(0, 36, 0, 38)
        delWpBtn.Position = UDim2.new(1, -72, 0, 5)
        delWpBtn.BackgroundColor3 = Color3.fromRGB(60, 10, 10)
        delWpBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
        delWpBtn.Text = ""delWpBtn.TextSize = 14
        delWpBtn.Font = Enum.Font.GothamBold
        delWpBtn.Parent = row
        Instance.new("UICorner", delWpBtn).CornerRadius = UDim.new(0, 6)

        
        local toXyzBtn = Instance.new("TextButton")
        toXyzBtn.Size = UDim2.new(0, 26, 0, 38)
        toXyzBtn.Position = UDim2.new(1, -30, 0, 5)
        toXyzBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
        toXyzBtn.TextColor3 = Color3.fromRGB(140, 140, 255)
        toXyzBtn.Text = ""toXyzBtn.TextSize = 13
        toXyzBtn.Font = Enum.Font.GothamBold
        toXyzBtn.Parent = row
        Instance.new("UICorner", toXyzBtn).CornerRadius = UDim.new(0, 6)

        local wpData = wp

        tpWpBtn.MouseButton1Click:Connect(function()
            local char = lp.Character
            if not char then setWpStatus("нет персонажа", Color3.fromRGB(255,80,80)) return end
            local hrp = char:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            hrp.CFrame = CFrame.new(wpData.x, wpData.y, wpData.z)
            setWpStatus(" " .. wpData.name, GREEN)
            tpStatus.Text = " " .. wpData.name tpStatus.TextColor3 = GREEN
            tpWpBtn.BackgroundColor3 = Color3.fromRGB(20, 60, 20)
            tpWpBtn.TextColor3 = GREEN
            task.delay(1.2, function()
                tpWpBtn.BackgroundColor3 = Color3.fromRGB(30, 14, 50)
                tpWpBtn.TextColor3 = ACCENT
            end)
        end)

        delWpBtn.MouseButton1Click:Connect(function()
            table.remove(waypoints, idx)
            saveWaypointsFile()
            rebuildWpList()
            setWpStatus("удалено: " .. wpData.name, Color3.fromRGB(255, 120, 80))
        end)

        toXyzBtn.MouseButton1Click:Connect(function()
            xBox.Text = string.format("%.1f", wpData.x)
            yBox.Text = string.format("%.1f", wpData.y)
            zBox.Text = string.format("%.1f", wpData.z)
            setWpStatus("загружено в XYZ: " .. wpData.name, Color3.fromRGB(140, 90, 200))
        end)
    end
end

wpSaveBtn.MouseButton1Click:Connect(function()
    local char = lp.Character
    if not char then setWpStatus("нет персонажа", Color3.fromRGB(255,80,80)) return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local pos = hrp.Position
    local name = wpNameBox.Text ~= "" and wpNameBox.Text or string.format("точка %d", #waypoints + 1)
    table.insert(waypoints, {name=name, x=pos.X, y=pos.Y, z=pos.Z})
    local saved = saveWaypointsFile()
    rebuildWpList()
    setWpStatus(string.format("сохранено: %s (%.0f/%.0f/%.0f)", name, pos.X, pos.Y, pos.Z), GREEN)
    wpNameBox.Text = ""
end)

loadWaypointsFile()
rebuildWpList()

held = {f=false,b=false,l=false,r=false,u=false,d=false}

local DpadFrame = Instance.new("Frame")
DpadFrame.Size = UDim2.new(0, 140, 0, 140)
DpadFrame.Position = UDim2.new(0, 16, 1, -164)
DpadFrame.BackgroundColor3 = Color3.fromRGB(30, 10, 50)
DpadFrame.BackgroundTransparency = 0.5
DpadFrame.BorderSizePixel = 0
DpadFrame.Active = true
DpadFrame.Visible = false
DpadFrame.Parent = ScreenGui
Instance.new("UICorner", DpadFrame).CornerRadius = UDim.new(1, 0)
local dpadStroke = Instance.new("UIStroke", DpadFrame)
dpadStroke.Color = PURPLE dpadStroke.Thickness = 2

local dpadKnob = Instance.new("Frame")
dpadKnob.Size = UDim2.new(0, 50, 0, 50)
dpadKnob.Position = UDim2.new(0.5, -25, 0.5, -25)
dpadKnob.BackgroundColor3 = PURPLE
dpadKnob.BackgroundTransparency = 0.3
dpadKnob.BorderSizePixel = 0
dpadKnob.Parent = DpadFrame
Instance.new("UICorner", dpadKnob).CornerRadius = UDim.new(1, 0)

local UDFrame = Instance.new("Frame")
UDFrame.Size = UDim2.new(0, 100, 0, 100)
UDFrame.Position = UDim2.new(1, -116, 1, -124)
UDFrame.BackgroundColor3 = Color3.fromRGB(30, 10, 50)
UDFrame.BackgroundTransparency = 0.5
UDFrame.BorderSizePixel = 0
UDFrame.Active = true
UDFrame.Visible = false
UDFrame.Parent = ScreenGui
Instance.new("UICorner", UDFrame).CornerRadius = UDim.new(1, 0)
local udStroke = Instance.new("UIStroke", UDFrame)
udStroke.Color = PURPLE udStroke.Thickness = 2

local udKnob = Instance.new("Frame")
udKnob.Size = UDim2.new(0, 38, 0, 38)
udKnob.Position = UDim2.new(0.5, -19, 0.5, -19)
udKnob.BackgroundColor3 = Color3.fromRGB(180, 80, 255)
udKnob.BackgroundTransparency = 0.3
udKnob.BorderSizePixel = 0
udKnob.Parent = UDFrame
Instance.new("UICorner", udKnob).CornerRadius = UDim.new(1, 0)

local udLabel = Instance.new("TextLabel")
udLabel.Size = UDim2.new(1, 0, 1, 0)
udLabel.BackgroundTransparency = 1
udLabel.Text = ""
udLabel.TextColor3 = Color3.fromRGB(200, 160, 255)
udLabel.TextSize = 16
udLabel.Font = Enum.Font.GothamBold
udLabel.Parent = UDFrame

local dpadTouchId = nil
local udTouchId   = nil
local DEAD = 15  

local function getAbsCenter(frame)
    local ap = frame.AbsolutePosition
    local as = frame.AbsoluteSize
    return Vector2.new(ap.X + as.X/2, ap.Y + as.Y/2)
end

local function inFrame(frame, pos)
    local ap = frame.AbsolutePosition
    local as = frame.AbsoluteSize
    return pos.X >= ap.X and pos.X <= ap.X+as.X
       and pos.Y >= ap.Y and pos.Y <= ap.Y+as.Y
end

UIS.TouchStarted:Connect(function(touch, _)
    if not DpadFrame.Visible then return end
    local pos = touch.Position
    if inFrame(DpadFrame, pos) and not dpadTouchId then
        dpadTouchId = touch.Id
    elseif inFrame(UDFrame, pos) and not udTouchId then
        udTouchId = touch.Id
    end
end)

UIS.TouchMoved:Connect(function(touch, _)
    if not DpadFrame.Visible then return end
    local pos = touch.Position

    if touch.Id == dpadTouchId then
        local center = getAbsCenter(DpadFrame)
        local dx = pos.X - center.X
        local dy = pos.Y - center.Y
        local maxR = DpadFrame.AbsoluteSize.X/2 - 25
        local len = math.sqrt(dx*dx+dy*dy)
        local cx = math.clamp(dx, -maxR, maxR)
        local cy = math.clamp(dy, -maxR, maxR)
        dpadKnob.Position = UDim2.new(0.5, cx-25, 0.5, cy-25)
        held.f = dy < -DEAD
        held.b = dy >  DEAD
        held.l = dx < -DEAD
        held.r = dx >  DEAD

    elseif touch.Id == udTouchId then
        local center = getAbsCenter(UDFrame)
        local dy = pos.Y - center.Y
        local maxR = UDFrame.AbsoluteSize.Y/2 - 19
        local cy = math.clamp(dy, -maxR, maxR)
        udKnob.Position = UDim2.new(0.5, -19, 0.5, cy-19)
        held.u = dy < -DEAD
        held.d = dy >  DEAD
    end
end)

UIS.TouchEnded:Connect(function(touch, _)
    if touch.Id == dpadTouchId then
        dpadTouchId = nil
        dpadKnob.Position = UDim2.new(0.5,-25,0.5,-25)
        held.f=false held.b=false held.l=false held.r=false
    elseif touch.Id == udTouchId then
        udTouchId = nil
        udKnob.Position = UDim2.new(0.5,-19,0.5,-19)
        held.u=false held.d=false
    end
end)

DRONE_COLOR  = Color3.fromRGB(0,   255, 100)   
SHAHED_COLOR = Color3.fromRGB(255, 160,  0)    
ROCKET_COLOR = Color3.fromRGB(255,  50, 50)    
MINE_COLOR   = Color3.fromRGB(255, 255,  0)    
PLANE_COLOR  = Color3.fromRGB(80,  180, 255)   

droneGroups = {
    { names = {"fpv","newfpv","FPV","Drone","flamingo","fp1","defendsDronespawn"}, color = DRONE_COLOR,  label = "FPV Дроны" },
    { names = {"shahed 238","Shahed-136 white","Shahed-136 Black","geran5","gerbera","italmas"}, color = SHAHED_COLOR, label = "Шахеды / Герань" },
    { names = {"kalibr","molniy","R2"},                           color = ROCKET_COLOR, label = "Ракеты" },
    { names = {"bomb82"},                                         color = ROCKET_COLOR, label = "Бомбы" },
    { names = {"mine"},                                           color = MINE_COLOR,   label = "Мины" },
    { names = {"F-16"},                                           color = PLANE_COLOR,  label = "Самолёты" },
    { names = {"pvo"},                                            color = Color3.fromRGB(200,80,255), label = "ПВО" },
    { names = {"gilza"},                                          color = Color3.fromRGB(255,220,0),  label = "Снаряды ПВО" },
}

droneNameColor = {}
for _, g in pairs(droneGroups) do
    for _, n in pairs(g.names) do
        droneNameColor[n] = g.color
    end
end

droneEspActive  = {}   
droneEspLabels  = {}   
local droneEspConn    = nil
droneMaxDist    = 20000  

local function clearDroneLabels()
    for model, bb in pairs(droneEspLabels) do
        if bb and bb.Parent then bb:Destroy() end
        droneEspLabels[model] = nil
    end
end

function getMyPos()
    local char = lp.Character
    if not char then return nil end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if hrp then return hrp.Position end
    
    local seat = char:FindFirstChildWhichIsA("VehicleSeat")
    if seat then return seat.Position end
    return nil
end

local function makeDroneLabel(model, col)
    local rootPart = model:FindFirstChildWhichIsA("BasePart")
    if not rootPart then return end

    local bb = Instance.new("BillboardGui")
    bb.Name = "DroneESP"bb.Adornee = rootPart
    bb.Size = UDim2.new(0, 80, 0, 36)
    bb.StudsOffset = Vector3.new(0, 3, 0)
    bb.AlwaysOnTop = true   
    bb.MaxDistance = droneMaxDist
    bb.Parent = rootPart

    
    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bg.BackgroundTransparency = 0.4
    bg.BorderSizePixel = 0
    bg.Parent = bb
    Instance.new("UICorner", bg).CornerRadius = UDim.new(0, 4)

    
    local stroke = Instance.new("UIStroke")
    stroke.Color = col
    stroke.Thickness = 1.5
    stroke.Parent = bg

    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 0.55, 0)
    nameLabel.Position = UDim2.new(0, 0, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = model.Name
    nameLabel.TextColor3 = col
    nameLabel.TextSize = 11
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextStrokeTransparency = 0.3
    nameLabel.Parent = bg

    
    local distLabel = Instance.new("TextLabel")
    distLabel.Name = "Dist"distLabel.Size = UDim2.new(1, 0, 0.45, 0)
    distLabel.Position = UDim2.new(0, 0, 0.55, 0)
    distLabel.BackgroundTransparency = 1
    distLabel.Text = "? m"distLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    distLabel.TextSize = 10
    distLabel.Font = Enum.Font.Gotham
    distLabel.TextStrokeTransparency = 0.4
    distLabel.Parent = bg

    droneEspLabels[model] = bb
end

local dronePartCache = {}

local function getDronePart(model)
    if dronePartCache[model] and dronePartCache[model].Parent then
        return dronePartCache[model]
    end
    local rp = model:FindFirstChild("Mainpart") or model:FindFirstChildWhichIsA("BasePart")
    dronePartCache[model] = rp
    return rp
end

local function refreshDroneESP()
    local myPos = getMyPos()

    
    for model, bb in pairs(droneEspLabels) do
        if not model.Parent then
            if bb and bb.Parent then bb:Destroy() end
            droneEspLabels[model] = nil
            dronePartCache[model] = nil
        elseif myPos and bb and bb.Parent then
            local rp = getDronePart(model)
            if rp then
                local dist = math.floor((rp.Position - myPos).Magnitude)
                if dist > droneMaxDist then
                    bb:Destroy()
                    droneEspLabels[model] = nil
                else
                    local distLbl = bb:FindFirstChild("Dist", true)
                    if distLbl then distLbl.Text = dist .. " m" end
                end
            end
        end
    end

    
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Model") then
            local col = droneNameColor[obj.Name]
            if col and droneEspActive[obj.Name] and not droneEspLabels[obj] then
                local rp = getDronePart(obj)
                if rp then
                    local dist = myPos and (rp.Position - myPos).Magnitude or 0
                    if not myPos or dist <= droneMaxDist then
                        makeDroneLabel(obj, col)
                    end
                end
            end
        end
    end
end

local function anyDroneActive()
    for _, v in pairs(droneEspActive) do if v then return true end end
    return false
end

local espLoopRunning = false

function updateDroneConn()
    if anyDroneActive() then
        if not espLoopRunning then
            espLoopRunning = true
            task.spawn(function()
                while espLoopRunning and anyDroneActive() do
                    refreshDroneESP()
                    task.wait(0.5)
                end
                espLoopRunning = false
                clearDroneLabels()
            end)
        end
    else
        espLoopRunning = false
        clearDroneLabels()
    end
end

local _sec2410 = makeDivider(dronePanel, "РАДИУС ESP")
makeNumberInput(dronePanel, "Радиус ESP (studs)", 20000, 1, 999999, function(v)
    droneMaxDist = v
    local myPos = getMyPos()
    if myPos then
        for model, bb in pairs(droneEspLabels) do
            local rp = model:FindFirstChildWhichIsA("BasePart")
            if rp and (rp.Position - myPos).Magnitude > droneMaxDist then
                if bb and bb.Parent then bb:Destroy() end
                droneEspLabels[model] = nil
            end
        end
    end
end)

local _sec2427 = makeDivider(dronePanel, "БЫСТРЫЙ ESP")

local allRow = Instance.new("Frame")
allRow.Size = UDim2.new(1, 0, 0, 48)
allRow.BackgroundColor3 = BGROW
allRow.BorderSizePixel = 0
allRow.Parent = _sec2427
Instance.new("UICorner", allRow).CornerRadius = UDim.new(0, 8)

local allStripe = Instance.new("Frame")
allStripe.Size = UDim2.new(0, 3, 1, -8)
allStripe.Position = UDim2.new(0, 0, 0, 4)
allStripe.BackgroundColor3 = PURPLE
allStripe.BorderSizePixel = 0
allStripe.Parent = allRow
Instance.new("UICorner", allStripe).CornerRadius = UDim.new(0, 3)

local allLbl = Instance.new("TextLabel")
allLbl.Size = UDim2.new(1, -90, 1, 0)
allLbl.Position = UDim2.new(0, 14, 0, 0)
allLbl.BackgroundTransparency = 1
allLbl.Text = "Все объекты сразу"
allLbl.TextColor3 = OFFWHITE
allLbl.TextSize = 13
allLbl.Font = Enum.Font.Gotham
allLbl.TextXAlignment = Enum.TextXAlignment.Left
allLbl.Parent = allRow

local allPill = Instance.new("Frame")
allPill.Size = UDim2.new(0, 58, 0, 28)
allPill.Position = UDim2.new(1, -68, 0.5, -14)
allPill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
allPill.BorderSizePixel = 0
allPill.Parent = allRow
Instance.new("UICorner", allPill).CornerRadius = UDim.new(1, 0)

local allPillLbl = Instance.new("TextLabel")
allPillLbl.Size = UDim2.new(1, 0, 1, 0)
allPillLbl.BackgroundTransparency = 1
allPillLbl.Text = "OFF"
allPillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
allPillLbl.TextSize = 11
allPillLbl.Font = Enum.Font.GothamBold
allPillLbl.Parent = allPill

local allBtn = Instance.new("TextButton")
allBtn.Size = UDim2.new(1, 0, 1, 0)
allBtn.BackgroundTransparency = 1
allBtn.Text = ""
allBtn.Parent = allRow

local allState = false

groupPills = {}
groupStates = {}

allBtn.MouseButton1Click:Connect(function()
    allState = not allState
    for _, g in pairs(droneGroups) do
        for _, n in pairs(g.names) do
            droneEspActive[n] = allState
        end
        groupStates[g.label] = allState
    end
    
    for lbl, pill in pairs(groupPills) do
        local pillLbl = pill:FindFirstChildOfClass("TextLabel")
        if allState then
            pill.BackgroundColor3 = Color3.fromRGB(40, 100, 40)
            if pillLbl then pillLbl.Text = "ON" pillLbl.TextColor3 = GREEN end
        else
            pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
            if pillLbl then pillLbl.Text = "OFF" pillLbl.TextColor3 = Color3.fromRGB(160,100,200) end
        end
    end
    if allState then
        allPill.BackgroundColor3 = Color3.fromRGB(40, 100, 40)
        allPillLbl.Text = "ON" allPillLbl.TextColor3 = GREEN
        allStripe.BackgroundColor3 = GREEN
    else
        allPill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
        allPillLbl.Text = "OFF" allPillLbl.TextColor3 = Color3.fromRGB(160,100,200)
        allStripe.BackgroundColor3 = PURPLE
        clearDroneLabels()
    end
    updateDroneConn()
end)

_sec2516 = makeDivider(dronePanel, "ПО ТИПУ")

end 
local _debugOk, _debugErr = pcall(function()

for _, g in pairs(droneGroups) do
    local grp = g
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 52)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = _sec2516
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    
    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -8)
    stripe.Position = UDim2.new(0, 0, 0, 4)
    stripe.BackgroundColor3 = grp.color
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    
    local dot = Instance.new("Frame")
    dot.Size = UDim2.new(0, 10, 0, 10)
    dot.Position = UDim2.new(0, 12, 0.5, -5)
    dot.BackgroundColor3 = grp.color
    dot.BorderSizePixel = 0
    dot.Parent = row
    Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -90, 0, 22)
    lbl.Position = UDim2.new(0, 28, 0, 6)
    lbl.BackgroundTransparency = 1
    lbl.Text = grp.label
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 13
    lbl.Font = Enum.Font.GothamBold
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    
    local sub = Instance.new("TextLabel")
    sub.Size = UDim2.new(1, -90, 0, 16)
    sub.Position = UDim2.new(0, 28, 0, 28)
    sub.BackgroundTransparency = 1
    sub.Text = table.concat(grp.names, ", ")
    sub.TextColor3 = Color3.fromRGB(120, 80, 160)
    sub.TextSize = 10
    sub.Font = Enum.Font.Gotham
    sub.TextXAlignment = Enum.TextXAlignment.Left
    sub.TextTruncate = Enum.TextTruncate.AtEnd
    sub.Parent = row

    local pill = Instance.new("Frame")
    pill.Size = UDim2.new(0, 58, 0, 28)
    pill.Position = UDim2.new(1, -68, 0.5, -14)
    pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
    pill.BorderSizePixel = 0
    pill.Parent = row
    Instance.new("UICorner", pill).CornerRadius = UDim.new(1, 0)
    groupPills[grp.label] = pill

    local pillLbl = Instance.new("TextLabel")
    pillLbl.Size = UDim2.new(1, 0, 1, 0)
    pillLbl.BackgroundTransparency = 1
    pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
    pillLbl.TextSize = 11
    pillLbl.Font = Enum.Font.GothamBold
    pillLbl.Parent = pill

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""btn.Parent = row

    groupStates[grp.label] = false
    btn.MouseButton1Click:Connect(function()
        groupStates[grp.label] = not groupStates[grp.label]
        local on = groupStates[grp.label]
        for _, n in pairs(grp.names) do
            droneEspActive[n] = on
        end
        if on then
            pill.BackgroundColor3 = Color3.fromRGB(40, 100, 40)
            pillLbl.Text = "ON" pillLbl.TextColor3 = GREEN
            stripe.BackgroundColor3 = grp.color
        else
            pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
            pillLbl.Text = "OFF" pillLbl.TextColor3 = Color3.fromRGB(160,100,200)
            
            for model, bb in pairs(droneEspLabels) do
                if droneNameColor[model.Name] == grp.color then
                    if bb and bb.Parent then bb:Destroy() end
                    droneEspLabels[model] = nil
                end
            end
        end
        updateDroneConn()
    end)
end

local _sec2624 = makeDivider(dronePanel, "ЦВЕТА")

local legendData = {
    {col=DRONE_COLOR,  txt="Зелёный    — FPV дроны"},
    {col=SHAHED_COLOR, txt="Оранжевый  — Шахеды / Герань"},
    {col=ROCKET_COLOR, txt="Красный    — Ракеты / Бомбы"},
    {col=MINE_COLOR,   txt="Жёлтый     — Мины"},
    {col=PLANE_COLOR,  txt="Голубой    — Самолёты"},
    {col=Color3.fromRGB(200,80,255), txt="Фиолетовый — ПВО"},
    {col=Color3.fromRGB(255,220,0),  txt="Жёлтый яркий — Снаряды ПВО"},
}
for _, ld in pairs(legendData) do
    local lr = Instance.new("Frame")
    lr.Size = UDim2.new(1, 0, 0, 28)
    lr.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
    lr.BorderSizePixel = 0
    lr.Parent = _sec2624
    Instance.new("UICorner", lr).CornerRadius = UDim.new(0, 6)

    local dot = Instance.new("Frame")
    dot.Size = UDim2.new(0, 10, 0, 10)
    dot.Position = UDim2.new(0, 10, 0.5, -5)
    dot.BackgroundColor3 = ld.col
    dot.BorderSizePixel = 0
    dot.Parent = lr
    Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

    local ltxt = Instance.new("TextLabel")
    ltxt.Size = UDim2.new(1, -28, 1, 0)
    ltxt.Position = UDim2.new(0, 26, 0, 0)
    ltxt.BackgroundTransparency = 1
    ltxt.Text = ld.txt
    ltxt.TextColor3 = OFFWHITE
    ltxt.TextSize = 11
    ltxt.Font = Enum.Font.Gotham
    ltxt.TextXAlignment = Enum.TextXAlignment.Left
    ltxt.Parent = lr
end

local CAR_COLOR = Color3.fromRGB(255, 200, 0)

local carKeywords = {
    "car","Car","vehicle","Vehicle","truck","Truck","jeep","Jeep",
    "tank","Tank","humvee","Humvee","btр","BТР","btr","BTR",
    "bus","Bus","van","Van","pickup","Pickup","UAZ","uaz",
}

local carEspLabels = {}   
local carEspConn   = nil
local carEspOn     = false

local function isCarModel(obj)
    if not obj:IsA("Model") then return false end
    local n = obj.Name:lower()
    for _, kw in pairs(carKeywords) do
        if n:find(kw:lower(), 1, true) then return true end
    end
    
    if obj:FindFirstChildWhichIsA("VehicleSeat") and
       not obj:FindFirstChild("cams") and
       not obj:FindFirstChild("Mainpart") then
        return true
    end
    return false
end

local function clearCarLabels()
    for model, bb in pairs(carEspLabels) do
        if bb and bb.Parent then bb:Destroy() end
        carEspLabels[model] = nil
    end
end

local function getDronePilot(model)
    for _, obj in pairs(model:GetDescendants()) do
        if obj:IsA("VehicleSeat") then
            local sw = obj:FindFirstChild("SeatWeld")
            if sw then
                local hrp = sw.Part1
                if hrp then
                    local char = hrp.Parent
                    if char then
                        for _, p in pairs(Players:GetPlayers()) do
                            if p.Character == char then
                                return {name = "@" .. p.Name, player = p}
                            end
                        end
                    end
                end
            end
            if obj.Occupant then
                local char = obj.Occupant.Parent
                if char then
                    for _, p in pairs(Players:GetPlayers()) do
                        if p.Character == char then
                            return {name = "@" .. p.Name, player = p}
                        end
                    end
                end
            end
        end
    end
    return nil
end

local function makeCarLabel(model)
    local root = model.PrimaryPart
        or model:FindFirstChildWhichIsA("BasePart")
    if not root then return end
    if carEspLabels[model] then return end

    local bb = Instance.new("BillboardGui")
    bb.Name       = "CarESP"bb.Adornee    = root
    bb.Size       = UDim2.new(0, 90, 0, 38)
    bb.StudsOffset = Vector3.new(0, 4, 0)
    bb.AlwaysOnTop = true
    bb.MaxDistance = droneMaxDist
    bb.Parent      = root

    local bg = Instance.new("Frame", bb)
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bg.BackgroundTransparency = 0.45
    bg.BorderSizePixel = 0
    Instance.new("UICorner", bg).CornerRadius = UDim.new(0, 4)

    local dot = Instance.new("Frame", bg)
    dot.Size = UDim2.new(0, 8, 0, 8)
    dot.Position = UDim2.new(0, 4, 0.5, -4)
    dot.BackgroundColor3 = CAR_COLOR
    dot.BorderSizePixel = 0
    Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

    local nameLbl = Instance.new("TextLabel", bg)
    nameLbl.Size = UDim2.new(1, -16, 0.55, 0)
    nameLbl.Position = UDim2.new(0, 14, 0, 2)
    nameLbl.BackgroundTransparency = 1
    nameLbl.Text = model.Name
    nameLbl.TextColor3 = CAR_COLOR
    nameLbl.TextSize = 11
    nameLbl.Font = Enum.Font.GothamBold
    nameLbl.TextXAlignment = Enum.TextXAlignment.Left
    nameLbl.TextTruncate = Enum.TextTruncate.AtEnd
    nameLbl.TextStrokeTransparency = 0.3
    nameLbl.TextStrokeColor3 = Color3.fromRGB(0,0,0)

    
    local pilotData = getDronePilot(model)
    local distLbl = Instance.new("TextLabel", bg)
    distLbl.Name = "Pilot"distLbl.Size = UDim2.new(1, -16, 0.42, 0)
    distLbl.Position = UDim2.new(0, 14, 0.55, 0)
    distLbl.BackgroundTransparency = 1
    distLbl.Text = pilotData and (" " .. pilotData.name) or "пусто"distLbl.TextColor3 = pilotData and Color3.fromRGB(200, 200, 100) or Color3.fromRGB(120, 90, 160)
    distLbl.TextSize = 10
    distLbl.Font = Enum.Font.Gotham
    distLbl.TextXAlignment = Enum.TextXAlignment.Left

    carEspLabels[model] = bb
end

local carLastRefresh = 0

local function removeCarLabel(model)
    local bb = carEspLabels[model]
    if bb and bb.Parent then bb:Destroy() end
    carEspLabels[model] = nil
end

local function refreshCarESP()
    
    local now = os.clock()
    if now - carLastRefresh < 0.5 then return end
    carLastRefresh = now

    
    for model, bb in pairs(carEspLabels) do
        if not model.Parent then removeCarLabel(model) end
    end
    if not carEspOn then return end

    local myPos = getMyPos()
    for _, obj in pairs(workspace:GetChildren()) do
        if isCarModel(obj) then
            local root = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
            local inRange = true
            if myPos and root then
                inRange = (root.Position - myPos).Magnitude <= droneMaxDist
            end
            local pilot = inRange and getDronePilot(obj) or nil
            if pilot then
                if not carEspLabels[obj] then makeCarLabel(obj) end
                local bb = carEspLabels[obj]
                local pl = bb and bb:FindFirstChild("Pilot", true)
                if pl then pl.Text = " " .. pilot.name end
            else
                
                removeCarLabel(obj)
            end
        end
    end
end

local function setCarESP(state)
    carEspOn = state
    if state then
        if not carEspConn then
            carEspConn = RunService.Heartbeat:Connect(refreshCarESP)
        end
    else
        if carEspConn then carEspConn:Disconnect() carEspConn = nil end
        clearCarLabels()
    end
end

local _sec_caresp = makeDivider(visPanel, "ESP МАШИН")

makeToggle(_sec_caresp, "Машины ESP", function(state)
    setCarESP(state)
end)

local carHintRow = Instance.new("Frame")
carHintRow.Size = UDim2.new(1, 0, 0, 28)
carHintRow.BackgroundColor3 = Color3.fromRGB(18, 8, 30)
carHintRow.BorderSizePixel = 0
carHintRow.Parent = _sec_caresp
Instance.new("UICorner", carHintRow).CornerRadius = UDim.new(0, 6)

local carHint = Instance.new("TextLabel")
carHint.Size = UDim2.new(1, -12, 1, 0)
carHint.Position = UDim2.new(0, 10, 0, 0)
carHint.BackgroundTransparency = 1
carHint.Text = " метка жёлтая  радиус из поля выше  видно сквозь стены"
carHint.TextColor3 = Color3.fromRGB(140, 90, 200)
carHint.TextSize = 10
carHint.Font = Enum.Font.Gotham
carHint.TextXAlignment = Enum.TextXAlignment.Left
carHint.Parent = carHintRow

local hijackAutoOn = false
local hijackAutoThread = nil

local function makeToggleRow(parent, label, onToggle)
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, 0, 0, 44)
    row.BackgroundColor3 = BGROW
    row.BorderSizePixel = 0
    row.Parent = parent
    Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

    local stripe = Instance.new("Frame")
    stripe.Size = UDim2.new(0, 3, 1, -10)
    stripe.Position = UDim2.new(0, 0, 0, 5)
    stripe.BackgroundColor3 = LTPUR
    stripe.BorderSizePixel = 0
    stripe.Parent = row
    Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -90, 1, 0)
    lbl.Position = UDim2.new(0, 12, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = label
    lbl.TextColor3 = OFFWHITE
    lbl.TextSize = 12
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Parent = row

    local pill = Instance.new("Frame")
    pill.Size = UDim2.new(0, 56, 0, 26)
    pill.Position = UDim2.new(1, -66, 0.5, -13)
    pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
    pill.BorderSizePixel = 0
    pill.Parent = row
    Instance.new("UICorner", pill).CornerRadius = UDim.new(1, 0)

    local pillLbl = Instance.new("TextLabel")
    pillLbl.Size = UDim2.new(1, 0, 1, 0)
    pillLbl.BackgroundTransparency = 1
    pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
    pillLbl.TextSize = 11
    pillLbl.Font = Enum.Font.GothamBold
    pillLbl.Parent = pill

    local state = false
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text = ""btn.Parent = row
    btn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            pill.BackgroundColor3 = Color3.fromRGB(40, 100, 40)
            pillLbl.Text = "ON"pillLbl.TextColor3 = GREEN
            stripe.BackgroundColor3 = GREEN
        else
            pill.BackgroundColor3 = Color3.fromRGB(40, 20, 60)
            pillLbl.Text = "OFF"pillLbl.TextColor3 = Color3.fromRGB(160, 100, 200)
            stripe.BackgroundColor3 = LTPUR
        end
        onToggle(state)
    end)
    return row, lbl
end

local _sec2744 = makeDivider(dronePanel, "СБИТЬ")

local crashStatusLbl = Instance.new("TextLabel")
crashStatusLbl.Size = UDim2.new(1, -8, 0, 20)
crashStatusLbl.BackgroundTransparency = 1
crashStatusLbl.TextColor3 = Color3.fromRGB(180, 130, 255)
crashStatusLbl.Text = "Готово"
crashStatusLbl.TextSize = 11
crashStatusLbl.Font = Enum.Font.Gotham
crashStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
crashStatusLbl.Parent = _sec2744

local function setCrashStatus(txt, col)
    crashStatusLbl.Text = "" .. txt
    crashStatusLbl.TextColor3 = col or Color3.fromRGB(180, 130, 255)
end

local crashOnceRow = Instance.new("Frame")
crashOnceRow.Size = UDim2.new(1, 0, 0, 44)
crashOnceRow.BackgroundColor3 = Color3.fromRGB(50, 10, 10)
crashOnceRow.BorderSizePixel = 0
crashOnceRow.Parent = _sec2744
Instance.new("UICorner", crashOnceRow).CornerRadius = UDim.new(0, 8)

local crashOnceBtn = Instance.new("TextButton")
crashOnceBtn.Size = UDim2.new(1, -20, 0, 30)
crashOnceBtn.Position = UDim2.new(0, 10, 0, 7)
crashOnceBtn.BackgroundColor3 = Color3.fromRGB(160, 30, 30)
crashOnceBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
crashOnceBtn.Text = "Сбить все дроны / шахеды / ракеты"
crashOnceBtn.TextSize = 12
crashOnceBtn.Font = Enum.Font.GothamBold
crashOnceBtn.BorderSizePixel = 0
crashOnceBtn.Parent = crashOnceRow
Instance.new("UICorner", crashOnceBtn).CornerRadius = UDim.new(0, 6)

local function doKillAll()
    local fired = 0
    local rotated = 0
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("RemoteEvent") then
            local n = obj.Name:lower()
            
            if n == "crashed" then
                pcall(function() obj:FireServer() end)
                fired += 1
            end
            
            if n == "set rotate" then
                pcall(function() obj:FireServer(0, 0, 0) end)
                rotated += 1
            end
        end
    end
    return fired, rotated
end

crashOnceBtn.MouseButton1Click:Connect(function()
    local f, r = doKillAll()
    setCrashStatus(string.format("crashed: %d  |  set rotate: %d объектов", f, r),
        (f + r > 0) and Color3.fromRGB(80, 255, 140) or Color3.fromRGB(255, 200, 50))
end)

local killAutoOn = false

makeToggleRow(dronePanel, "Авто-сбивать (каждые 2с)", function(on)
    killAutoOn = on
    if on then
        task.spawn(function()
            while killAutoOn do
                local f, r = doKillAll()
                setCrashStatus(string.format(" crashed:%d  rot:%d", f, r),
                    Color3.fromRGB(255, 180, 50))
                task.wait(2)
            end
        end)
    else
        setCrashStatus("авто-сбивание остановлено", Color3.fromRGB(140, 90, 200))
    end
end)

local camActive     = false
local camConn       = nil
local camTarget     = nil   
local camTargetName = ""
local origCamType   = nil

local function stopDroneCam()
    camActive = false
    if camConn then camConn:Disconnect() camConn = nil end
    local cam = workspace.CurrentCamera
    if origCamType then
        cam.CameraType = origCamType
        origCamType = nil
    end
    camTarget = nil
end

local function startDroneCam(model)
    stopDroneCam()
    
    local anchor = model:FindFirstChild("cams") or model:FindFirstChild("Mainpart")
    if not anchor then return false end

    local cam = workspace.CurrentCamera
    origCamType = cam.CameraType
    cam.CameraType = Enum.CameraType.Scriptable
    camTarget = anchor
    camActive = true
    camTargetName = model.Name

    camConn = RunService.RenderStepped:Connect(function()
        if not camActive or not camTarget or not camTarget.Parent then
            stopDroneCam()
            return
        end
        cam.CFrame = camTarget.CFrame * CFrame.new(0, 0.3, 0)
    end)
    return true
end

local function startPlayerCam(player)
    stopDroneCam()
    local char = player.Character
    if not char then return false end
    local head = char:FindFirstChild("Head")
    if not head then return false end
    local cam = workspace.CurrentCamera
    origCamType = cam.CameraType
    cam.CameraType = Enum.CameraType.Scriptable
    camTarget = head
    camActive = true
    camTargetName = player.Name
    camConn = RunService.RenderStepped:Connect(function()
        if not camActive or not camTarget or not camTarget.Parent then
            stopDroneCam()
            return
        end
        cam.CFrame = camTarget.CFrame
    end)
    return true
end

local function findDroneModels()
    local droneNames = {
        "flamingo","newfpv","FPV","fp1","molniy",
        "geran5","shahed 238","italmas","kalibr",
        "romaska","gerbera","Shahed-136 white",
        "Shahed-136 Black","interceptor","fpv","BC","bomb82",
    }
    local list = {}
    local children = workspace:GetChildren()
    for i = #children, 1, -1 do
        local obj = children[i]
        if obj:IsA("Model") then
            for _, n in ipairs(droneNames) do
                if obj.Name:lower() == n:lower() then
                    table.insert(list, obj)
                    break
                end
            end
        end
    end
    return list
end

local _sec2931 = makeDivider(dronePanel, "СПАВН ТОЧКИ")

local spawnResultFrame = Instance.new("Frame")
spawnResultFrame.Size = UDim2.new(1, -8, 0, 0)
spawnResultFrame.BackgroundColor3 = Color3.fromRGB(10, 6, 18)
spawnResultFrame.BackgroundTransparency = 0.2
spawnResultFrame.BorderSizePixel = 0
spawnResultFrame.LayoutOrder = 998
spawnResultFrame.Parent = _sec2931
Instance.new("UICorner", spawnResultFrame).CornerRadius = UDim.new(0, 6)

local spawnResultLayout = Instance.new("UIListLayout")
spawnResultLayout.SortOrder = Enum.SortOrder.LayoutOrder
spawnResultLayout.Padding = UDim.new(0, 2)
spawnResultLayout.Parent = spawnResultFrame

spawnResultLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    spawnResultFrame.Size = UDim2.new(1, -8, 0, spawnResultLayout.AbsoluteContentSize.Y + 8)
end)

local function addSpawnLine(text, col)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -8, 0, 18)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = col or Color3.fromRGB(200, 200, 200)
    lbl.TextSize = 10
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextTruncate = Enum.TextTruncate.AtEnd
    lbl.Parent = spawnResultFrame
end

local function clearSpawnLines()
    for _, c in pairs(spawnResultFrame:GetChildren()) do
        if c:IsA("TextLabel") then c:Destroy() end
    end
end

local function fmtPos(pos)
    return string.format("X:%.0f Y:%.0f Z:%.0f", pos.X, pos.Y, pos.Z)
end

local spawnKeywords = {
    "spawn", "Spawn", "launch", "Launch", "drone", "Drone",
    "defendsDronespawn", "launchsetblue", "fpvGui", "spawnpoint"
}

local function scanSpawns()
    clearSpawnLines()
    addSpawnLine("Сканирование...", Color3.fromRGB(180, 180, 60))

    local found = {}
    local seen  = {}  

    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("SpawnLocation") then
            local key = math.floor(obj.Position.X).."_"..math.floor(obj.Position.Z)
            if not seen[key] then
                seen[key] = true
                local team = obj.TeamColor and tostring(obj.TeamColor) or "нет"table.insert(found, {
                    name  = " "..obj.Name,
                    pos   = obj.Position,
                    team  = team,
                    cframe= obj.CFrame
                })
            end
        end
    end

    
    local function checkObj(obj, depth)
        if depth > 6 then return end
        local name = obj.Name:lower()
        local match = false
        for _, kw in pairs(spawnKeywords) do
            if name:find(kw:lower(), 1, true) then match = true break end
        end
        if match then
            local part = obj:IsA("BasePart") and obj
                or obj:FindFirstChild("Mainpart")
                or obj:FindFirstChild("VehicleSeat")
                or obj:FindFirstChildWhichIsA("BasePart")
            local pos = part and part.Position
                or (obj:IsA("Model") and obj.PrimaryPart and obj.PrimaryPart.Position)
            if pos then
                local key = math.floor(pos.X).."_"..math.floor(pos.Z)
                if not seen[key] then
                    seen[key] = true
                    table.insert(found, {
                        name   = " "..obj.Name,
                        pos    = pos,
                        cframe = part and part.CFrame or nil
                    })
                end
            end
        end
        for _, child in pairs(obj:GetChildren()) do
            checkObj(child, depth + 1)
        end
    end
    checkObj(workspace, 0)

    
    clearSpawnLines()

    if #found == 0 then
        addSpawnLine("Ничего не найдено", Color3.fromRGB(255, 80, 80))
        return
    end

    addSpawnLine(string.format("Найдено: %d точек", #found), Color3.fromRGB(80, 255, 140))

    for _, item in pairs(found) do
        local pos = item.pos
        local col = item.name:sub(1,3) == " "and Color3.fromRGB(80, 200, 255)   
            or  Color3.fromRGB(200, 160, 255)  

        
        addSpawnLine(string.format("%s", item.name), col)

        
        local posStr = string.format("X:%.0f  Y:%.0f  Z:%.0f", pos.X, pos.Y, pos.Z)
        if item.team then
            posStr = posStr.."[team: "..item.team.."]"end
        addSpawnLine(posStr, Color3.fromRGB(255, 220, 80))

        
        local tpRow = Instance.new("Frame")
        tpRow.Size = UDim2.new(1, -8, 0, 28)
        tpRow.BackgroundTransparency = 1
        tpRow.LayoutOrder = 999
        tpRow.Parent = spawnResultFrame

        local tpBtn = Instance.new("TextButton")
        tpBtn.Size = UDim2.new(0, 80, 1, 0)
        tpBtn.Position = UDim2.new(0, 14, 0, 0)
        tpBtn.BackgroundColor3 = Color3.fromRGB(30, 60, 30)
        tpBtn.TextColor3 = Color3.fromRGB(80, 255, 120)
        tpBtn.Text = " TP сюда"tpBtn.TextSize = 11
        tpBtn.Font = Enum.Font.GothamBold
        tpBtn.Parent = tpRow
        Instance.new("UICorner", tpBtn).CornerRadius = UDim.new(0, 6)

        local copyBtn = Instance.new("TextButton")
        copyBtn.Size = UDim2.new(0, 80, 1, 0)
        copyBtn.Position = UDim2.new(0, 100, 0, 0)
        copyBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 60)
        copyBtn.TextColor3 = Color3.fromRGB(160, 160, 255)
        copyBtn.Text = " Копировать"copyBtn.TextSize = 11
        copyBtn.Font = Enum.Font.GothamBold
        copyBtn.Parent = tpRow
        Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0, 6)

        local capturedPos = pos
        tpBtn.MouseButton1Click:Connect(function()
            local char = lp.Character
            local hrp  = char and char:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = CFrame.new(capturedPos + Vector3.new(0, 5, 0))
            end
        end)

        copyBtn.MouseButton1Click:Connect(function()
            local str = string.format("%.0f, %.0f, %.0f", capturedPos.X, capturedPos.Y, capturedPos.Z)
            if setclipboard then setclipboard(str) end
            copyBtn.Text = " Скопировано"task.delay(2, function() copyBtn.Text = " Копировать" end)
        end)
    end
end

local scanBtn = Instance.new("TextButton")
scanBtn.Size = UDim2.new(1, -8, 0, 34)
scanBtn.BackgroundColor3 = Color3.fromRGB(60, 20, 100)
scanBtn.TextColor3 = Color3.fromRGB(200, 160, 255)
scanBtn.Text = " Сканировать спавны"
scanBtn.TextSize = 12
scanBtn.Font = Enum.Font.GothamBold
scanBtn.LayoutOrder = 997
scanBtn.Parent = _sec2931
Instance.new("UICorner", scanBtn).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", scanBtn).Color = Color3.fromRGB(100, 40, 180)

scanBtn.MouseButton1Click:Connect(scanSpawns)

local _sec3047 = makeDivider(camPanel, "КАМЕРА ДРОНА")

local camListFrame = Instance.new("Frame")
camListFrame.Size = UDim2.new(1, 0, 0, 0)
camListFrame.BackgroundTransparency = 1
camListFrame.BorderSizePixel = 0
camListFrame.Parent = _sec3047

local camListLayout = Instance.new("UIListLayout")
camListLayout.Padding = UDim.new(0, 3)
camListLayout.Parent = camListFrame
camListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    camListFrame.Size = UDim2.new(1, 0, 0, camListLayout.AbsoluteContentSize.Y + 4)
end)

local camStatusLbl = Instance.new("TextLabel")
camStatusLbl.Size = UDim2.new(1, 0, 0, 20)
camStatusLbl.BackgroundTransparency = 1
camStatusLbl.Text = " камера выкл"
camStatusLbl.TextColor3 = Color3.fromRGB(140, 90, 200)
camStatusLbl.TextSize = 11
camStatusLbl.Font = Enum.Font.Gotham
camStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
camStatusLbl.Parent = _sec3047

local function buildCamList()
    for _, ch in ipairs(camListFrame:GetChildren()) do
        if ch:IsA("Frame") or ch:IsA("TextButton") or ch:IsA("TextLabel") then ch:Destroy() end
    end
    local models = findDroneModels()
    if #models == 0 then
        local empty = Instance.new("TextLabel")
        empty.Size = UDim2.new(1, 0, 0, 28)
        empty.BackgroundTransparency = 1
        empty.Text = "дронов не найдено"empty.TextColor3 = Color3.fromRGB(120, 80, 160)
        empty.TextSize = 11
        empty.Font = Enum.Font.Gotham
        empty.TextXAlignment = Enum.TextXAlignment.Left
        empty.Parent = camListFrame
        return
    end

    
    local piloted = {}
    for _, model in ipairs(models) do
        local pilot = getDronePilot(model)
        if pilot then
            table.insert(piloted, {model = model, pilot = pilot})
        end
    end

    if #piloted == 0 then
        local empty = Instance.new("TextLabel")
        empty.Size = UDim2.new(1, 0, 0, 28)
        empty.BackgroundTransparency = 1
        empty.Text = "нет активных пилотов"empty.TextColor3 = Color3.fromRGB(120, 80, 160)
        empty.TextSize = 11
        empty.Font = Enum.Font.Gotham
        empty.TextXAlignment = Enum.TextXAlignment.Left
        empty.Parent = camListFrame
        return
    end

    
    local countLbl = Instance.new("TextLabel")
    countLbl.Size = UDim2.new(1, 0, 0, 20)
    countLbl.BackgroundTransparency = 1
    countLbl.Text = string.format(" новые сверху   |   %d с пилотом", #piloted)
    countLbl.TextColor3 = Color3.fromRGB(160, 100, 220)
    countLbl.TextSize = 10
    countLbl.Font = Enum.Font.Gotham
    countLbl.TextXAlignment = Enum.TextXAlignment.Left
    countLbl.Parent = camListFrame

    for _, entry in ipairs(piloted) do
        local model    = entry.model
        local pilot    = entry.pilot          
        local pilotPlayer = pilot.player

        
        local myTeam     = lp.Team
        local pilotTeam  = pilotPlayer and pilotPlayer.Team or nil
        local sameTeam   = myTeam and pilotTeam and (myTeam == pilotTeam)
        local diffTeam   = myTeam and pilotTeam and (myTeam ~= pilotTeam)

        local TEAM_BG    = sameTeam and Color3.fromRGB(10, 22, 50)
                        or diffTeam and Color3.fromRGB(50, 10, 10)
                        or BGROW
        local TEAM_STRIPE = sameTeam and Color3.fromRGB(60, 130, 255)
                         or diffTeam and Color3.fromRGB(255, 60, 60)
                         or (droneNameColor[model.Name] or LTPUR)
        local TEAM_GLOW  = sameTeam and Color3.fromRGB(40, 100, 220)
                        or diffTeam and Color3.fromRGB(200, 40, 40)
                        or nil

        local row = Instance.new("Frame")
        row.Size = UDim2.new(1, 0, 0, 56)
        row.BackgroundColor3 = TEAM_BG
        row.BorderSizePixel = 0
        row.Parent = camListFrame
        Instance.new("UICorner", row).CornerRadius = UDim.new(0, 7)

        
        if TEAM_GLOW then
            local glow = Instance.new("UIStroke")
            glow.Color = TEAM_GLOW
            glow.Thickness = 1.5
            glow.Transparency = 0.2
            glow.Parent = row
        end

        
        local stripe = Instance.new("Frame")
        stripe.Size = UDim2.new(0, 3, 1, -8)
        stripe.Position = UDim2.new(0, 0, 0, 4)
        stripe.BackgroundColor3 = TEAM_STRIPE
        stripe.BorderSizePixel = 0
        stripe.Parent = row
        Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

        
        local nameLbl = Instance.new("TextLabel")
        nameLbl.Size = UDim2.new(1, -84, 0, 22)
        nameLbl.Position = UDim2.new(0, 10, 0, 6)
        nameLbl.BackgroundTransparency = 1
        nameLbl.Text = model.Name
        nameLbl.TextColor3 = droneNameColor[model.Name] or OFFWHITE
        nameLbl.TextSize = 12
        nameLbl.Font = Enum.Font.GothamBold
        nameLbl.TextXAlignment = Enum.TextXAlignment.Left
        nameLbl.Parent = row

        
        local pilotLbl = Instance.new("TextLabel")
        pilotLbl.Size = UDim2.new(1, -84, 0, 18)
        pilotLbl.Position = UDim2.new(0, 10, 0, 28)
        pilotLbl.BackgroundTransparency = 1
        pilotLbl.Text = "pilot: " .. pilot.name
        pilotLbl.TextColor3 = sameTeam and Color3.fromRGB(100, 160, 255)
                           or diffTeam and Color3.fromRGB(255, 100, 100)
                           or Color3.fromRGB(80, 220, 120)
        pilotLbl.TextSize = 10
        pilotLbl.Font = Enum.Font.Gotham
        pilotLbl.TextXAlignment = Enum.TextXAlignment.Left
        pilotLbl.Parent = row

        
        
        local camBtn = Instance.new("TextButton")
        camBtn.Size = UDim2.new(0, 80, 0, 26)
        camBtn.Position = UDim2.new(0, 10, 1, -32)
        camBtn.BackgroundColor3 = Color3.fromRGB(20, 40, 80)
        camBtn.TextColor3 = Color3.fromRGB(120, 180, 255)
        camBtn.Text = " Смотр"camBtn.TextSize = 10
        camBtn.Font = Enum.Font.GothamBold
        camBtn.BorderSizePixel = 0
        camBtn.Parent = row
        Instance.new("UICorner", camBtn).CornerRadius = UDim.new(1, 0)

        
        local watching = false
        camBtn.MouseButton1Click:Connect(function()
            watching = not watching
            if watching then
                local ok = startDroneCam(model)
                if ok then
                    camBtn.BackgroundColor3 = Color3.fromRGB(10, 60, 20)
                    camBtn.TextColor3 = GREEN
                    camBtn.Text = " LIVE"camStatusLbl.Text = " смотрю: " .. model.Name
                else
                    watching = false
                end
            else
                stopDroneCam()
                camBtn.BackgroundColor3 = Color3.fromRGB(20, 40, 80)
                camBtn.TextColor3 = Color3.fromRGB(120, 180, 255)
                camBtn.Text = " Смотр"camStatusLbl.Text = " камера выкл"end
        end)
    end
end

local refreshCamRow = Instance.new("Frame")
refreshCamRow.Size = UDim2.new(1, 0, 0, 38)
refreshCamRow.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
refreshCamRow.BorderSizePixel = 0
refreshCamRow.Parent = _sec3047
Instance.new("UICorner", refreshCamRow).CornerRadius = UDim.new(0, 8)

local refreshCamBtn = Instance.new("TextButton")
refreshCamBtn.Size = UDim2.new(1, -20, 0, 26)
refreshCamBtn.Position = UDim2.new(0, 10, 0, 6)
refreshCamBtn.BackgroundColor3 = PURPLE
refreshCamBtn.TextColor3 = WHITE
refreshCamBtn.Text = "Обновить список дронов"
refreshCamBtn.TextSize = 12
refreshCamBtn.Font = Enum.Font.GothamBold
refreshCamBtn.Parent = refreshCamRow
Instance.new("UICorner", refreshCamBtn).CornerRadius = UDim.new(0, 6)

refreshCamBtn.MouseButton1Click:Connect(buildCamList)

local stopCamRow = Instance.new("Frame")
stopCamRow.Size = UDim2.new(1, 0, 0, 38)
stopCamRow.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
stopCamRow.BorderSizePixel = 0
stopCamRow.Parent = _sec3047
Instance.new("UICorner", stopCamRow).CornerRadius = UDim.new(0, 8)

local stopCamBtn = Instance.new("TextButton")
stopCamBtn.Size = UDim2.new(1, -20, 0, 26)
stopCamBtn.Position = UDim2.new(0, 10, 0, 6)
stopCamBtn.BackgroundColor3 = Color3.fromRGB(80, 10, 10)
stopCamBtn.TextColor3 = WHITE
stopCamBtn.Text = "Выключить камеру"
stopCamBtn.TextSize = 12
stopCamBtn.Font = Enum.Font.GothamBold
stopCamBtn.Parent = stopCamRow
Instance.new("UICorner", stopCamBtn).CornerRadius = UDim.new(0, 6)

stopCamBtn.MouseButton1Click:Connect(function()
    stopDroneCam()
    camStatusLbl.Text = " камера выкл"buildCamList()
end)

buildCamList()

local _sec_playercam = makeDivider(camPanel, "КАМЕРА ИГРОКА")

local playerCamStatusLbl = Instance.new("TextLabel")
playerCamStatusLbl.Size = UDim2.new(1, 0, 0, 20)
playerCamStatusLbl.BackgroundTransparency = 1
playerCamStatusLbl.Text = " камера выкл"
playerCamStatusLbl.TextColor3 = Color3.fromRGB(140, 90, 200)
playerCamStatusLbl.TextSize = 11
playerCamStatusLbl.Font = Enum.Font.Gotham
playerCamStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
playerCamStatusLbl.Parent = _sec_playercam

local playerListFrame = Instance.new("Frame")
playerListFrame.Size = UDim2.new(1, 0, 0, 0)
playerListFrame.BackgroundTransparency = 1
playerListFrame.BorderSizePixel = 0
playerListFrame.Parent = _sec_playercam

local playerListLayout = Instance.new("UIListLayout")
playerListLayout.Padding = UDim.new(0, 3)
playerListLayout.Parent = playerListFrame
playerListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    playerListFrame.Size = UDim2.new(1, 0, 0, playerListLayout.AbsoluteContentSize.Y + 4)
end)

local function buildPlayerList()
    for _, ch in ipairs(playerListFrame:GetChildren()) do
        if ch:IsA("Frame") or ch:IsA("TextLabel") then ch:Destroy() end
    end

    local list = Players:GetPlayers()
    
    local others = {}
    for _, p in ipairs(list) do
        if p ~= lp then table.insert(others, p) end
    end

    if #others == 0 then
        local empty = Instance.new("TextLabel")
        empty.Size = UDim2.new(1, 0, 0, 28)
        empty.BackgroundTransparency = 1
        empty.Text = "других игроков нет"empty.TextColor3 = Color3.fromRGB(120, 80, 160)
        empty.TextSize = 11
        empty.Font = Enum.Font.Gotham
        empty.TextXAlignment = Enum.TextXAlignment.Left
        empty.Parent = playerListFrame
        return
    end

    
    local cntLbl = Instance.new("TextLabel")
    cntLbl.Size = UDim2.new(1, 0, 0, 20)
    cntLbl.BackgroundTransparency = 1
    cntLbl.Text = string.format("игроков на сервере: %d", #others)
    cntLbl.TextColor3 = Color3.fromRGB(160, 100, 220)
    cntLbl.TextSize = 10
    cntLbl.Font = Enum.Font.Gotham
    cntLbl.TextXAlignment = Enum.TextXAlignment.Left
    cntLbl.Parent = playerListFrame

    for _, player in ipairs(others) do
        local row = Instance.new("Frame")
        row.Size = UDim2.new(1, 0, 0, 46)
        row.BackgroundColor3 = BGROW
        row.BorderSizePixel = 0
        row.Parent = playerListFrame
        Instance.new("UICorner", row).CornerRadius = UDim.new(0, 7)

        local stripe = Instance.new("Frame")
        stripe.Size = UDim2.new(0, 3, 1, -8)
        stripe.Position = UDim2.new(0, 0, 0, 4)
        stripe.BackgroundColor3 = LTPUR
        stripe.BorderSizePixel = 0
        stripe.Parent = row
        Instance.new("UICorner", stripe).CornerRadius = UDim.new(0, 3)

        local nameLbl = Instance.new("TextLabel")
        nameLbl.Size = UDim2.new(1, -100, 1, 0)
        nameLbl.Position = UDim2.new(0, 10, 0, 0)
        nameLbl.BackgroundTransparency = 1
        nameLbl.Text = player.Name
        nameLbl.TextColor3 = OFFWHITE
        nameLbl.TextSize = 12
        nameLbl.Font = Enum.Font.GothamBold
        nameLbl.TextXAlignment = Enum.TextXAlignment.Left
        nameLbl.Parent = row

        local eyeBtn = Instance.new("TextButton")
        eyeBtn.Size = UDim2.new(0, 80, 0, 26)
        eyeBtn.Position = UDim2.new(1, -88, 0.5, -13)
        eyeBtn.BackgroundColor3 = Color3.fromRGB(30, 20, 70)
        eyeBtn.TextColor3 = Color3.fromRGB(180, 140, 255)
        eyeBtn.Text = " Глаза"eyeBtn.TextSize = 10
        eyeBtn.Font = Enum.Font.GothamBold
        eyeBtn.BorderSizePixel = 0
        eyeBtn.Parent = row
        Instance.new("UICorner", eyeBtn).CornerRadius = UDim.new(1, 0)

        local watching = false
        eyeBtn.MouseButton1Click:Connect(function()
            watching = not watching
            if watching then
                local ok = startPlayerCam(player)
                if ok then
                    eyeBtn.BackgroundColor3 = Color3.fromRGB(10, 60, 20)
                    eyeBtn.TextColor3 = GREEN
                    eyeBtn.Text = " LIVE"stripe.BackgroundColor3 = GREEN
                    playerCamStatusLbl.Text = " смотрю: " .. player.Name
                else
                    watching = false
                    playerCamStatusLbl.Text = " нет персонажа"end
            else
                stopDroneCam()
                eyeBtn.BackgroundColor3 = Color3.fromRGB(30, 20, 70)
                eyeBtn.TextColor3 = Color3.fromRGB(180, 140, 255)
                eyeBtn.Text = " Глаза"stripe.BackgroundColor3 = LTPUR
                playerCamStatusLbl.Text = " камера выкл"end
        end)
    end
end

local refreshPlayerRow = Instance.new("Frame")
refreshPlayerRow.Size = UDim2.new(1, 0, 0, 38)
refreshPlayerRow.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
refreshPlayerRow.BorderSizePixel = 0
refreshPlayerRow.Parent = _sec_playercam
Instance.new("UICorner", refreshPlayerRow).CornerRadius = UDim.new(0, 8)

local refreshPlayerBtn = Instance.new("TextButton")
refreshPlayerBtn.Size = UDim2.new(1, -20, 0, 26)
refreshPlayerBtn.Position = UDim2.new(0, 10, 0, 6)
refreshPlayerBtn.BackgroundColor3 = PURPLE
refreshPlayerBtn.TextColor3 = WHITE
refreshPlayerBtn.Text = "Обновить список игроков"
refreshPlayerBtn.TextSize = 12
refreshPlayerBtn.Font = Enum.Font.GothamBold
refreshPlayerBtn.Parent = refreshPlayerRow
Instance.new("UICorner", refreshPlayerBtn).CornerRadius = UDim.new(0, 6)

refreshPlayerBtn.MouseButton1Click:Connect(buildPlayerList)

local stopPlayerRow = Instance.new("Frame")
stopPlayerRow.Size = UDim2.new(1, 0, 0, 38)
stopPlayerRow.BackgroundColor3 = Color3.fromRGB(14, 6, 24)
stopPlayerRow.BorderSizePixel = 0
stopPlayerRow.Parent = _sec_playercam
Instance.new("UICorner", stopPlayerRow).CornerRadius = UDim.new(0, 8)

local stopPlayerBtn = Instance.new("TextButton")
stopPlayerBtn.Size = UDim2.new(1, -20, 0, 26)
stopPlayerBtn.Position = UDim2.new(0, 10, 0, 6)
stopPlayerBtn.BackgroundColor3 = Color3.fromRGB(80, 10, 10)
stopPlayerBtn.TextColor3 = WHITE
stopPlayerBtn.Text = "Выключить камеру"
stopPlayerBtn.TextSize = 12
stopPlayerBtn.Font = Enum.Font.GothamBold
stopPlayerBtn.Parent = stopPlayerRow
Instance.new("UICorner", stopPlayerBtn).CornerRadius = UDim.new(0, 6)

stopPlayerBtn.MouseButton1Click:Connect(function()
    stopDroneCam()
    playerCamStatusLbl.Text = " камера выкл"buildPlayerList()
end)

buildPlayerList()

task.spawn(function()
    while ScreenGui.Parent do
        task.wait(1)
        buildCamList()
        buildPlayerList()
    end
end)

local OBJ_COLOR = Color3.fromRGB(0, 255, 100) 

local MAP_RADIUS   = 2000   
local MAP_SIZE_HUD = 130    
local RADAR_ON     = false

local function getObjColor(name)
    if droneNameColor[name] then return droneNameColor[name] end
    return Color3.fromRGB(200, 200, 200)
end

local function isEnemyDrone(model)
    if not droneNameColor[model.Name] then return false end
    local seat = model:FindFirstChildOfClass("VehicleSeat")
               or model:FindFirstChildOfClass("Seat")
    if not seat or not seat.Occupant then return false end
    local char  = seat.Occupant.Parent
    if not char then return false end
    local pilot = Players:GetPlayerFromCharacter(char)
    if not pilot then return false end
    if pilot.Team == lp.Team then return false end
    return true
end

local fullMapFrame = Instance.new("Frame")
fullMapFrame.Size = UDim2.new(1, 0, 0, 340)
fullMapFrame.BackgroundColor3 = Color3.fromRGB(10, 5, 20)
fullMapFrame.BorderSizePixel = 0
fullMapFrame.ClipsDescendants = true
fullMapFrame.Parent = mapPanel
Instance.new("UICorner", fullMapFrame).CornerRadius = UDim.new(0, 10)
local fmStroke = Instance.new("UIStroke", fullMapFrame)
fmStroke.Color = Color3.fromRGB(80, 30, 130)
fmStroke.Thickness = 1.5

local gridLines = 5
for i = 1, gridLines - 1 do
    local frac = i / gridLines
    local hLine = Instance.new("Frame", fullMapFrame)
    hLine.Size = UDim2.new(1, 0, 0, 1)
    hLine.Position = UDim2.new(0, 0, frac, 0)
    hLine.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
    hLine.BorderSizePixel = 0
    local vLine = Instance.new("Frame", fullMapFrame)
    vLine.Size = UDim2.new(0, 1, 1, 0)
    vLine.Position = UDim2.new(frac, 0, 0, 0)
    vLine.BackgroundColor3 = Color3.fromRGB(40, 20, 70)
    vLine.BorderSizePixel = 0
end

local function makeBaseLabel(parent, text, xFrac, yFrac, col)
    local f = Instance.new("Frame", parent)
    f.Size = UDim2.new(0, 70, 0, 20)
    f.Position = UDim2.new(xFrac, -35, yFrac, -10)
    f.BackgroundColor3 = col
    f.BackgroundTransparency = 0.5
    f.BorderSizePixel = 0
    Instance.new("UICorner", f).CornerRadius = UDim.new(0, 4)
    local lbl = Instance.new("TextLabel", f)
    lbl.Size = UDim2.new(1, 0, 1, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.TextSize = 10
    lbl.Font = Enum.Font.GothamBold
end
makeBaseLabel(fullMapFrame, " Attackers", 0.964, 0.052, Color3.fromRGB(200, 50, 50))
makeBaseLabel(fullMapFrame, " Defenders", 0.036, 0.948, Color3.fromRGB(50, 100, 200))

local fullDotContainer = Instance.new("Frame", fullMapFrame)
fullDotContainer.Size = UDim2.new(1, 0, 1, 0)
fullDotContainer.BackgroundTransparency = 1
fullDotContainer.BorderSizePixel = 0

local fullPlayerDot = Instance.new("Frame", fullMapFrame)
fullPlayerDot.Size = UDim2.new(0, 10, 0, 10)
fullPlayerDot.AnchorPoint = Vector2.new(0.5, 0.5)
fullPlayerDot.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
fullPlayerDot.BorderSizePixel = 0
fullPlayerDot.ZIndex = 5
Instance.new("UICorner", fullPlayerDot).CornerRadius = UDim.new(1, 0)

local hLine2 = Instance.new("Frame", fullPlayerDot)
hLine2.Size = UDim2.new(2, 0, 0, 1)
hLine2.Position = UDim2.new(-0.5, 0, 0.5, 0)
hLine2.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
hLine2.BorderSizePixel = 0
local vLine2 = Instance.new("Frame", fullPlayerDot)
vLine2.Size = UDim2.new(0, 1, 2, 0)
vLine2.Position = UDim2.new(0.5, 0, -0.5, 0)
vLine2.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
vLine2.BorderSizePixel = 0

local fmInfo = Instance.new("TextLabel", mapPanel)
fmInfo.Size = UDim2.new(1, 0, 0, 20)
fmInfo.BackgroundTransparency = 1
fmInfo.Text = " FPV   Шахед   Ракета   Мина   Самолёт   Игрок"
fmInfo.TextColor3 = Color3.fromRGB(140, 90, 200)
fmInfo.TextSize = 9
fmInfo.Font = Enum.Font.Gotham
fmInfo.Parent = mapPanel

local radarGui = Instance.new("Frame")
radarGui.Name = "VantaRadar"
radarGui.Size = UDim2.new(0, MAP_SIZE_HUD, 0, MAP_SIZE_HUD)
radarGui.Position = UDim2.new(1, -(MAP_SIZE_HUD + 12), 0, 12)
radarGui.BackgroundColor3 = Color3.fromRGB(5, 3, 12)
radarGui.BackgroundTransparency = 0.25
radarGui.BorderSizePixel = 0
radarGui.ClipsDescendants = true
radarGui.Visible = false
radarGui.ZIndex = 20
radarGui.Parent = ScreenGui
Instance.new("UICorner", radarGui).CornerRadius = UDim.new(1, 0)
local radarStroke = Instance.new("UIStroke", radarGui)
radarStroke.Color = Color3.fromRGB(100, 255, 100)
radarStroke.Thickness = 2

for _, r in ipairs({0.33, 0.66}) do
    local ring = Instance.new("Frame", radarGui)
    ring.Size = UDim2.new(r, 0, r, 0)
    ring.Position = UDim2.new((1-r)/2, 0, (1-r)/2, 0)
    ring.BackgroundTransparency = 1
    ring.BorderSizePixel = 0
    local rs = Instance.new("UIStroke", ring)
    rs.Color = Color3.fromRGB(40, 80, 40)
    rs.Thickness = 1
    Instance.new("UICorner", ring).CornerRadius = UDim.new(1, 0)
end

local rc1 = Instance.new("Frame", radarGui)
rc1.Size = UDim2.new(0.8, 0, 0, 1)
rc1.Position = UDim2.new(0.1, 0, 0.5, 0)
rc1.BackgroundColor3 = Color3.fromRGB(40, 80, 40)
rc1.BorderSizePixel = 0
local rc2 = Instance.new("Frame", radarGui)
rc2.Size = UDim2.new(0, 1, 0.8, 0)
rc2.Position = UDim2.new(0.5, 0, 0.1, 0)
rc2.BackgroundColor3 = Color3.fromRGB(40, 80, 40)
rc2.BorderSizePixel = 0

local radarPlayerDot = Instance.new("Frame", radarGui)
radarPlayerDot.Size = UDim2.new(0, 5, 0, 5)
radarPlayerDot.AnchorPoint = Vector2.new(0.5, 0.5)
radarPlayerDot.Position = UDim2.new(0.5, 0, 0.5, 0)
radarPlayerDot.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
radarPlayerDot.BorderSizePixel = 0
radarPlayerDot.ZIndex = 25
Instance.new("UICorner", radarPlayerDot).CornerRadius = UDim.new(1, 0)

local radarDotContainer = Instance.new("Frame", radarGui)
radarDotContainer.Size = UDim2.new(1, 0, 1, 0)
radarDotContainer.BackgroundTransparency = 1
radarDotContainer.BorderSizePixel = 0
radarDotContainer.ZIndex = 22

makeToggle(mapPanel, "Радар в углу (круглый)", function(state)
    RADAR_ON = state
    radarGui.Visible = state
end)

local dotPoolFull  = {}
local dotPoolRadar = {}

local function getDot(pool, parent, col, sz)
    for _, d in ipairs(pool) do
        if not d.used then
            d.used = true
            d.frame.BackgroundColor3 = col
            d.frame.Size = UDim2.new(0, sz, 0, sz)
            d.frame.Visible = true
            return d
        end
    end
    local f = Instance.new("Frame", parent)
    f.Size = UDim2.new(0, sz, 0, sz)
    f.AnchorPoint = Vector2.new(0.5, 0.5)
    f.BackgroundColor3 = col
    f.BorderSizePixel = 0
    f.ZIndex = parent.ZIndex + 1
    Instance.new("UICorner", f).CornerRadius = UDim.new(1, 0)
    local d = {frame = f, used = true}
    table.insert(pool, d)
    return d
end

local function releaseDots(pool)
    for _, d in ipairs(pool) do
        d.used = false
        d.frame.Visible = false
    end
end

local function getWorldBounds()
    local minX, minZ, maxX, maxZ = math.huge, math.huge, -math.huge, -math.huge
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("BasePart") or obj:IsA("Model") then
            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                minX = math.min(minX, part.Position.X)
                minZ = math.min(minZ, part.Position.Z)
                maxX = math.max(maxX, part.Position.X)
                maxZ = math.max(maxZ, part.Position.Z)
            end
        end
    end
    if minX == math.huge then return -1000, -1000, 1000, 1000 end
    local pad = 200
    return minX - pad, minZ - pad, maxX + pad, maxZ + pad
end

-- Fixed world bounds based on real base coordinates:
-- Attackers: X=1931.9, Z=-2939.8 | Defenders: X=-3261.4, Z=533
-- padded by 200 on each side
local worldMinX, worldMinZ, worldMaxX, worldMaxZ = -3461.4, -3139.8, 2131.9, 733.0

local mapUpdateTimer = 0

RunService.Heartbeat:Connect(function(dt)
    mapUpdateTimer = mapUpdateTimer + dt
    if mapUpdateTimer < 0.15 then return end
    mapUpdateTimer = 0

    
    local myPos = nil
    local myChar = lp.Character
    if myChar then
        for _, obj in pairs(workspace:GetChildren()) do
            if obj:IsA("Model") and droneNameColor[obj.Name] then
                local seat = obj:FindFirstChildOfClass("VehicleSeat")
                           or obj:FindFirstChildOfClass("Seat")
                if seat and seat.Occupant and seat.Occupant.Parent == myChar then
                    local part = obj:FindFirstChild("Mainpart")
                               or obj:FindFirstChildWhichIsA("BasePart")
                    if part then myPos = part.Position end
                    break
                end
            end
        end
    end
    
    if not myPos then myPos = getMyPos() end
    if not myPos then return end

    
    local updateFull  = fullMapFrame.AbsoluteSize.X > 0
    local updateRadar = RADAR_ON

    if not updateFull and not updateRadar then return end

    releaseDots(dotPoolFull)
    releaseDots(dotPoolRadar)

    
    local rangeX = math.max(worldMaxX - worldMinX, 1)
    local rangeZ = math.max(worldMaxZ - worldMinZ, 1)
    local px = (myPos.X - worldMinX) / rangeX
    local pz = (myPos.Z - worldMinZ) / rangeZ
    fullPlayerDot.Position = UDim2.new(px, 0, pz, 0)

    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Model") and isEnemyDrone(obj) then
            local col = droneNameColor[obj.Name]
            local part = obj:FindFirstChild("Mainpart") or obj:FindFirstChildWhichIsA("BasePart")
            if part then
                local pos = part.Position

                
                if updateFull then
                    local fx = (pos.X - worldMinX) / rangeX
                    local fz = (pos.Z - worldMinZ) / rangeZ
                    local d = getDot(dotPoolFull, fullDotContainer, col, 6)
                    d.frame.Position = UDim2.new(fx, 0, fz, 0)
                end

                
                if updateRadar then
                    local delta = pos - myPos
                    local dist  = Vector2.new(delta.X, delta.Z).Magnitude
                    if dist <= MAP_RADIUS then
                        local normX =  delta.X / MAP_RADIUS * 0.45 + 0.5
                        local normZ =  delta.Z / MAP_RADIUS * 0.45 + 0.5
                        local d = getDot(dotPoolRadar, radarDotContainer, col, 4)
                        d.frame.Position = UDim2.new(normX, 0, normZ, 0)
                    end
                end
            end
        end
    end
end)

RunService.RenderStepped:Connect(function(dt)
    if not flying then return end
    local char = lp.Character if not char then return end
    local hrp  = char:FindFirstChild("HumanoidRootPart") if not hrp then return end
    local hum  = char:FindFirstChild("Humanoid")
    
    if hum then hum.PlatformStand = true end
    local cam  = workspace.CurrentCamera
    local move = Vector3.new(0,0,0)
    if held.f then move = move + cam.CFrame.LookVector end
    if held.b then move = move - cam.CFrame.LookVector end
    if held.l then move = move - cam.CFrame.RightVector end
    if held.r then move = move + cam.CFrame.RightVector end
    if held.u then move = move + Vector3.new(0,1,0) end
    if held.d then move = move - Vector3.new(0,1,0) end
    if move.Magnitude > 0 then
        hrp.CFrame = hrp.CFrame + move.Unit * flySpeed * dt
    end
    
    hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
end)

RunService.RenderStepped:Connect(function()
    if not noclip then return end
    local char=lp.Character if not char then return end
    for _,part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end)

end) 

MinBtn.MouseButton1Click:Connect(function()
    Main.Visible=false Bubble.Visible=true
end)
Bubble.MouseButton1Click:Connect(function()
    Bubble.Visible=false Main.Visible=true
end)
CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

if not _debugOk then
    local _esg = Instance.new("ScreenGui")
    _esg.Name = "VantaError"_esg.IgnoreGuiInset = true
    _esg.Parent = gethui()
    local _ef = Instance.new("Frame")
    _ef.Size = UDim2.new(0.9, 0, 0, 120)
    _ef.Position = UDim2.new(0.05, 0, 0.3, 0)
    _ef.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
    _ef.Parent = _esg
    Instance.new("UICorner", _ef).CornerRadius = UDim.new(0, 8)
    local _el = Instance.new("TextLabel")
    _el.Size = UDim2.new(1, -16, 1, -8)
    _el.Position = UDim2.new(0, 8, 0, 4)
    _el.BackgroundTransparency = 1
    _el.Text = "ERROR: " .. tostring(_debugErr)
    _el.TextColor3 = Color3.fromRGB(255, 200, 200)
    _el.TextSize = 11
    _el.Font = Enum.Font.Gotham
    _el.TextWrapped = true
    _el.TextXAlignment = Enum.TextXAlignment.Left
    _el.TextYAlignment = Enum.TextYAlignment.Top
    _el.Parent = _ef
end
