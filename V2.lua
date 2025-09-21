local insert = table.insert
local find = table.find
local random = math.random
local huge = math.huge
local Vector2New = Vector2.new
local Vector3New = Vector3.new
local CFrameNew = CFrame.new

local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()

local wcamera = workspace.CurrentCamera
local localplayer = game.Players.LocalPlayer
local runs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local tweens = game:GetService("TweenService")
local scriptloading = true

if not _G.allvars then _G.allvars = {} end
if _G.allvars.camthirdp == nil then _G.allvars.camthirdp = false end
if _G.thirdpshow == nil then _G.thirdpshow = false end

local invisanim = Instance.new("Animation")
invisanim.AnimationId = "rbxassetid://15609995579"
local invisnum = 2.35
local invistrack
local desynctable = {}
local desyncvis = nil
local desyncbool = false
local invisbool = false
local desyncPos = false
local desynXp = 0
local desynYp = 0
local desynZp = 0
local desyncOr = false
local desynXo = 0
local desynYo = 0
local desynZo = 0
local visdesync = false
local desynccolor = Color3.fromRGB(255,0,0)
local desynctrans = 0.5
local undergroundusers = {}

require(game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.TransparencyController).Update = function(a1, a2) 
    local v14_3_ = workspace
    local v14_2_ = v14_3_.CurrentCamera

    local setto = 0
    if not _G.allvars or _G.allvars.camthirdp == false or _G.thirdpshow == false then
        setto = 1
    end

    if v14_2_ then
        v14_3_ = a1.enabled
        if v14_3_ then
            local v14_6_ = v14_2_.Focus
            local v14_5_ = v14_6_.p
            local v14_7_ = v14_2_.CoordinateFrame
            v14_6_ = v14_7_.p
            local v14_4_ = v14_5_ - v14_6_
            v14_3_ = v14_4_.magnitude
            v14_5_ = 2
            v14_4_ = 0
            v14_5_ = 0.500000
            if v14_4_ < v14_5_ then
                v14_4_ = 0
            end
            v14_5_ = a1.lastTransparency
            if v14_5_ then
                v14_5_ = 1
                if v14_4_ < v14_5_ then
                    v14_5_ = a1.lastTransparency
                    v14_6_ = 0.950000
                    if v14_5_ < v14_6_ then
                        v14_6_ = a1.lastTransparency
                        v14_5_ = v14_4_ - v14_6_
                        v14_7_ = 2.800000
                        v14_6_ = v14_7_ * a2
                        local v14_9_ = -v14_6_
                        local v14_8_ = v14_5_
                        local v14_10_ = v14_6_
                        local clamp = math.clamp
                        v14_7_ = clamp(v14_8_, v14_9_, v14_10_)
                        v14_5_ = v14_7_
                        v14_7_ = a1.lastTransparency
                        v14_4_ = v14_7_ + v14_5_
                    else
                        v14_5_ = true
                        a1.transparencyDirty = v14_5_
                    end
                else
                    v14_5_ = true
                    a1.transparencyDirty = v14_5_
                end
            else
                v14_5_ = true
                a1.transparencyDirty = v14_5_
            end
            v14_7_ = v14_4_ 
            local v14_8_ = 2
            v14_7_ = 0
            v14_8_ = 1
            v14_4_ = v14_5_
            v14_5_ = a1.transparencyDirty
            if not v14_5_ then
                v14_5_ = a1.lastTransparency
                if v14_5_ ~= v14_4_ then
                    v14_5_ = pairs
                    v14_6_ = a1.cachedParts
                    v14_5_, v14_6_, v14_7_ = v14_5_(v14_6_)
                    for v14_8_, v14_9_ in v14_5_, v14_6_, v14_7_ do
                        local v14_10_ = false 
                        if v14_10_ then
                            local v14_11_ = nil 
                            v14_10_ = v14_11_ and v14_11_.AvatarGestures
                            if v14_10_ then
                                v14_10_ = {}
                                local Hat = Enum.AccessoryType.Hat
                                local v14_12_ = true
                                v14_10_[Hat] = v14_12_
                                local Hair = Enum.AccessoryType.Hair
                                v14_12_ = true
                                v14_10_[Hair] = v14_12_
                                local Face = Enum.AccessoryType.Face
                                v14_12_ = true
                                v14_10_[Face] = v14_12_
                                local Eyebrow = Enum.AccessoryType.Eyebrow
                                v14_12_ = true
                                v14_10_[Eyebrow] = v14_12_
                                local Eyelash = Enum.AccessoryType.Eyelash
                                v14_12_ = true
                                v14_10_[Eyelash] = v14_12_
                                v14_11_ = v14_8_.Parent
                                local v14_13_ = "Accessory"
                                v14_11_ = v14_11_:IsA(v14_13_)
                                if v14_11_ then
                                    v14_13_ = v14_8_.Parent
                                    v14_12_ = v14_13_.AccessoryType
                                    v14_11_ = v14_10_[v14_12_]
                                    if not v14_11_ then
                                        v14_11_ = v14_8_.Name
                                        if v14_11_ == "Head" then
                                            v14_8_.LocalTransparencyModifier = setto
                                        else
                                            v14_11_ = 0
                                            v14_8_.LocalTransparencyModifier = setto
                                            v14_8_.LocalTransparencyModifier = setto
                                        end
                                    end
                                end
                                v14_11_ = v14_8_.Name
                                if v14_11_ == "Head" then
                                    v14_8_.LocalTransparencyModifier = setto
                                else
                                    v14_11_ = 0
                                    v14_8_.LocalTransparencyModifier = setto
                                    v14_8_.LocalTransparencyModifier = setto
                                end
                            else
                                v14_8_.LocalTransparencyModifier = setto
                            end
                        else
                            v14_8_.LocalTransparencyModifier = setto
                        end
                    end
                    v14_5_ = false
                    a1.transparencyDirty = v14_5_
                    a1.lastTransparency = setto
                end
            end
            v14_5_ = pairs
            v14_6_ = a1.cachedParts
            v14_5_, v14_6_, v14_7_ = v14_5_(v14_6_)
            for v14_8_, v14_9_ in v14_5_, v14_6_, v14_7_ do
                local v14_10_ = false 
                if v14_10_ then
                    local v14_11_ = nil 
                    v14_10_ = v14_11_ and v14_11_.AvatarGestures
                    if v14_10_ then
                        v14_10_ = {}
                        local Hat = Enum.AccessoryType.Hat
                        local v14_12_ = true
                        v14_10_[Hat] = v14_12_
                        local Hair = Enum.AccessoryType.Hair
                        v14_12_ = true
                        v14_10_[Hair] = v14_12_
                        local Face = Enum.AccessoryType.Face
                        v14_12_ = true
                        v14_10_[Face] = v14_12_
                        local Eyebrow = Enum.AccessoryType.Eyebrow
                        v14_12_ = true
                        v14_10_[Eyebrow] = v14_12_
                        local Eyelash = Enum.AccessoryType.Eyelash
                        v14_12_ = true
                        v14_10_[Eyelash] = v14_12_
                        v14_11_ = v14_8_.Parent
                        local v14_13_ = "Accessory"
                        v14_11_ = v14_11_:IsA(v14_13_)
                        if v14_11_ then
                            v14_13_ = v14_8_.Parent
                            v14_12_ = v14_13_.AccessoryType
                            v14_11_ = v14_10_[v14_12_]
                            if not v14_11_ then
                                v14_11_ = v14_8_.Name
                                if v14_11_ == "Head" then
                                    v14_8_.LocalTransparencyModifier = setto
                                else
                                    v14_11_ = 0
                                    v14_8_.LocalTransparencyModifier = setto
                                    v14_8_.LocalTransparencyModifier = setto
                                end
                            end
                        end
                        v14_11_ = v14_8_.Name
                        if v14_11_ == "Head" then
                            v14_8_.LocalTransparencyModifier = setto
                        else
                            v14_11_ = 0
                            v14_8_.LocalTransparencyModifier = setto
                            v14_8_.LocalTransparencyModifier = setto
                        end
                    else
                        v14_8_.LocalTransparencyModifier = setto
                    end
                else
                    v14_8_.LocalTransparencyModifier = setto
                end
            end
            v14_5_ = false
            a1.transparencyDirty = v14_5_
            a1.lastTransparency = setto
        end
    end
end

local oldLoadConfig = MacLib.LoadConfig
MacLib.LoadConfig = function(self, config)
    local result = oldLoadConfig(self, config)
    
    for flagName, value in pairs(self.Flags) do
        local element = self.Elements[flagName]
        if element and element.Type == "Slider" then
            if element.UpdateVisuals then
                element:UpdateVisuals(value)
            end
            
            if element.SetValue then
                element:SetValue(value)
            end
            
            if element.Slider and element.Fill then
                local percent = (value - element.Min) / (element.Max - element.Min)
                element.Fill.Size = UDim2.new(percent, 0, 1, 0)
                element.Slider.Position = UDim2.new(percent, 0, 0.5, 0)
            end
            
            if element.ValueLabel then
                local displayValue = value
                if element.Precise then
                    displayValue = string.format("%.2f", value)
                elseif element.Suffix then
                    displayValue = value .. element.Suffix
                end
                element.ValueLabel.Text = tostring(displayValue)
            end
        end
    end
    
    return result
end

local ESPFunctions = {}
function ESPFunctions.Create(Class, Properties)
    local Object = Instance.new(Class)
    for Property, Value in pairs(Properties) do
        Object[Property] = Value
    end
    return Object
end

local allvars = {noswaybool = false, instaequip = false, customRapidFireEnabled = true, multitaps = 1}
allvars.espdead = false
allvars.worldnomines = false
allvars.camthirdp = false
local thirdpshow = false

if not allvars.espchamstransparency then allvars.espchamstransparency = 0.5 end
if not allvars.espthermalbool then allvars.espthermalbool = false end
ESP = ESP or {}
ESP.Highlights = ESP.Highlights or {}

local aimbool = false
local aimdebug1 = false
local aimselftrack = false
local aimbots = false
local aimvischeck = true
local aimdistcheck = false
local aimbang = true
local aimtrigger = false
local aimtarget = nil
local aimtargetpart = nil
local aimdynamicfov = false
local aimpart = "Head"
local aimtype = "Instant Hit"
local aimfov = 150
local aimsnapline = Drawing.new("Line") 
local snaplinebool = false
local aimdistance = 1000 
local aimchance = 100
local aimfakewait = 0
local aimfovcircle = Drawing.new("Circle")
local aimtargetname = Drawing.new("Text")
local aimtargetshots = Drawing.new("Text")
local aimogfunc = nil
local aimmodfunc = nil
local function getSafeBulletModule()
    local success, result = pcall(function()
        return game.ReplicatedStorage.Modules.FPS.Bullet
    end)
    if success and result then
        return result
    end
    return nil
end
local aimignoreparts = {}
local globalammo = nil
local selftrack_data = {}
local selftrack_update = 0
local hitmarkbool = false
local hitmarkcolor = Color3.fromRGB(255,255,255)
local hitmarkfade = 2
local hitsoundbool = false
local hitsoundhead = "Ding"
local hitsoundbody = "Blackout"
local hitsoundlib = {
    ["TF2"]       = "rbxassetid://8255306220",
    ["Gamesense"] = "rbxassetid://4817809188",
    ["Rust"]      = "rbxassetid://1255040462",
    ["Neverlose"] = "rbxassetid://8726881116",
    ["Bubble"]    = "rbxassetid://198598793",
    ["Quake"]     = "rbxassetid://1455817260",
    ["Among-Us"]  = "rbxassetid://7227567562",
    ["Ding"]      = "rbxassetid://2868331684",
    ["Minecraft"] = "rbxassetid://6361963422",
    ["Blackout"]  = "rbxassetid://3748776946",
    ["Osu!"]      = "rbxassetid://7151989073",
}
local hitsoundlibUI = {}
for i,v in hitsoundlib do
    hitsoundlibUI[v] = i
end

local function playHitSound(isHead)
    if not hitsoundbool then return end
    
    local soundId = isHead and hitsoundlib[hitsoundhead] or hitsoundlib[hitsoundbody]
    if not soundId then return end
    
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Volume = 1
    sound.Parent = workspace
    sound:Play()
    
    sound.Ended:Connect(function()
        sound:Destroy()
    end)
    
    task.delay(3, function()
        if sound and sound.Parent then
            sound:Destroy()
        end
    end)
end

localplayer.CharacterAdded:Connect(function(lchar)
    if localplayer.PlayerGui:WaitForChild("MainGui") then
        localplayer.PlayerGui.MainGui.ChildAdded:Connect(function(Sound)
            if Sound:IsA("Sound") and hitsoundbool then
                if Sound.SoundId == "rbxassetid://4585351098" or Sound.SoundId == "rbxassetid://4585382589" then 
                    Sound.SoundId = hitsoundlib[hitsoundhead]
                elseif Sound.SoundId == "rbxassetid://4585382046" or Sound.SoundId == "rbxassetid://4585364605" then 
                    Sound.SoundId = hitsoundlib[hitsoundbody]
                end
            end
        end)
    end
end)

if localplayer.PlayerGui:FindFirstChild("MainGui") then
    localplayer.PlayerGui.MainGui.ChildAdded:Connect(function(Sound)
        if Sound:IsA("Sound") and hitsoundbool then
            if Sound.SoundId == "rbxassetid://4585351098" or Sound.SoundId == "rbxassetid://4585382589" then 
                Sound.SoundId = hitsoundlib[hitsoundhead]
            elseif Sound.SoundId == "rbxassetid://4585382046" or Sound.SoundId == "rbxassetid://4585364605" then 
                Sound.SoundId = hitsoundlib[hitsoundbody]
            end
        end
    end)
end

local aimFRIENDLIST = {}
local friendlistmode = "Blacklist"
local friendlistbots = false
local allvars = {noswaybool = false, instaequip = false, customRapidFireEnabled = true, multitaps = 1}
pcall(function()
    local fpsmod = require(game.ReplicatedStorage.Modules.FPS)
    if fpsmod and type(fpsmod.updateClient) == "function" then
        local originalUpdateClient = fpsmod.updateClient
        fpsmod.updateClient = function(a1,a2,a3)
            local r1,r2,r3 = originalUpdateClient(a1,a2,a3)
            if allvars.noswaybool and a1 and a1.springs then
                local sp = a1.springs
                local zero = Vector3.new()
                sp.sway.Position = zero
                sp.walkCycle.Position = zero
                sp.sprintCycle.Position = zero
                sp.strafeTilt.Position = zero
                sp.jumpTilt.Position = zero
                sp.sway.Speed = 0
                sp.walkCycle.Speed = 0
                sp.sprintCycle.Speed = 0
                sp.strafeTilt.Speed = 0
                sp.jumpTilt.Speed = 0
            elseif a1 and a1.springs then
                local sp = a1.springs
                sp.sway.Speed = 4
                sp.walkCycle.Speed = 4
                sp.sprintCycle.Speed = 4
                sp.strafeTilt.Speed = 4
                sp.jumpTilt.Speed = 4
            end
            return r1,r2,r3
        end
    end
end)
aimfovcircle.Visible = false
aimfovcircle.Radius = aimfov
aimfovcircle.Thickness = 0.5
aimfovcircle.Filled = false
aimfovcircle.Transparency = 0.2
aimfovcircle.Color = Color3.fromRGB(255, 255, 255)
aimfovcircle.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2)
aimtargetname.Text = "None"
aimtargetname.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2 + aimfov + 20) 
aimtargetname.Size = 24
aimtargetname.Color = Color3.fromRGB(255,255,255)
aimtargetname.Visible = false
aimtargetname.Center = true
aimtargetname.Outline = true
aimtargetname.OutlineColor = Color3.new(0, 0, 0)
aimtargetname.Font = 3 
aimtargetshots.Text = " "
aimtargetshots.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2 + aimfov + 30) 
aimtargetshots.Size = 20
aimtargetshots.Color = Color3.fromRGB(255,255,255)
aimtargetshots.Visible = false
aimtargetshots.Center = true
aimtargetshots.Outline = true
aimtargetshots.OutlineColor = Color3.new(0, 0, 0)
aimsnapline.From = Vector2.new(20, 20)
aimsnapline.To = Vector2.new(50, 50)
aimsnapline.Color = Color3.fromRGB(255,255,255)
aimsnapline.Thickness = 1
aimsnapline.Visible = false
for i,v in ipairs(workspace:GetDescendants()) do
    if v:GetAttribute("PassThrough") then
        table.insert(aimignoreparts, v)
    end
end
local function isvisible(char, object)
    if not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") then
        return false
    end
    if aimvischeck == false then
        return true
    end

    local origin = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
    local pos = object.Position
local allvars = {noswaybool = false, instaequip = false, customRapidFireEnabled = true, multitaps = 1}
allvars.espdead = false
allvars.worldnomines = false

local allvars = {noswaybool = false, instaequip = false, customRapidFireEnabled = true, multitaps = 1}local allvars = {noswaybool = false, instaequip = false, customRapidFireEnabled = true, multitaps = 1}
allvars.espdead = false
allvars.worldnomines = false

local allvars = {noswaybool = false, instaequip = false, customRapidFireEnabled = true, multitaps = 1}    local dir = pos - origin
    local dist = dir.Magnitude + 5
    dir = dir.Unit

    local params = RaycastParams.new()
    params.IgnoreWater = true
    params.CollisionGroup = "WeaponRay"
    local ignoreList = {
        localplayer.Character,
        wcamera,
        workspace.CurrentCamera
    }
    if aimignoreparts and #aimignoreparts > 0 then
        for _, part in ipairs(aimignoreparts) do
            table.insert(ignoreList, part)
        end
    end
    
    params.FilterDescendantsInstances = ignoreList

    local targetChar = char
    if not char:IsA("Model") then
        targetChar = char.Character
    end

    local ray = workspace:Raycast(origin, dir * dist, params)
    if ray and ray.Instance:IsDescendantOf(targetChar) then
        return true
    elseif ray and ray.Instance.Name ~= "Terrain" and not ray.Instance:GetAttribute("NoPen") then
        local armorpen4 = 10
        if globalammo then
            armorpen4 = globalammo:GetAttribute("ArmorPen")
        end

        local FunctionLibraryExtension = require(game.ReplicatedStorage.Modules.FunctionLibraryExtension)
        local armorpen1, newpos2 = FunctionLibraryExtension.Penetration(FunctionLibraryExtension, ray.Instance, ray.Position, dir, armorpen4)
        if armorpen1 and newpos2 then
            local neworigin = ray.Position + dir * 0.01
            local newray = workspace:Raycast(neworigin, dir * (dist - (neworigin - origin).Magnitude), params)
            if newray and newray.Instance:IsDescendantOf(targetChar) then
                return true
            end
        end
    end

    return false
end
local function predictpos(tpart, bulletspeed, bulletdrop)
    local velocity = tpart.Velocity
    local distance = (wcamera.CFrame.Position - tpart.CFrame.Position).Magnitude
    local tth = (distance / bulletspeed)
    local predict1 = tpart.CFrame.Position + (velocity * tth)
    local delta = (predict1 - tpart.CFrame.Position).Magnitude
    local finalspeed = bulletspeed - 0.013 * bulletspeed ^ 2 * tth ^ 2
    tth += (delta / finalspeed)
    local gravityFactor = Vector3.new(0, -bulletdrop * tth ^ 2, 0)
    local predictres1 = tpart.CFrame.Position + (velocity * tth) + gravityFactor
    return predictres1
end
local function isvisible(char, object)
    if not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") then
        return false
    end
    if aimvischeck == false then
        return true
    end

    local origin = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
    local pos = object.Position
    local dir = pos - origin
    local dist = dir.Magnitude + 5
    dir = dir.Unit

    local params = RaycastParams.new()
    params.IgnoreWater = true
    params.CollisionGroup = "WeaponRay"
    params.FilterDescendantsInstances = {
        localplayer.Character:GetChildren(),
        wcamera:GetChildren(),
        aimignoreparts
    }

    local targetChar = char
    if not char:IsA("Model") then
        targetChar = char.Character
    end

    local ray = workspace:Raycast(origin, dir * dist, params)
    if ray and ray.Instance:IsDescendantOf(targetChar) then
        return true
    elseif ray and ray.Instance.Name ~= "Terrain" and not ray.Instance:GetAttribute("NoPen") then
        local armorpen4 = 10
        if globalammo then
            armorpen4 = globalammo:GetAttribute("ArmorPen")
        end

        local FunctionLibraryExtension = require(game.ReplicatedStorage.Modules.FunctionLibraryExtension)
        local armorpen1, newpos2 = FunctionLibraryExtension.Penetration(FunctionLibraryExtension, ray.Instance, ray.Position, dir, armorpen4)
        if armorpen1 and newpos2 then
            local neworigin = ray.Position + dir * 0.01
            local newray = workspace:Raycast(neworigin, dir * (dist - (neworigin - origin).Magnitude), params)
            if newray and newray.Instance:IsDescendantOf(targetChar) then
                return true
            end
        end
    end

    return false
end
local LinePool = {
    Lines = {},
    MaxSize = 20, 
    ActiveLines = {},
    CleanupInterval = 2, 
    LastCleanup = tick()
}

function LinePool:GetLine()
    local currentTime = tick()
    if currentTime - self.LastCleanup > self.CleanupInterval then
        self:Cleanup()
        self.LastCleanup = currentTime
    end
    
    for i, line in ipairs(self.Lines) do
        if not line.InUse then
            line.InUse = true
            line.LastUsed = tick()
            table.insert(self.ActiveLines, line)
            return line.Object
        end
    end
    
    if #self.Lines < self.MaxSize then
        local newLine = Drawing.new("Line")
        newLine.Visible = false
        newLine.Thickness = 1
        newLine.Transparency = 1
        
        local lineData = {
            Object = newLine,
            InUse = true,
            LastUsed = tick()
        }
        
        table.insert(self.Lines, lineData)
        table.insert(self.ActiveLines, lineData)
        return newLine
    end
    
    local oldestLine = nil
    local oldestTime = math.huge
    
    for _, lineData in ipairs(self.Lines) do
        if lineData.LastUsed < oldestTime then
            oldestLine = lineData
            oldestTime = lineData.LastUsed
        end
    end
    
    if oldestLine then
        oldestLine.InUse = true
        oldestLine.LastUsed = tick()
        oldestLine.Object.Visible = false
        return oldestLine.Object
    end
    
    local tempLine = Drawing.new("Line")
    tempLine.Visible = false
    tempLine.Thickness = 1
    tempLine.Transparency = 1
    return tempLine
end

function LinePool:ReleaseLine(line)
    for i, lineData in ipairs(self.Lines) do
        if lineData.Object == line then
            lineData.InUse = false
            line.Visible = false
            
            for j, activeLine in ipairs(self.ActiveLines) do
                if activeLine == lineData then
                    table.remove(self.ActiveLines, j)
                    break
                end
            end
            
            break
        end
    end
end

function LinePool:ReleaseAll()
    for i, lineData in ipairs(self.Lines) do
        lineData.InUse = false
        lineData.Object.Visible = false
    end
    self.ActiveLines = {}
end

function LinePool:Cleanup()
    local currentTime = tick()
    local inactiveTime = 10 
    
    for i = #self.Lines, 1, -1 do
        local lineData = self.Lines[i]
        if not lineData.InUse and (currentTime - lineData.LastUsed > inactiveTime) then
            pcall(function()
                lineData.Object:Remove()
            end)
            table.remove(self.Lines, i)
        end
    end
end

runs.Heartbeat:Connect(function()
    if #LinePool.Lines > LinePool.MaxSize * 0.8 then
        LinePool:Cleanup()
    end
end)

local function runhitmark(v140)
    if hitmarkbool then
        local hitpart = Instance.new("Part", workspace)
        hitpart.Transparency = 1
        hitpart.CanCollide = false
        hitpart.CanQuery = false
        hitpart.Size = Vector3.new(0.01,0.01,0.01)
        hitpart.Anchored = true
        hitpart.Position = v140

        local hit = Instance.new("BillboardGui")
        hit.Name = "hit"
        hit.AlwaysOnTop = true
        hit.Parent = hitpart

        local hit_img = Instance.new("ImageLabel")
        hit_img.Name = "hit_img"
        hit_img.Image = "http://www.roblox.com/asset/?id=13298929624"
        hit_img.BackgroundTransparency = 1
        hit_img.Size = UDim2.new(0, 50, 0, 50)
        hit_img.Visible = true
        hit_img.ImageColor3 = hitmarkcolor
        hit_img.Rotation = 45
        hit_img.AnchorPoint = Vector2.new(0.5, 0.5)
        hit_img.Parent = hit

        task.spawn(function()
            local tweninfo = TweenInfo.new(hitmarkfade, Enum.EasingStyle.Sine)
            local tweninfo2 = TweenInfo.new(hitmarkfade, Enum.EasingStyle.Linear)
            tweens:Create(hit_img, tweninfo, {ImageTransparency = 1}):Play()
            tweens:Create(hit_img, tweninfo2, {Rotation = 180}):Play()
            task.wait(hitmarkfade)
            if hitpart and hitpart.Parent then
                hitpart:Destroy()
            end
        end)
    end
end

pcall(function()
    aimogfunc = require(game.ReplicatedStorage.Modules.FPS.Bullet).CreateBullet
    
    local function choosetarget()
        local cent = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2)
        local cdist = math.huge
        local ctar = nil
        local cpart = nil
        local restar = nil
        local predist = math.huge

        local ammodistance = 999999999
        if aimdistcheck and globalammo then
            pcall(function()
                ammodistance = globalammo:GetAttribute("MuzzleVelocity") * 1.5
            end)
        end

        local bparts = {
            "Head",
            "HeadTopHitBox",
            "FaceHitBox",
            "UpperTorso",
            "LowerTorso",
            "LeftUpperArm",
            "RightUpperArm",
            "LeftLowerArm",
            "RightLowerArm",
            "LeftHand",
            "RightHand",
            "LeftUpperLeg",
            "RightUpperLeg",
            "LeftLowerLeg",
            "RightLowerLeg",
            "LeftFoot",
            "RightFoot"
        }

        local function chooseTpart(charact)
            if aimpart == "Head" then
                return charact:FindFirstChild("Head")
            elseif aimpart == "HeadTop" then
                return charact:FindFirstChild("HeadTopHitBox")
            elseif aimpart == "Face" then
                return charact:FindFirstChild("FaceHitBox")
            elseif aimpart == "Torso" then
                return charact:FindFirstChild("UpperTorso")
            elseif aimpart == "Scripted" then
                local head = charact:FindFirstChild("Head")
                local upperTorso = charact:FindFirstChild("UpperTorso")
                if not isvisible(charact, head) then
                    return upperTorso
                else
                    return head
                end
            elseif aimpart == "Random" then
                return charact:FindFirstChild(bparts[math.random(1, #bparts)])
            else
                return charact:FindFirstChild("Head") 
            end
        end

        if aimbots then 
            for _, botfold in pairs(workspace.AiZones:GetChildren()) do
                for _, bot in pairs(botfold:GetChildren()) do
                    if bot:IsA("Model") and bot:FindFirstChild("Humanoid") and bot.Humanoid.Health > 0 then
                        if friendlistbots then
                            if friendlistmode == "Blacklist" then 
                                if table.find(aimFRIENDLIST, bot.Name) ~= nil then
                                    continue
                                end
                            elseif friendlistmode == "Whitelist" then 
                                if table.find(aimFRIENDLIST, bot.Name) == nil then
                                    continue
                                end
                            end
                        end

                        local potroot = chooseTpart(bot)
                        if potroot and localplayer.Character then
                            local spoint = wcamera:WorldToScreenPoint(potroot.Position)
                            local optpoint = Vector2.new(spoint.X, spoint.Y)
                            local dist = (optpoint - cent).Magnitude
                            
                            local betweendist = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude * 0.3336
                            local betweendistSTUDS = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude
                            if dist <= aimfov and dist < cdist and betweendist < aimdistance and betweendistSTUDS < ammodistance and spoint.Z > 0 then
                                local canvis = isvisible(bot, potroot)
                                if canvis then
                                    cdist = dist
                                    ctar = bot
                                    cpart = potroot
                                end
                                if dist < predist then
                                    predist = dist
                                    restar = bot
                                end
                            end
                        end
                    end
                end
            end
        end

        for _, pottar in pairs(game.Players:GetPlayers()) do 
            if pottar ~= localplayer and pottar.Character and pottar.Character:FindFirstChild("Humanoid") and pottar.Character.Humanoid.Health > 0 and localplayer.Character and localplayer.Character.PrimaryPart ~= nil then
                if friendlistmode == "Blacklist" then 
                    if table.find(aimFRIENDLIST, pottar.Name) ~= nil then
                        continue
                    end
                elseif friendlistmode == "Whitelist" then 
                    if table.find(aimFRIENDLIST, pottar.Name) == nil then
                        continue
                    end
                end

                local potroot = chooseTpart(pottar.Character)
                if potroot then
                    local spoint = wcamera:WorldToScreenPoint(potroot.Position)
                    local optpoint = Vector2.new(spoint.X, spoint.Y)
                    local dist = (optpoint - cent).Magnitude
                    
                    local betweendist = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude * 0.3336
                    local betweendistSTUDS = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude
                    if dist <= aimfov and dist < cdist and betweendist < aimdistance and betweendistSTUDS < ammodistance and spoint.Z > 0 then
                        local canvis = isvisible(pottar.Character, potroot)
                        if canvis then
                            cdist = dist
                            ctar = pottar
                            cpart = potroot
                        end
                        if dist < predist then
                            predist = dist
                            restar = pottar
                        end
                    end
                end
            end
        end

        if ctar == nil then
            aimtarget = nil
            aimtargetpart = nil
            if restar then
                aimpretarget = restar
            else
                aimpretarget = nil
            end
        else
            aimtarget = ctar
            aimtargetpart = cpart
            aimpretarget = restar
        end
    end
    
    aimmodfunc = function(prikol, p49, p50, p_u_51, aimpart, _, p52, p53, p54)
        local v_u_6 = game.ReplicatedStorage.Remotes.VisualProjectile
        local v_u_108 = 1
        local v_u_106 = 0
        local v_u_7 = game.ReplicatedStorage.Remotes.FireProjectile
        choosetarget()
        
        local target = aimtarget
        local target_part = aimtargetpart
        local v_u_4 = require(game.ReplicatedStorage.Modules:WaitForChild("FunctionLibraryExtension"))
        local v_u_15 = localplayer
        local v_u_115 = v_u_4:GetEstimatedCameraPosition(v_u_15)
        local v_u_103
        local v_u_114
        local v_u_16 = game.ReplicatedStorage.Players:FindFirstChild(v_u_15.Name)
        local v_u_64 = v_u_16.Status.GameplayVariables:GetAttribute("EquipId")
        local v_u_13 = game.ReplicatedStorage:WaitForChild("VFX")
        local v_u_2 = require(game.ReplicatedStorage.Modules:WaitForChild("VFX"))
        local v3 = require(game.ReplicatedStorage.Modules:WaitForChild("UniversalTables"))
        local v_u_5 = game.ReplicatedStorage.Remotes.ProjectileInflict
        local v_u_10 = game:GetService("ReplicatedStorage")
        local v_u_12 = v_u_10:WaitForChild("RangedWeapons")
        local v_u_17 = game.ReplicatedStorage.Temp
        local v_u_56 = v_u_15.Character
        local v135 = 500000
        local v_u_18 = v_u_10.AmmoTypes:FindFirstChild(p52)
        local v_u_115 = v_u_4:GetEstimatedCameraPosition(v_u_15)
        local v65 = v_u_10.AmmoTypes:FindFirstChild(p52)
        globalammo = v65
        local v_u_74 = v65:GetAttribute("Pellets")
        local v60 = p50.ItemRoot
        local v61 = p49.ItemProperties
        local v62 = v_u_12:FindFirstChild(p49.Name)
        local v63 = v61:FindFirstChild("SpecialProperties")
        local v_u_66 = v63 and v63:GetAttribute("TracerColor") or v62:GetAttribute("ProjectileColor")
        itemprop = require(v_u_16.Inventory:FindFirstChild(p49.Name).SettingsModule)
        local bulletspeed = v65:GetAttribute("MuzzleVelocity")
        local armorpen4 = v65:GetAttribute("ArmorPen")
        local tracerendpos = Vector3.zero
        local v79 = {
            ["x"] = {
                ["Value"] = 0
            },
            ["y"] = {
                ["Value"] = 0
            }
        }

        if v_u_56:FindFirstChild(p49.Name) then
            local v83 = 0.001 
            local v82 = 0.001
            local v81 = v61.Tool:GetAttribute("MuzzleDevice") or "Default"
            v_u_108 = math.random(-100000, 100000)
            
            if v61.Tool:GetAttribute("MuzzleDevice") or "Default" == "Suppressor" then
                if tick() - p53 < 0.8 then
                    v_u_4:PlaySoundV2(v60.Sounds.FireSoundSupressed, v60.Sounds.FireSoundSupressed.TimeLength, v_u_17)
                else
                    v_u_4:PlaySoundV2(v60.Sounds.FireSoundSupressed, v60.Sounds.FireSoundSupressed.TimeLength, v_u_17)
                end
            elseif tick() - p53 < 0.8 then
                v_u_4:PlaySoundV2(v60.Sounds.FireSound, v60.Sounds.FireSound.TimeLength, v_u_17)
            else
                v_u_4:PlaySoundV2(v60.Sounds.FireSound, v60.Sounds.FireSound.TimeLength, v_u_17)
            end
            local v_u_59
            if p_u_51.Item.Attachments:FindFirstChild("Front") then
                v_u_59 = p_u_51.Item.Attachments.Front:GetChildren()[1].Barrel
                local _ = p50.Attachments.Front:GetChildren()[1].Barrel
            else
                v_u_59 = p_u_51.Item.Barrel
                local _ = p50.Barrel
            end

            if target ~= nil and aimtargetpart ~= nil then
                target_part = aimtargetpart
                if aimtype == "Prediction" then
                    local buldrop = v65:GetAttribute("ProjectileDrop")
                    local bulsp = v65:GetAttribute("MuzzleVelocity")
                    local predictedPos = predictpos(target_part, bulsp, buldrop)
                    v_u_103 = CFrame.new(v_u_115, predictedPos).LookVector
                else
                    v_u_103 = CFrame.new(v_u_115, target_part.Position).LookVector
                end
                v_u_114 = v_u_103
            else
                target_part = aimpart
                v_u_103 = CFrame.new(v_u_115, v_u_15:GetMouse().Hit.Position).LookVector
                v_u_114 = v_u_103
            end

            function v185()
                if not v_u_56 or not p_u_51 then
                    return
                end
                
                local v_u_110 = RaycastParams.new()
                v_u_110.FilterType = Enum.RaycastFilterType.Exclude
                local v_u_111 = { v_u_56, p_u_51, v_u_18, aimignoreparts}
                v_u_110.FilterDescendantsInstances = v_u_111
                v_u_110.CollisionGroup = "WeaponRay"
                v_u_110.IgnoreWater = true

                v_u_106 += 1

                local usethisvec = v_u_114
                local hittick = tick()

                if v_u_106 == 1 then
                    task.spawn(function()
                        for i=1, multitaps or 1 do
                            pcall(function()
                                if target ~= nil and target_part ~= nil and isvisible(target:IsA("Model") and target or target.Character, target_part) then
                                    if aimtype == "Instant Hit" then
                                        if not v_u_7:InvokeServer(usethisvec, v_u_108, tick()-15) then 
                                            pcall(function()
                                                game.ReplicatedStorage.Modules.FPS.Binds.AdjustBullets:Fire(v_u_64, 1)
                                            end)
                                        end
                                    else
                                        if not v_u_7:InvokeServer(usethisvec, v_u_108, tick()) then 
                                            pcall(function()
                                                game.ReplicatedStorage.Modules.FPS.Binds.AdjustBullets:Fire(v_u_64, 1)
                                            end)
                                        end
                                    end
                                else
                                    if not v_u_7:InvokeServer(usethisvec, v_u_108, tick()) then 
                                        pcall(function()
                                            game.ReplicatedStorage.Modules.FPS.Binds.AdjustBullets:Fire(v_u_64, 1)
                                        end)
                                    end
                                end
                            end)
                        end
                    end)
                elseif 1 < v_u_106 then
                    for i=1, multitaps or 1 do
                        v_u_6:FireServer(usethisvec, v_u_108)
                    end
                end

                local v_u_131 = nil
                local v_u_132 = 0
                local v_u_133 = 0
                pcall(function()
                    v_u_131 = RunService.Heartbeat:Connect(function() end)
                    v_u_131:Disconnect()
                end)

                if (aimtype == "Prediction" or aimfakewait) and target ~= nil then
                    local tpart 
                    if target:IsA("Model") then
                        tpart = target.HumanoidRootPart
                    else
                        tpart = target.Character.HumanoidRootPart
                    end
                    local velocity = tpart.Velocity
                    local distance = (wcamera.CFrame.Position - tpart.CFrame.Position).Magnitude
                    local tth = (distance / bulletspeed)
                    local predictionFactor = math.min(1, distance / 500) 
                    local waitTime = tth * predictionFactor
                    task.wait(waitTime + 0.01)
                end
                local penetrated = false
                function v184(p134)
                    if not v_u_115 or not v_u_114 or not v_u_110 then
                        return
                    end
                    
                    v_u_132 = v_u_132 + p134
                    if true then
                        v_u_133 = v_u_133 + v_u_132
                        local v136, v137, v138, v139, v140
                        pcall(function()
                            v136 = workspace:Raycast(v_u_115, v_u_114 * v135, v_u_110)
                            if v136 then
                                v137 = v136.Instance
                                v140 = v136.Position
                                v138 = v136.Normal
                                v139 = v136.Material
                            else
                                v140 = v_u_115 + v_u_114 * v135
                            end
                        end)
                        if not v137 or not v140 then
                            if v_u_131 and typeof(v_u_131) == "RBXScriptConnection" then
                                v_u_131:Disconnect()
                            end
                            return
                        end
                        tracerendpos = v140
                        local v171 = v_u_4:FindDeepAncestor(v137, "Model")
                        if v171:FindFirstChild("Humanoid") then 
                            local ran = math.random(1, 100)
                            local ranbool = ran <= aimchance
                            if ranbool then
                                local v175 = v137.CFrame:ToObjectSpace(CFrame.new(v140))
                                if target_part and penetrated == false then
                                    if target ~= nil and isvisible(target:IsA("Model") and target or target.Character, target_part) then
                                        v_u_5:FireServer(target_part, v175, v_u_108, hittick)
                                    else
                                        v_u_5:FireServer(v137, v175, v_u_108, hittick)
                                    end
                                else
                                    v_u_5:FireServer(v137, v175, v_u_108, hittick)
                                end
                            else
                                local v175 = v137.CFrame:ToObjectSpace(CFrame.new(v140))
                                v_u_5:FireServer(aimpart, v175, v_u_108, hittick)
                            end
                            v_u_2.Impact(v137, v140, v138, v139, v_u_114, "Ranged", true)
                            task.spawn(function()
                                runhitmark(v140)
                            end)
                            local isHead = v137.Name:find("Head") ~= nil
                            playHitSound(isHead)
                        elseif v137.Name == "Terrain" then 
                            local v175 = v137.CFrame:ToObjectSpace(CFrame.new(v140))
                            v_u_5:FireServer(v137, v175, v_u_108, hittick)

                            v_u_2.Impact(v137, v140, v138, v139, v_u_114, "Ranged", true)

                            task.spawn(function()
                                runhitmark(v140)
                            end)
                            playHitSound(false)
                        else 
                            v_u_2.Impact(v137, v140, v138, v139, v_u_114, "Ranged", true)

                            task.spawn(function()
                                runhitmark(v140)
                            end)
                            playHitSound(false)

                            local arg1, arg2, arg3 = v_u_4.Penetration(v_u_4, v137, v140, v_u_114, armorpen4)
                            if arg1 == nil or arg2 == nil then
                                local v175 = v137.CFrame:ToObjectSpace(CFrame.new(v140))
                                v_u_5:FireServer(v137, v175, v_u_108, hittick)
                                v_u_131:Disconnect()
                                return
                            end

                            armorpen4 = arg1
                            if armorpen4 > 0 then
                                v_u_115 = arg2
                                v_u_2.Impact(unpack(arg3))
                                penetrated = true
                                return
                            end

                            v_u_131:Disconnect()
                            return
                        end
                    end

                    v_u_131:Disconnect()
                    return
                end
                v_u_131 = game:GetService("RunService").RenderStepped:Connect(v184)
                return
            end
            if v_u_74 == nil then
                task.spawn(v185)
            else
                for _ = 1, v_u_74 do
                    task.spawn(v185)
                end
            end

            return v83, v82, v81, v79
        end
    end
end)

local Window = MacLib:Window({
    Title = "Oblivion (Paid) ",
    Subtitle = "by Oblivion",
    Size = UDim2.fromOffset(868, 650),
    DragStyle = 1,
    ShowUserInfo = true,
    Keybind = Enum.KeyCode.RightControl,
    AcrylicBlur = false,
})
local globalSettings = {
    UIBlurToggle = Window:GlobalSetting({
        Name = "UI Transparency",
        Default = false,
        Callback = function(bool)
            Window:SetAcrylicBlurState(bool)
        end,
    }),
    ShowUserInfo = Window:GlobalSetting({
        Name = "User Info",
        Default = true,
        Callback = function(bool)

            if typeof(Window.SetUserInfoState) == "function" then
                Window:SetUserInfoState(bool)
            elseif typeof(Window.ToggleUserInfo) == "function" then
                Window:ToggleUserInfo(bool)
            else
                pcall(function()
                    if Window.Settings then
                        Window.Settings.ShowUserInfo = bool
                    end
                    
                    if Window.Frame and Window.Frame:FindFirstChild("Bottom") then
                        local bottom = Window.Frame.Bottom
                        
                        for _, child in pairs(bottom:GetChildren()) do
                            if child:IsA("ImageLabel") or child:IsA("ImageButton") then
                                child.Visible = bool
                            elseif child:IsA("TextLabel") or child:IsA("TextBox") or child:IsA("TextButton") then
                                child.Visible = bool
                            elseif child:IsA("Frame") and (child.Name:find("User") or child.Name:find("Avatar") or child.Name:find("Profile")) then
                                child.Visible = bool
                            end
                        end
                        
                        local bottomLeft = bottom:FindFirstChild("BottomLeft") or bottom:FindFirstChild("Left")
                        if bottomLeft then
                            bottomLeft.Visible = bool
                        end
                        
                        if not bool then
                            local allHidden = true
                            for _, child in pairs(bottom:GetChildren()) do
                                if child.Visible then
                                    allHidden = false
                                    break
                                end
                            end
                            
                            if allHidden then
                                bottom.Visible = false
                            end
                        else
                            bottom.Visible = true
                        end
                    end
                    
                    local function processDescendants(parent)
                        for _, child in pairs(parent:GetChildren()) do
                            if (child.Name:find("User") or child.Name:find("Avatar") or 
                                child.Name:find("Profile") or child.Name:find("Name")) and 
                           (child:IsA("Frame") or child:IsA("ImageLabel") or 
                            child:IsA("TextLabel") or child:IsA("ViewportFrame")) then
                                child.Visible = bool
                            end
                            
                            processDescendants(child)
                        end
                    end
                    
                    if Window.Frame then
                        processDescendants(Window.Frame)
                    end
                end)
            end
        end,
    }),
    Watermark = Window:GlobalSetting({
        Name = "Watermark",
        Default = true,
        Callback = function(bool)
            if _G.CustomWatermark then
                _G.CustomWatermark.Enabled = bool
            end
        end,
    })
}

local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Lighting = game:GetService("Lighting")
local HttpService = game:GetService("HttpService") 
local UserInputService = game:GetService("UserInputService")
local SilentAim = {
    Enabled = false,
    TeamCheck = false,
    AimPart = "Head",
    Sensitivity = 0,
    CircleSides = 64,
    CircleColor = Color3.fromRGB(255, 255, 255),
    CircleTransparency = 0,
    CircleRadius = 220,
    CircleFilled = false,
    CircleVisible = false,
    CircleThickness = 0,
    FOVCircle = nil,
    LockedPlayerGUI = nil,
    UsernameLabel = nil,
    TrackerEnabled = false,
    TrackerColor = Color3.fromRGB(255, 255, 255),
    TrackerWidth = 1,
    TrackerTransparency = 1,
    Tracker2D = nil,
    Holding = false,
    CurrentTarget = nil,
    IsAiming = false,
    PredictionEnabled = true,
    PredictionSpeed = 500
}

local ESP = {
    Enabled = false,
    TeamCheck = true,
    MaxDistance = 500,
    FontSize = 11,
    FadeOut = {
        OnDistance = true,
        OnDeath = false,
        OnLeave = false,
    },
    Drawing = {
        Chams = {
            Enabled = false,
            Thermal = false,
            XRay = false,  
            FillRGB = Color3.fromRGB(119, 120, 255),
            Fill_Transparency = 100,
            OutlineRGB = Color3.fromRGB(119, 120, 255),
            Outline_Transparency = 100,
            VisibleCheck = true,
        },
        Names = {
            Enabled = false,
            RGB = Color3.fromRGB(255, 255, 255),
        },
        Flags = {
            Enabled = false,
        },
        GazeLine = {
            Enabled = false,
            RGB = Color3.fromRGB(255, 0, 0),
            Thickness = 0.5,
            Length = 10,
        },
        Distances = {
            Enabled = false, 
            Position = "Text",
            RGB = Color3.fromRGB(255, 255, 255),
        },
        Weapons = {
            Enabled = false, 
            WeaponTextRGB = Color3.fromRGB(119, 120, 255),
            Outlined = false,
            Gradient = false,
            GradientRGB1 = Color3.fromRGB(255, 255, 255), 
            GradientRGB2 = Color3.fromRGB(119, 120, 255),
        },
        Healthbar = {
            Enabled = false,  
            HealthText = true, 
            Lerp = false,
            HealthTextRGB = Color3.fromRGB(119, 120, 255),
            Width = 2.5,
            Gradient = true, 
            GradientRGB1 = Color3.fromRGB(200, 0, 0), 
            GradientRGB2 = Color3.fromRGB(150, 150, 0), 
            GradientRGB3 = Color3.fromRGB(0, 255, 0), 
        },
        Boxes = {
            Animate = false,
            RotationSpeed = 300,
            Gradient = true, 
            GradientRGB1 = Color3.fromRGB(19, 0, 255), 
            GradientRGB2 = Color3.fromRGB(255, 0, 0), 
            GradientFill = true, 
            GradientFillRGB1 = Color3.fromRGB(19, 0, 255), 
            GradientFillRGB2 = Color3.fromRGB(255, 0, 0), 
            Filled = {
                Enabled = false,
                Transparency = 0.75,
                RGB = Color3.fromRGB(0, 0, 0),
            },
            Full = {
                Enabled = false,
                RGB = Color3.fromRGB(255, 255, 255),
            },
            Corner = {
                Enabled = false,
                RGB = Color3.fromRGB(255, 255, 255),
            },
        },
        Skeleton = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255),
            Thickness = 1
        }
    },
    Connections = {
        RunService = RunService,
    },
    Fonts = {},
    ShowAIBots = false,
    GazeLines = {},
    Skeletons = {}
}

local WorldESP = {
    Enabled = false,
    TextColor = Color3.fromRGB(255, 80, 10),
    TextSize = 14,
    TextTransparency = 0.3,
    Outline = true,
    OutlineColor = Color3.fromRGB(0, 0, 0),
    ESPs = {},
    KeyESPEnabled = false,
    ContainerESPEnabled = false,
    DroppedItemsESPEnabled = false,
    MaxDistance = 500,
    UpdateConnection = nil,
    CachedESPs = {},
    LastCleanup = tick(),
    TrackedItems = {},
    DrawingPool = {}, 
    RenderThreadActive = false,
    AlwaysShowContainers = false,
    CacheColor = Color3.fromRGB(255, 80, 10),
    JesusEnabled = false 
}

local waterplatforms = Instance.new("Folder", workspace) 
waterplatforms.Name = "OblivionWaterPlatforms"

local function updateJesusPlatforms()
    if not WorldESP.JesusEnabled or not localplayer or not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") then
        if waterplatforms then
            for _, v in ipairs(waterplatforms:GetChildren()) do
                v:Destroy()
            end
        end
        return
    end

    local hrp = localplayer.Character.HumanoidRootPart
    local origin = hrp.Position
    local direction = Vector3.new(0, -5, 0) 

    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {localplayer.Character, waterplatforms}
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.IgnoreWater = false 

    local hitPart = workspace:Raycast(origin, direction, params)

    for _, v in ipairs(waterplatforms:GetChildren()) do
        v:Destroy() 
    end

    if hitPart and hitPart.Material == Enum.Material.Water then
        local platformPos = Vector3.new(origin.X, hitPart.Position.Y + 0.1, origin.Z) 

        local clone = Instance.new("Part")
        clone.Parent = waterplatforms
        clone.Position = platformPos
        clone.Anchored = true
        clone.CanCollide = true
        clone.Size = Vector3.new(8, 0.2, 8)
        clone.Transparency = 1 
        clone.Name = "JesusPlatform"
    end
end

RunService.Heartbeat:Connect(updateJesusPlatforms)

local function getDrawingFromPool()
    if #WorldESP.DrawingPool > 0 then
        return table.remove(WorldESP.DrawingPool)
    end
    
    local newDrawing = Drawing.new("Text")
    newDrawing.Size = WorldESP.TextSize
    newDrawing.Center = true
    newDrawing.Outline = WorldESP.Outline
    newDrawing.OutlineColor = WorldESP.OutlineColor
    newDrawing.Color = WorldESP.TextColor
    newDrawing.Transparency = WorldESP.TextTransparency
    newDrawing.Visible = false
    
    return newDrawing
end


local function returnDrawingToPool(drawingObj)
    if not drawingObj then return end
    
    drawingObj.Visible = false
    drawingObj.Text = ""
    
    table.insert(WorldESP.DrawingPool, drawingObj)
end


local function getItemCategory(item)
    local name = item.Name:lower()
    if name:find("key") then
        return "KEY"
    elseif name:find("bandage") then
        return "MED"
    elseif name:find("bean") or name:find("food") or name:find("meat") or name:find("mre") then
        return "FOOD"
    elseif name:find("fabric") or name:find("cloth") then
        return "MATERIALS"
    elseif name:find("ammo") or name:find("magazine") then
        return "AMMO"
    elseif name:find("gun") or name:find("rifle") or name:find("pistol") or name:find("smg") or name:find("weapon") then
        return "WEAPON"
    elseif name:find("backpack") or name:find("bag") then
        return "BACKPACK"
    elseif name:find("tool") or name:find("hammer") or name:find("axe") then
        return "TOOLS"
    else
        return "ITEM"
    end
end

local function trackItem(instance, displayName, isKey, isContainer, isDroppedItem)
    if WorldESP.TrackedItems[instance] then return end
    
    local cleanName = displayName
    
    cleanName = cleanName:gsub("Box:%s*", "")
    cleanName = cleanName:gsub("Crate:%s*", "")
    cleanName = cleanName:gsub("Chest:%s*", "")
    cleanName = cleanName:gsub("Container:%s*", "")
    cleanName = cleanName:gsub("Item:%s*", "")
    cleanName = cleanName:gsub("KEY:%s*", "")
    
    local trackPart
    
    pcall(function()
        
        if isContainer then
            
            if instance:IsA("MeshPart") then
                trackPart = instance
            else
                
                local meshPart = instance:FindFirstChildWhichIsA("MeshPart", true)
                if meshPart then
                    trackPart = meshPart
                else
                    
                    trackPart = instance.PrimaryPart or 
                               instance:FindFirstChildWhichIsA("BasePart", true) or 
                               (instance:IsA("BasePart") and instance) or nil
                end
            end
        else
            
            trackPart = instance.PrimaryPart or 
                      (instance:IsA("Model") and instance:FindFirstChildWhichIsA("BasePart", true)) or 
                      (instance:IsA("BasePart") and instance) or nil
        end
    end)
    
    if not trackPart then return end
    
    
    local isHiddenCache = false
    if displayName:find("HiddenCache") or displayName:find(":") then
        isHiddenCache = true
    end
    
    WorldESP.TrackedItems[instance] = {
        DisplayName = cleanName,
        IsKey = isKey or false,
        IsContainer = isContainer or false,
        IsDroppedItem = isDroppedItem or false,
        IsHiddenCache = isHiddenCache,
        TrackPart = trackPart,
        Drawing = nil,
        CachedPosition = nil,
        LastUpdateTime = tick()
    }
end


local function scanForKeys()
    local folder = Workspace:FindFirstChild("DroppedItems")
    if not folder then return end
    
    for _, item in pairs(folder:GetChildren()) do
        pcall(function()
            if item:IsA("Model") and item.PrimaryPart and item.Name:lower():find("key") and not WorldESP.TrackedItems[item] then
                trackItem(item, "KEY: " .. item.Name, true, false, true)
            end
        end)
    end
end


local function scanForContainers()
    local containers = Workspace:FindFirstChild("Containers")
    if not containers then return end
    
    local foundCount = 0
    local maxToProcess = 150 
    local meshPartCount = 0 
    local nameMatchCount = 0 
    local militaryCrateCount = 0 
    
    
    for _, item in pairs(containers:GetDescendants()) do
        if foundCount >= maxToProcess then break end
        
        pcall(function()
            
            if item:IsA("MeshPart") then
                
                if not WorldESP.TrackedItems[item] and not WorldESP.TrackedItems[item.Parent] then
                    if item:FindFirstChild("SurfaceAppearance") then
                        local container = item.Parent
                        
                        
                        local cleanName = "????"
                        if container and container.Name then
                            cleanName = container.Name:gsub("?", "")
                            cleanName = cleanName:gsub("[^%a%d%s_%-]", "") 
                            
                            
                            if cleanName:match("^%s*$") then
                                
                                if container:FindFirstChild("HiddenCache") then
                                    cleanName = "HiddenCache"
                                elseif container.Name:find("Hidden") then
                                    cleanName = "HiddenCache"
                                else
                                    cleanName = "Container_" .. foundCount
                                end
                            end
                        end
                        
                        trackItem(container, "????: " .. cleanName, false, true, false)
                        foundCount = foundCount + 1
                        meshPartCount = meshPartCount + 1
                    else
                        
                        local container = item.Parent
                        local cleanName = "????"
                        if container and container.Name then
                            cleanName = container.Name:gsub("?", "")
                            cleanName = cleanName:gsub("[^%a%d%s_%-]", "")
                            if cleanName:match("^%s*$") then
                                cleanName = "Container_" .. foundCount
                            end
                        end
                        
                        trackItem(item.Parent, "????: " .. cleanName, false, true, false)
                        foundCount = foundCount + 1
                        meshPartCount = meshPartCount + 1
                    end
                end
            end
            
            if item:IsA("Model") and not WorldESP.TrackedItems[item] then
                local hasMeshPart = false
                for _, child in pairs(item:GetChildren()) do
                    if child:IsA("MeshPart") then
                        hasMeshPart = true
                        break
                    end
                end
                
                if hasMeshPart then
                    local cleanName = item.Name:gsub("?", "")
                    cleanName = cleanName:gsub("[^%a%d%s_%-]", "")
                    if cleanName:match("^%s*$") then
                        if item:FindFirstChild("HiddenCache") then
                            cleanName = "HiddenCache"
                        elseif item.Name:find("Hidden") then
                            cleanName = "HiddenCache"
                        else
                            cleanName = "Container_" .. foundCount
                        end
                    end
                    
                    trackItem(item, "????: " .. cleanName, false, true, false)
                    foundCount = foundCount + 1
                    meshPartCount = meshPartCount + 1
                end
            end
        end)
    end
    
    
    if foundCount < maxToProcess then
        local specificTypes = {"Crate", "Case", "Box", "Container", "Chest", "Storage", "CashRegister", "FilingCabinet", "LightHouse", "ShipWreck", "VillageHideout", "VillageShop", "Hidden", "Cache"}
        
        for _, typeName in ipairs(specificTypes) do
            if foundCount >= maxToProcess then break end
            
            for _, item in pairs(containers:GetDescendants()) do
                if foundCount >= maxToProcess then break end
                
                pcall(function()
                    if (item:IsA("Model") or item:IsA("Part") or item:IsA("MeshPart")) and 
                       item.Name:lower():find(typeName:lower()) and 
                       not WorldESP.TrackedItems[item] and
                       not WorldESP.TrackedItems[item.Parent] then
                        
                        local cleanName = item.Name:gsub("?", "")
                        cleanName = cleanName:gsub("[^%a%d%s_%-]", "")
                        if cleanName:match("^%s*$") then
                            cleanName = typeName .. "_" .. foundCount
                        end
                        
                        trackItem(item, typeName .. ": " .. cleanName, false, true, false)
                        foundCount = foundCount + 1
                        nameMatchCount = nameMatchCount + 1
                    end
                end)
            end
        end
    end
    
    
    for _, item in pairs(Workspace:GetDescendants()) do
        if foundCount >= maxToProcess then break end
        
        pcall(function()
            if (item.Name:lower():find("military") and item.Name:lower():find("crate")) or
               item.Name:lower():find("militarycrate") then
                if not WorldESP.TrackedItems[item] then
                    local cleanName = item.Name:gsub("?", "")
                    cleanName = cleanName:gsub("[^%a%d%s_%-]", "")
                    if cleanName:match("^%s*$") then
                        cleanName = "MilitaryCrate_" .. foundCount
                    end
                    
                    trackItem(item, "??????? ????: " .. cleanName, false, true, false)
                    foundCount = foundCount + 1
                    militaryCrateCount = militaryCrateCount + 1
                end
            end
        end)
    end
    
    
    for _, item in pairs(Workspace:GetDescendants()) do
        if foundCount >= maxToProcess then break end
        
        pcall(function()
            if item.Name:find("HiddenCache") or 
               (item.Name:find("Hidden") and item.Name:find("Cache")) then
                if not WorldESP.TrackedItems[item] then
                    trackItem(item, "??????: HiddenCache", false, true, false)
                    foundCount = foundCount + 1
                end
            end
        end)
    end
end


local function scanForDroppedItems()
    local folder = Workspace:FindFirstChild("DroppedItems")
    if not folder then return end
    
    local foundCount = 0
    local maxToProcess = 30 
    
    for _, item in pairs(folder:GetChildren()) do
        if foundCount >= maxToProcess then break end
        
        pcall(function()
            if item:IsA("Model") and not WorldESP.TrackedItems[item] and not item.Name:lower():find("key") then
                local category = getItemCategory(item)
                local displayName = category .. ": " .. item.Name
                
                trackItem(item, displayName, false, false, true)
                foundCount = foundCount + 1
            end
        end)
    end
end

local CFrameSpeed = {
    Enabled = false,
    Speed = 0.01,
    KeysEnabled = {
        W = true,
        A = true,
        S = true,
        D = true,
        Space = true
    },
    Connection = nil,
    FastWalkEnabled = false,
    FastWalkSpeed = 0.017,
    OriginalSpeed = 0.01,
    DirectWalkSpeedEnabled = false,
    OriginalWalkSpeed = 16,
    FastWalkSpeedValue = 17.7,
    WalkSpeedConnection = nil
}

local ZoomSettings = {
    Enabled = false,
    ZoomTime = 0.07,
    ZoomedAmount = 10,
    Key = Enum.KeyCode.X,
    OldZoom = Workspace.CurrentCamera.FieldOfView,
    IsZooming = false,
    CurrentTween = nil,
    InputConnection = nil,
    EndConnection = nil,
    IsFOVChangerActive = false,  
    IsKeyDown = false,
    LastBindUpdate = 0
}

local tabGroups = {
    MainGroup = Window:TabGroup()
}

local tabs = {
    Aimbot = tabGroups.MainGroup:Tab({ Name = "Aimbot", Image = "rbxassetid://7300477598" }),
    ESP = tabGroups.MainGroup:Tab({ Name = "ESP", Image = "rbxassetid://7300480952" }),
    Player = tabGroups.MainGroup:Tab({ Name = "Player", Image = "rbxassetid://7300535052" }),
    World = tabGroups.MainGroup:Tab({ Name = "World", Image = "rbxassetid://7300489566" }),
    Settings = tabGroups.MainGroup:Tab({ Name = "Settings", Image = "rbxassetid://7300486042" })
}

local sections = {
    AimMain = tabs.Aimbot:Section({ Side = "Left", Name = "Mine Settings" }),
    AimTargeting = tabs.Aimbot:Section({ Side = "Left", Name = "FOV Settings" }),
    HitmarkerVisuals = tabs.Aimbot:Section({ Side = "Left", Name = "Hit Visuals" }),
    AimVisual = tabs.Aimbot:Section({ Side = "Right", Name = "Visual settings" }),
    GunMod = tabs.Aimbot:Section({ Side = "Right", Name = "Gun Mod" }),
    
    ESPMain = tabs.ESP:Section({ Side = "Left" }),  
    ESPBox = tabs.ESP:Section({ Side = "Right" }),
    ESPColor = tabs.ESP:Section({ Side = "Left" }),
    WorldESP = tabs.ESP:Section({ Side = "Right" }),
    
    PlayerMovement = tabs.Player:Section({ Side = "Left" }),
    
    WorldVisual = tabs.World:Section({ Side = "Left" }),
    
    Settings = tabs.Settings:Section({ Side = "Left" })
}

local function safeLength(tbl)
    if type(tbl) ~= "table" then return 0 end
    local count = 0
    for _ in pairs(tbl) do
        count = count + 1
    end
    return count
end

local function safePairs(t)
    if type(t) ~= "table" then
        return function() end, nil, nil
    else
        return pairs(t)
    end
end

local function safeGet(tbl, key)
    if type(tbl) ~= "table" then return nil end
    return tbl[key]
end

local function safeClearTable(tbl)
    if type(tbl) ~= "table" then return end
    for k in pairs(tbl) do
        tbl[k] = nil
    end
end

local function safeAccess(obj, propName)
    if not obj then return nil end
    local success, result = pcall(function() return obj[propName] end)
    return success and result or nil
end

local function safeCallback(callback, ...)
    if not callback then return end
    local success, result = pcall(callback, ...)
    if not success then
        warn("Error in callback: " .. tostring(result))
    end
    return success, result
end

sections.AimMain:Header({
    Text = "Aim Settings"
})

local function choosetarget()
    if not wcamera or not wcamera:IsA("Camera") then
        return
    end

    local cent = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2)
    local cdist = math.huge
    local ctar = nil
    local cpart = nil
    local restar = nil
    local predist = math.huge

    local ammodistance = 999999999
    if aimdistcheck and globalammo then
        pcall(function()
            ammodistance = globalammo:GetAttribute("MuzzleVelocity") * 1.5
        end)
    end

    local bparts = {
        "Head",
        "HeadTopHitBox",
        "FaceHitBox",
        "UpperTorso",
        "LowerTorso",
        "LeftUpperArm",
        "RightUpperArm",
        "LeftLowerArm",
        "RightLowerArm",
        "LeftHand",
        "RightHand",
        "LeftUpperLeg",
        "RightUpperLeg",
        "LeftLowerLeg",
        "RightLowerLeg",
        "LeftFoot",
        "RightFoot"
    }

    local function chooseTpart(charact)
        if aimpart == "Head" then
            return charact:FindFirstChild("Head")
        elseif aimpart == "HeadTop" then
            return charact:FindFirstChild("HeadTopHitBox")
        elseif aimpart == "Face" then
            return charact:FindFirstChild("FaceHitBox")
        elseif aimpart == "Torso" then
            return charact:FindFirstChild("UpperTorso")
        elseif aimpart == "Scripted" then
            local head = charact:FindFirstChild("Head")
            local upperTorso = charact:FindFirstChild("UpperTorso")
            if not isvisible(charact, head) then
                return upperTorso
            else
                return head
            end
        elseif aimpart == "Random" then
            return charact:FindFirstChild(bparts[math.random(1, #bparts)])
        else
            return charact:FindFirstChild("Head") 
        end
    end

    if aimbots then 
        for _, botfold in pairs(workspace.AiZones:GetChildren()) do
            for _, bot in pairs(botfold:GetChildren()) do
                if bot:IsA("Model") and bot:FindFirstChild("Humanoid") and bot.Humanoid.Health > 0 then
                    if friendlistbots then
                        if friendlistmode == "Blacklist" then 
                            if table.find(aimFRIENDLIST, bot.Name) ~= nil then
                                continue
                            end
                        elseif friendlistmode == "Whitelist" then 
                            if table.find(aimFRIENDLIST, bot.Name) == nil then
                                continue
                            end
                        end
                    end

                    local potroot = chooseTpart(bot)
                    if potroot and localplayer.Character then
                        local spoint = wcamera:WorldToScreenPoint(potroot.Position)
                        local optpoint = Vector2.new(spoint.X, spoint.Y)
                        local dist = (optpoint - cent).Magnitude
                        
                        local betweendist = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude * 0.3336
                        local betweendistSTUDS = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude
                        if dist <= aimfov and dist < cdist and betweendist < aimdistance and betweendistSTUDS < ammodistance and spoint.Z > 0 then
                            local canvis = isvisible(bot, potroot)
                            if canvis then
                                cdist = dist
                                ctar = bot
                                cpart = potroot
                            end
                            if dist < predist then
                                predist = dist
                                restar = bot
                            end
                        end
                    end
                end
            end
        end
    end

    for _, pottar in pairs(game.Players:GetPlayers()) do 
        if pottar ~= localplayer and pottar.Character and pottar.Character:FindFirstChild("Humanoid") and pottar.Character.Humanoid.Health > 0 and localplayer.Character and localplayer.Character.PrimaryPart ~= nil then
            if friendlistmode == "Blacklist" then 
                if table.find(aimFRIENDLIST, pottar.Name) ~= nil then
                    continue
                end
            elseif friendlistmode == "Whitelist" then 
                if table.find(aimFRIENDLIST, pottar.Name) == nil then
                    continue
                end
            end

            local potroot = chooseTpart(pottar.Character)
            if potroot then
                local spoint = wcamera:WorldToScreenPoint(potroot.Position)
                local optpoint = Vector2.new(spoint.X, spoint.Y)
                local dist = (optpoint - cent).Magnitude
                local betweendist = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude * 0.3336
                local betweendistSTUDS = (localplayer.Character.PrimaryPart.Position - potroot.Position).Magnitude
                if dist <= aimfov and dist < cdist and betweendist < aimdistance and betweendistSTUDS < ammodistance and spoint.Z > 0 then
                    local canvis = isvisible(pottar.Character, potroot)
                    if canvis then
                        cdist = dist
                        ctar = pottar
                        cpart = potroot
                    end
                    if dist < predist then
                        predist = dist
                        restar = pottar
                    end
                end
            end
        end
    end

    if ctar == nil then
        aimtarget = nil
        aimtargetpart = nil
    else
        aimtarget = ctar
        aimtargetpart = cpart
    end
end

local function updateAimPart(target)
    if target and target.Character then
        local targetPart = target.Character:FindFirstChild(SilentAim.AimPart)
        if targetPart then
            local viewModel = Workspace.CurrentCamera:FindFirstChild("ViewModel")
            if viewModel then
                local itemOffsets = viewModel:FindFirstChild("Item") and viewModel.Item:FindFirstChild("Offsets")
                local aimPart = itemOffsets and itemOffsets:FindFirstChild("AimPart")
                
                if aimPart then
                    
                    local distance = (aimPart.Position - targetPart.Position).Magnitude
                    local timeToHit = distance / SilentAim.PredictionSpeed
                    
                    local predictedPosition = targetPart.Position + (targetPart.Velocity * timeToHit)
                    aimPart.CFrame = CFrame.lookAt(aimPart.Position, predictedPosition)
                end
            end
        end
    end
end

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        SilentAim.Holding = true
    end
    
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        SilentAim.IsAiming = true
        SilentAim.Holding = true
        
        if SilentAim.Enabled and SilentAim.CurrentTarget then
            updateAimPart(SilentAim.CurrentTarget)
        end
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        SilentAim.Holding = false
    end
    
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        SilentAim.IsAiming = false
        SilentAim.Holding = false
    end
end)

sections.AimMain:Toggle({
    Name = "Enable Aim",
    Default = false,
    Callback = function(value)
        aimbool = value
        if value == true then
            if aimogfunc == nil then
                local bulletModule = getSafeBulletModule()
                if bulletModule then
                    aimogfunc = require(bulletModule).CreateBullet
                end
            end

            local bulletModule = getSafeBulletModule()
            if bulletModule and aimogfunc ~= nil then
                pcall(function()
                    require(bulletModule).CreateBullet = aimmodfunc
                end)
            end
        else
            local bulletModule = getSafeBulletModule()
            if bulletModule and aimogfunc ~= nil then
                pcall(function()
                    require(bulletModule).CreateBullet = aimogfunc
                end)
            end
        end
    end
}, "AimToggle")

sections.AimMain:Dropdown({
    Name = "Aim Part",
    Multi = false,
    Required = true,
    Options = {"Head", "HumanoidRootPart"},
    Default = "Head",
    Callback = function(value)
        aimpart = value
    end
}, "AimPart")

sections.AimMain:Toggle({
    Name = "Instant hit",
    Default = false,
    Callback = function(value)
        if not game.ReplicatedStorage:FindFirstChild("AmmoTypes") then return end
        
        local ammoTypes = game.ReplicatedStorage.AmmoTypes
        local realAmmoTypes = game.ReplicatedStorage:FindFirstChild("realAmmoTypes")
        
        if not realAmmoTypes then
            realAmmoTypes = ammoTypes:Clone()
            realAmmoTypes.Name = "realAmmoTypes"
            realAmmoTypes.Parent = game.ReplicatedStorage
        end
        
        if value then
            for _, ammo in pairs(ammoTypes:GetChildren()) do
                if ammo:GetAttribute("ProjectileDrop") then
                    ammo:SetAttribute("ProjectileDrop", 0)
                end
                if ammo:GetAttribute("Drag") then
                    ammo:SetAttribute("Drag", 0)
                end
                if ammo:GetAttribute("MuzzleVelocity") then
                    ammo:SetAttribute("MuzzleVelocity", 999999999)
                end
            end
        else
            for _, ammo in pairs(ammoTypes:GetChildren()) do
                local realAmmo = realAmmoTypes:FindFirstChild(ammo.Name)
                if realAmmo then
                    if ammo:GetAttribute("ProjectileDrop") then
                        ammo:SetAttribute("ProjectileDrop", realAmmo:GetAttribute("ProjectileDrop"))
                    end
                    if ammo:GetAttribute("Drag") then
                        ammo:SetAttribute("Drag", realAmmo:GetAttribute("Drag"))
                    end
                    if ammo:GetAttribute("MuzzleVelocity") then
                        ammo:SetAttribute("MuzzleVelocity", realAmmo:GetAttribute("MuzzleVelocity"))
                    end
                end
            end
        end
    end
}, "SuperBullets")

sections.AimMain:Slider({
    Name = "Hit Chance",
    Default = 100,
    Minimum = 0,
    Maximum = 100,
    Callback = function(value)
        aimchance = value
    end
}, "AimHitChance")

sections.AimMain:Toggle({
    Name = "Fake wait (use with instant hit)",
    Default = false,
    Callback = function(value)
        aimfakewait = value
    end
}, "AimFakeWait")

sections.AimTargeting:Header({
    Text = "Target Settings"
})

sections.AimTargeting:Toggle({
    Name = "Visibility check",
    Default = true,
    Callback = function(value)
        aimvischeck = value
    end
}, "AimVisCheck")

sections.AimTargeting:Toggle({
    Name = "Ping check",
    Default = true,
    Callback = function(value)
        aimselftrack = value
    end
}, "AimPingCheck")

sections.AimTargeting:Toggle({
    Name = "Ammo distance check",
    Default = true,
    Callback = function(value)
        aimdistcheck = value
    end
}, "AimDistCheck")

sections.AimTargeting:Toggle({
    Name = "Target AI",
    Default = true,
    Callback = function(value)
        aimbots = value
    end
}, "AimTargetBots")

sections.AimTargeting:Slider({
    Name = "Aim Distance (Meters)",
    Default = 1000,
    Minimum = 1,
    Maximum = 10000,
    Callback = function(value)
        aimdistance = value
    end
}, "AimDistance")

sections.HitmarkerVisuals:Header({
    Text = "Hitmarker & Hitsound Settings"
})

sections.HitmarkerVisuals:Toggle({
    Name = "Hitsounds",
    Default = false,
    Callback = function(value)
        hitsoundbool = value
    end
}, "HitsoundToggle")

local hitsoundNames = {}
for name, _ in pairs(hitsoundlib) do
    table.insert(hitsoundNames, name)
end

sections.HitmarkerVisuals:Dropdown({
    Name = "Head Sound",
    Multi = false,
    Required = true,
    Options = hitsoundNames,
    Default = "Ding",
    Callback = function(value)
        hitsoundhead = value
        if not scriptloading then
            pcall(function()
                local preview = Instance.new("Sound", workspace)
                preview.SoundId = hitsoundlib[value]
                preview:Play()
                task.delay(2, function()
                    if preview then
                        preview:Destroy()
                    end
                end)
            end)
        end
    end
}, "HitsoundHead")

sections.HitmarkerVisuals:Dropdown({
    Name = "Body Sound",
    Multi = false,
    Required = true,
    Options = hitsoundNames,
    Default = "Blackout",
    Callback = function(value)
        hitsoundbody = value
        if not scriptloading then
            pcall(function()
                local preview = Instance.new("Sound", workspace)
                preview.SoundId = hitsoundlib[value]
                preview:Play()
                task.delay(2, function()
                    if preview then
                        preview:Destroy()
                    end
                end)
            end)
        end
    end
}, "HitsoundBody")

sections.HitmarkerVisuals:Toggle({
    Name = "Hitmarker",
    Default = false,
    Callback = function(value)
        hitmarkbool = value
    end
}, "HitmarkerToggle")

sections.HitmarkerVisuals:Slider({
    Name = "Hitmarker Fade Time",
    Default = 2,
    Minimum = 0,
    Maximum = 10,
    Precise = false,
    Callback = function(value)
        hitmarkfade = value
    end
}, "HitmarkerFade")

sections.HitmarkerVisuals:Colorpicker({
    Name = "Hitmarker Color",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(value)
        hitmarkcolor = value
    end
}, "HitmarkerColor")

sections.AimVisual:Header({
    Text = "Display Settings"
})

sections.AimVisual:Toggle({
    Name = "Show Target Name",
    Default = false,
    Callback = function(value)
        aimtargetname.Visible = value
        
        if value then
            if targetNameVisibilityConnection then
                targetNameVisibilityConnection:Disconnect()
                targetNameVisibilityConnection = nil
            end
            
            targetNameVisibilityConnection = RunService.RenderStepped:Connect(function()
                if aimtarget ~= nil and aimtargetpart ~= nil then
                    local isVisible = true
                    
                    if aimvischeck then  
                        isVisible = false
                        if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                            local origin = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
                            local pos = aimtargetpart.Position
                            local dir = pos - origin
                            local dist = dir.Magnitude + 5
                            dir = dir.Unit
                            
                            local params = RaycastParams.new()
                            params.IgnoreWater = true
                            params.CollisionGroup = "WeaponRay"
                            params.FilterDescendantsInstances = {
                                localplayer.Character:GetChildren(),
                                Workspace.CurrentCamera:GetChildren(),
                                aimignoreparts
                            }
                            
                            local targetChar = aimtarget
                            if not aimtarget:IsA("Model") then
                                targetChar = aimtarget.Character
                            end
                            
                            local ray = workspace:Raycast(origin, dir * dist, params)
                            if ray and ray.Instance:IsDescendantOf(targetChar) then
                                isVisible = true
                            elseif ray and ray.Instance.Name ~= "Terrain" and not ray.Instance:GetAttribute("NoPen") then
                                local armorpen4 = 10
                                if globalammo then
                                    armorpen4 = globalammo:GetAttribute("ArmorPen")
                                end
                                
                                local FunctionLibraryExtension = require(game.ReplicatedStorage.Modules.FunctionLibraryExtension)
                                local armorpen1, newpos2 = FunctionLibraryExtension.Penetration(FunctionLibraryExtension, ray.Instance, ray.Position, dir, armorpen4)
                                if armorpen1 and newpos2 then
                                    local neworigin = ray.Position + dir * 0.01
                                    local newray = workspace:Raycast(neworigin, dir * (dist - (neworigin - origin).Magnitude), params)
                                    if newray and newray.Instance:IsDescendantOf(targetChar) then
                                        isVisible = true
                                    end
                                end
                            end
                        end
                    end
                    aimtargetname.Visible = (aimvischeck == false or isVisible)
                else
                    aimtargetname.Visible = false
                end
            end)
        else
            if targetNameVisibilityConnection then
                targetNameVisibilityConnection:Disconnect()
                targetNameVisibilityConnection = nil
            end
            aimtargetname.Visible = false
        end
    end
}, "ShowTargetName")

sections.AimVisual:Toggle({
    Name = "Show Target Tracker",
    Default = false,
    Callback = function(value)
        snaplinebool = value
        aimsnapline.Visible = value
        RunService.RenderStepped:Connect(function()
            if snaplinebool and aimtarget ~= nil and aimtargetpart ~= nil then
                local isVisible = false
                
                if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                    local origin = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
                    local pos = aimtargetpart.Position
                    local dir = pos - origin
                    local dist = dir.Magnitude + 5
                    dir = dir.Unit
                    
                    local params = RaycastParams.new()
                    params.IgnoreWater = true
                    params.CollisionGroup = "WeaponRay"
                    params.FilterDescendantsInstances = {
                        localplayer.Character:GetChildren(),
                        Workspace.CurrentCamera:GetChildren(),
                        aimignoreparts
                    }
                    
                    local ray = workspace:Raycast(origin, dir * dist, params)
                    if ray and ray.Instance:IsDescendantOf(aimtarget) then
                        isVisible = true
                    elseif ray and ray.Instance.Name ~= "Terrain" and not ray.Instance:GetAttribute("NoPen") then
                        local armorpen4 = 10
                        if globalammo then
                            armorpen4 = globalammo:GetAttribute("ArmorPen")
                        end
                        
                        local FunctionLibraryExtension = require(game.ReplicatedStorage.Modules.FunctionLibraryExtension)
                        local armorpen1, newpos2 = FunctionLibraryExtension.Penetration(FunctionLibraryExtension, ray.Instance, ray.Position, dir, armorpen4)
                        if armorpen1 and newpos2 then
                            local neworigin = ray.Position + dir * 0.01
                            local newray = workspace:Raycast(neworigin, dir * (dist - (neworigin - origin).Magnitude), params)
                            if newray and newray.Instance:IsDescendantOf(aimtarget) then
                                isVisible = true
                            end
                        end
                    end
                    
                    local targetScreenPos = Workspace.CurrentCamera:WorldToViewportPoint(aimtargetpart.Position)
                    if targetScreenPos.Z > 0 then
                        if aimvischeck == false or isVisible then
                            aimsnapline.From = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
                            aimsnapline.To = Vector2.new(targetScreenPos.X, targetScreenPos.Y)
                            aimsnapline.Visible = true
                        else
                            aimsnapline.Visible = false
                        end
                    else
                        aimsnapline.Visible = false
                    end
                else
                    aimsnapline.Visible = false
                end
            else
                aimsnapline.Visible = false
            end
        end)
    end
}, "TargetTracker")

sections.AimVisual:Header({
    Text = "FOV Settings"
})

sections.AimVisual:Toggle({
    Name = "Show FOV",
    Default = false,
    Callback = function(value)
        aimfovcircle.Visible = value
    end
}, "ShowFOV")

sections.AimVisual:Slider({
    Name = "Aim FOV",
    Default = 150,
    Minimum = 0,
    Maximum = 1000,
    Callback = function(value)
        aimfov = value
        aimfovcircle.Radius = value
    end
}, "OblivionAimFOV")

sections.AimVisual:Toggle({
    Name = "Fill FOV",
    Default = false,
    Callback = function(value)
        aimfovcircle.Filled = value
    end
}, "FillFOVCircle")


sections.AimVisual:Slider({
    Name = "FOV Circle Transparency",
    Default = 0.2,
    Minimum = 0,
    Maximum = 1,
    Precision = 2,
    Callback = function(value)
        aimfovcircle.Transparency = value
    end
}, "FOVTransparency")

sections.AimVisual:Colorpicker({
    Name = "FOV Circle Color",
    Default = Color3.fromRGB(255, 255, 255),
    Alpha = 0,
    Callback = function(color)
        aimfovcircle.Color = color
        aimsnapline.Color = color
    end
}, "FOVColor")



local previousRenderSteppedConnection = RunService:FindFirstChild("RenderSteppedConnection")
if previousRenderSteppedConnection then
    previousRenderSteppedConnection:Disconnect()
end

RunService.RenderStepped:Connect(function()
    aimfovcircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    
    if snaplinebool and aimtarget ~= nil and aimtargetpart ~= nil then
        local targetScreenPos = Workspace.CurrentCamera:WorldToViewportPoint(aimtargetpart.Position)
        if targetScreenPos.Z > 0 then
            local isVisible = true
            
            if aimvischeck then  
                isVisible = false
                if localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
                    local origin = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
                    local pos = aimtargetpart.Position
                    local dir = pos - origin
                    local dist = dir.Magnitude + 5
                    dir = dir.Unit
                    
                    local params = RaycastParams.new()
                    params.IgnoreWater = true
                    params.CollisionGroup = "WeaponRay"
                    params.FilterDescendantsInstances = {
                        localplayer.Character:GetChildren(),
                        Workspace.CurrentCamera:GetChildren(),
                        aimignoreparts
                    }
                    
                    local targetChar = aimtarget
                    if not aimtarget:IsA("Model") then
                        targetChar = aimtarget.Character
                    end
                    
                    local ray = workspace:Raycast(origin, dir * dist, params)
                    if ray and ray.Instance:IsDescendantOf(targetChar) then
                        isVisible = true
                    elseif ray and ray.Instance.Name ~= "Terrain" and not ray.Instance:GetAttribute("NoPen") then
                        local armorpen4 = 10
                        if globalammo then
                            armorpen4 = globalammo:GetAttribute("ArmorPen")
                        end
                        
                        local FunctionLibraryExtension = require(game.ReplicatedStorage.Modules.FunctionLibraryExtension)
                        local armorpen1, newpos2 = FunctionLibraryExtension.Penetration(FunctionLibraryExtension, ray.Instance, ray.Position, dir, armorpen4)
                        if armorpen1 and newpos2 then
                            local neworigin = ray.Position + dir * 0.01
                            local newray = workspace:Raycast(neworigin, dir * (dist - (neworigin - origin).Magnitude), params)
                            if newray and newray.Instance:IsDescendantOf(targetChar) then
                                isVisible = true
                            end
                        end
                    end
                end
            end

            if isVisible then
                aimsnapline.From = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
                aimsnapline.To = Vector2.new(targetScreenPos.X, targetScreenPos.Y)
                aimsnapline.Visible = true
            else
                aimsnapline.Visible = false
            end
        else
            aimsnapline.Visible = false
        end
    else
        aimsnapline.Visible = false
    end
    
    if aimtarget ~= nil then
        aimtargetname.Text = aimtarget.Name
        aimtargetname.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2 + aimfov + 20)
    else
        aimtargetname.Text = " "
    end
end)

sections.ESPMain:Header({
    Text = "ESP Settings"
})

sections.ESPMain:Toggle({
    Name = "Enable ESP",
    Default = false,
    Callback = function(value)
        ESP.Enabled = value
        
        if not value then
            local espHolder = CoreGui:FindFirstChild("ESPHolder")
            if espHolder then
                for _, playerESP in pairs(espHolder:GetChildren()) do
                    for _, child in pairs(playerESP:GetChildren()) do
                        if child:IsA("GuiObject") then
                            child.Visible = false
                        elseif child:IsA("Highlight") then
                            child.Enabled = false
                        end
                    end
                end
            end
            
            for _, skeleton in pairs(ESP.Skeletons or {}) do
                for name, line in pairs(skeleton) do
                    if type(name) == "string" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and name ~= "lastFoV" and name ~= "lastCamPos" then
                        pcall(function()
                            if line and typeof(line) ~= "table" and type(line) ~= "number" and line.Visible ~= nil then
                                line.Visible = false
                            end
                        end)
                    end
                end
            end
            
            if ESP.GazeLines then
                for _, line in pairs(ESP.GazeLines) do
                    line.Visible = false
                end
            end
        else
            ESP.Initialized = false
        end
    end
}, "EnableESP")


sections.ESPMain:Slider({
    Name = "Max Distance",
    Default = 1500,
    Minimum = 100,
    Maximum = 10000,
    Precision = 2,
    Callback = function(value)
        ESP.MaxDistance = value
    end
}, "ESPMaxDistance")

ForceESPRefresh = function()
    ESP.Initialized = false
    
    pcall(function()
        local oldGui = CoreGui:FindFirstChild("ESPHolder")
        if oldGui then
            oldGui:Destroy()
        end
    end)
    
    if ESP.Skeletons then
        for player, skeleton in pairs(ESP.Skeletons) do
            for name, element in pairs(skeleton) do
                if type(name) == "string" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and name ~= "lastFoV" and name ~= "lastCamPos" then
                    pcall(function()
                        if element and typeof(element) ~= "table" and type(element) ~= "number" and element.Visible ~= nil then
                            element.Visible = false
                        end
                    end)
                end
            end
        end
    end
    
    if ESP.GazeLines then
        for _, line in pairs(ESP.GazeLines) do
            line.Visible = false
        end
    end
    
    wait(0.1)
    
    if ESP.Enabled and ESP.ShowAIBots then
        FindAndDrawAIBots()
    end
end

function FindAndDrawAIBots()
    if not ESP.ShowAIBots or not ESP.Enabled then return end

    local botCount = 0
    for _, descendant in pairs(workspace:GetDescendants()) do
        if descendant:IsA("Humanoid") then
            local model = descendant.Parent
            if model and model:FindFirstChild("HumanoidRootPart") and not Players:GetPlayerFromCharacter(model) then
                botCount = botCount + 1
            end
        end
    end
    

    local espHolder = CoreGui:FindFirstChild("ESPHolder")
    if not espHolder then 
        return 
    end
    
    for _, item in pairs(espHolder:GetChildren()) do
        if item.Name:find("AIBot") then
            item:Destroy()
        end
    end
    
    local function createBotESP(model)
        local botESP = ESPFunctions.Create("Folder", {
            Parent = espHolder,
            Name = "AIBot_" .. model.Name
        })
        
        local Name = ESPFunctions.Create("TextLabel", {
            Parent = botESP,
            Position = UDim2.new(0.5, 0, 0, -11),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = ESP.Drawing.Names.RGB,
            Font = 3, 
            TextSize = ESP.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true,
            Visible = ESP.Drawing.Names.Enabled,
            Text = string.format('(<font color="rgb(%d, %d, %d)">AI</font>) %s', 255, 0, 0, "AI")
        })
        
        local Distance = ESPFunctions.Create("TextLabel", {
            Parent = botESP,
            Position = UDim2.new(0.5, 0, 0, 11),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = ESP.Drawing.Distances.RGB,
            Font = 3, 
            TextSize = ESP.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true,
            Visible = ESP.Drawing.Distances.Enabled
        })
        
        local Box = ESPFunctions.Create("Frame", {
            Parent = botESP,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 0.75,
            BorderSizePixel = 0,
            Name = "Box",
            Visible = ESP.Drawing.Boxes.Full.Enabled
        })
        
        local Gradient1 = ESPFunctions.Create("UIGradient", {
            Parent = Box,
            Enabled = ESP.Drawing.Boxes.GradientFill,
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientFillRGB1),
                ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientFillRGB2)
            }
        })

        local Outline = ESPFunctions.Create("UIStroke", {
            Parent = Box,
            Enabled = ESP.Drawing.Boxes.Gradient,
            Transparency = 0,
            Color = Color3.fromRGB(255, 255, 255),
            LineJoinMode = Enum.LineJoinMode.Miter
        })

        local Gradient2 = ESPFunctions.Create("UIGradient", {
            Parent = Outline,
            Enabled = ESP.Drawing.Boxes.Gradient,
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientRGB1),
                ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientRGB2)
            }
        })

        local Healthbar = ESPFunctions.Create("Frame", {
            Parent = botESP,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 0,
            Name = "Healthbar",
            Visible = ESP.Drawing.Healthbar.Enabled
        })

        local BehindHealthbar = ESPFunctions.Create("Frame", {
            Parent = botESP,
            ZIndex = -1,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 0,
            Name = "BehindHealthbar",
            Visible = ESP.Drawing.Healthbar.Enabled
        })

        local HealthbarGradient = ESPFunctions.Create("UIGradient", {
            Parent = Healthbar,
            Enabled = ESP.Drawing.Healthbar.Gradient,
            Rotation = -90,
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, ESP.Drawing.Healthbar.GradientRGB1),
                ColorSequenceKeypoint.new(0.5, ESP.Drawing.Healthbar.GradientRGB2),
                ColorSequenceKeypoint.new(1, ESP.Drawing.Healthbar.GradientRGB3)
            }
        })

        local HealthText = ESPFunctions.Create("TextLabel", {
            Parent = botESP,
            Position = UDim2.new(0.5, 0, 0, 31),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = 3, 
            TextSize = ESP.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            Visible = ESP.Drawing.Healthbar.HealthText
        })

        local Chams = ESPFunctions.Create("Highlight", {
            Parent = botESP,
            FillTransparency = ESP.Drawing.Chams.Fill_Transparency / 100,
            OutlineTransparency = ESP.Drawing.Chams.Outline_Transparency / 100,
            FillColor = ESP.Drawing.Chams.FillRGB,
            OutlineColor = ESP.Drawing.Chams.OutlineRGB,
            DepthMode = ESP.Drawing.Chams.XRay and "AlwaysOnTop" or (ESP.Drawing.Chams.VisibleCheck and "Occluded" or "AlwaysOnTop"),
            Enabled = ESP.Drawing.Chams.Enabled,
            Adornee = model
        })
        
        local function HideESP()
            for _, child in pairs(botESP:GetChildren()) do
                pcall(function()
                    if child:IsA("GuiObject") then
                        child.Visible = false
                    elseif child:IsA("Highlight") then
                        child.Enabled = false
                    end
                end)
            end
            
            if not model or not model.Parent then
                botESP:Destroy()
            end
        end

        RunService.RenderStepped:Connect(function()
            if not ESP.ShowAIBots or not ESP.Enabled or not model or not model:FindFirstChild("HumanoidRootPart") or not model:FindFirstChild("Humanoid") then
                HideESP()
                return
            end
            
            local HRP = model.HumanoidRootPart
            local Humanoid = model.Humanoid
            local Cam = Workspace.CurrentCamera
            
            local Pos, OnScreen = Cam:WorldToScreenPoint(HRP.Position)
            local Dist = (Cam.CFrame.Position - HRP.Position).Magnitude / 3.5714285714
            
            if OnScreen and Dist <= ESP.MaxDistance then
                local Size = HRP.Size.Y
                
                local realDist = (Cam.CFrame.Position - HRP.Position).Magnitude
                local baseFOV = 70 
                local fovCompensation = math.tan(math.rad(baseFOV) / 2) / math.tan(math.rad(Cam.FieldOfView) / 2)
                local fixedScaleFactor = (Size * Cam.ViewportSize.Y) / (realDist * 2) * fovCompensation
                local w, h = 3 * fixedScaleFactor, 4.5 * fixedScaleFactor

                Box.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                Box.Size = UDim2.new(0, w, 0, h)
                Box.Visible = ESP.Drawing.Boxes.Full.Enabled

                Name.Position = UDim2.new(0, Pos.X, 0, Pos.Y - h / 2 - 9)
                Name.Visible = ESP.Drawing.Names.Enabled

                if ESP.Drawing.Distances.Enabled then
                    Distance.TextColor3 = ESP.Drawing.Distances.RGB
                    if ESP.Drawing.Distances.Position == "Bottom" then
                        Distance.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 7)
                        Distance.Text = string.format("%d meters", math.floor(Dist))
                        Distance.Visible = true
                    elseif ESP.Drawing.Distances.Position == "Text" then
                        Distance.Visible = false
                        Name.Text = string.format('(<font color="rgb(%d, %d, %d)">AI</font>) %s [%d]', 255, 0, 0, "AI", math.floor(Dist))
                    end
                end

                if ESP.Drawing.Healthbar.Enabled then
                    local Health = Humanoid.Health / Humanoid.MaxHealth
                    
                    BehindHealthbar.Position = UDim2.new(0, Pos.X - w / 2 - 5, 0, Pos.Y - h / 2)
                    BehindHealthbar.Size = UDim2.new(0, 3, 0, h)
                    BehindHealthbar.Visible = true
                    
                    Healthbar.Position = UDim2.new(0, Pos.X - w / 2 - 5, 0, Pos.Y - h / 2 + h * (1 - Health))
                    Healthbar.Size = UDim2.new(0, 3, 0, h * Health)
                    Healthbar.Visible = true
                    
                    if ESP.Drawing.Healthbar.HealthText then
                        HealthText.Text = ""
                        HealthText.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 17)
                        HealthText.Visible = true
                    end
                end

                if ESP.Drawing.Chams.Enabled then
                    Chams.Adornee = model
                    Chams.FillColor = ESP.Drawing.Chams.FillRGB
                    Chams.OutlineColor = ESP.Drawing.Chams.OutlineRGB
                    Chams.Enabled = true
                    
                    if ESP.Drawing.Chams.Thermal then
                        local breathe_effect = math.atan(math.sin(tick() * 2)) * 2 / math.pi
                        Chams.FillTransparency = ESP.Drawing.Chams.Fill_Transparency * breathe_effect * 0.01
                        Chams.OutlineTransparency = ESP.Drawing.Chams.Outline_Transparency * breathe_effect * 0.01
                    else
                        Chams.FillTransparency = ESP.Drawing.Chams.Fill_Transparency / 100
                        Chams.OutlineTransparency = ESP.Drawing.Chams.Outline_Transparency / 100
                    end
                    
                    if ESP.Drawing.Chams.XRay then
                        Chams.DepthMode = "AlwaysOnTop"
                    else
                        Chams.DepthMode = ESP.Drawing.Chams.VisibleCheck and "Occluded" or "AlwaysOnTop"
                    end
                else
                    Chams.Enabled = false
                end
            else
                HideESP()
            end
        end)
        
        return botESP
    end

    local function searchForBots(parent, depth)
        depth = depth or 0
        if depth > 3 then return end 
        
        for _, model in pairs(parent:GetChildren()) do
            if model:IsA("Model") and model:FindFirstChild("Humanoid") and model:FindFirstChild("HumanoidRootPart") then
                if not Players:GetPlayerFromCharacter(model) then
                    createBotESP(model)
                end
            end

            if #model:GetChildren() > 0 then
                searchForBots(model, depth + 1)
            end
        end
    end
    searchForBots(workspace)
    local possibleFolders = {"NPCs", "Bots", "AI", "Enemies", "Zombies", "Characters", "Entities", "Mobs"}
    for _, folderName in ipairs(possibleFolders) do
        local folder = workspace:FindFirstChild(folderName)
        if folder then
            searchForBots(folder)
        end
    end

    for _, descendant in pairs(workspace:GetDescendants()) do
        if descendant:IsA("Humanoid") then
            local model = descendant.Parent
            if model and model:FindFirstChild("HumanoidRootPart") and not Players:GetPlayerFromCharacter(model) then
                local existing = false
                for _, item in pairs(espHolder:GetChildren()) do
                    if item.Name == "AIBot_" .. model.Name then
                        existing = true
                        break
                    end
                end
                
                if not existing then
                    createBotESP(model)
                end
            end
        end
    end
end

sections.ESPMain:Toggle({
    Name = "Show AI Bots",
    Default = false,
    Callback = function(value)
        ESP.ShowAIBots = value
        
        if ESP.Enabled then
            ESP.Initialized = false
            ForceESPRefresh()
            
            if value then
                pcall(function()
                    for _, model in pairs(workspace:GetChildren()) do
                        if model:IsA("Model") and model:FindFirstChild("Humanoid") and model:FindFirstChild("HumanoidRootPart") then
                            if not Players:GetPlayerFromCharacter(model) then
                                local espHolder = CoreGui:FindFirstChild("ESPHolder")
                                if espHolder then
                                    local botESP = ESPFunctions.Create("Folder")
                                    botESP.Name = "AIBot_" .. model.Name
                                    botESP.Parent = espHolder
                                    
                                    local Name = ESPFunctions.Create("TextLabel")
                                    Name.Parent = botESP
                                    Name.Position = UDim2.new(0.5, 0, 0, -11)
                                    Name.Size = UDim2.new(0, 100, 0, 20)
                                    Name.AnchorPoint = Vector2.new(0.5, 0.5)
                                    Name.BackgroundTransparency = 1
                                    Name.TextColor3 = Color3.fromRGB(255, 0, 0)
                                    Name.Font = 3 
                                    Name.TextSize = 14
                                    Name.TextStrokeTransparency = 0
                                    Name.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
                                    Name.RichText = true
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">AI</font>) %s', 255, 0, 0, "AI")
                                    Name.Visible = true
                                    RunService.RenderStepped:Connect(function()
                                        if not ESP.ShowAIBots or not ESP.Enabled or not model or not model:FindFirstChild("HumanoidRootPart") then
                                            botESP:Destroy()
                                            return
                                        end
                                        
                                        local hrp = model.HumanoidRootPart
                                        local pos, onScreen = Workspace.CurrentCamera:WorldToViewportPoint(hrp.Position)
                                        
                                        if onScreen then
                                            Name.Position = UDim2.new(0, pos.X, 0, pos.Y - 20)
                                            Name.Visible = true
                                        else
                                            Name.Visible = false
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end)
            else
                pcall(function()
                    local espHolder = CoreGui:FindFirstChild("ESPHolder")
                    if espHolder then
                        for _, item in pairs(espHolder:GetChildren()) do
                            if item.Name:match("^AIBot_") then
                                item:Destroy()
                            end
                        end
                    end
                end)
            end
        end
    end
}, "ESPShowAIBots") 


sections.ESPMain:Toggle({
    Name = "Names",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Names.Enabled = value
    end
}, "ESPNames")

sections.ESPMain:Toggle({
    Name = "Distance",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Distances.Enabled = value
    end
}, "ESPDistance")

sections.ESPMain:Toggle({
    Name = "Healthbar",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Healthbar.Enabled = value
    end
}, "ESPHealthbar")

sections.ESPMain:Toggle({
    Name = "Chams",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Chams.Enabled = value
    end
}, "ESPChamsXRay")

sections.ESPMain:Toggle({
    Name = "Chams X-Ray",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Chams.XRay = value
        
        if ESP.TrackedItems and type(ESP.TrackedItems) == "table" then
            for _, data in pairs(ESP.TrackedItems) do
                if data and data.Drawing and data.Drawing.Chams then
                    data.Drawing.Chams.DepthMode = value and "AlwaysOnTop" or (ESP.Drawing.Chams.VisibleCheck and "Occluded" or "AlwaysOnTop")
                end
            end
        end
    end
}, "ESPChamsXRayToggle")

sections.ESPMain:Slider({
    Name = "Chams Transparency",
    Default = 0.5,
    Minimum = 0,
    Maximum = 1,
    Decimals = 2,
    Callback = function(value)
        allvars.espchamstransparency = value
        for _, highlight in pairs(ESP.Highlights or {}) do
            if highlight and highlight.FillTransparency ~= nil then
                if not allvars.espthermalbool then
                    highlight.FillTransparency = value
                end
            end
        end
    end
}, "ESPChamsTransparency")

sections.ESPMain:Toggle({
    Name = "Thermal Chams",
    Default = false,
    Callback = function(value)
        allvars.espthermalbool = value
        for _, highlight in pairs(ESP.Highlights or {}) do
            if highlight and highlight.FillTransparency ~= nil then
                if value then
                    highlight.FillTransparency = 0.1
                    highlight.OutlineTransparency = 0
                else
                    highlight.FillTransparency = allvars.espchamstransparency or 0.5
                    highlight.OutlineTransparency = allvars.espchamsline or 0
                end
            end
        end
    end
}, "ESPThermal")

sections.ESPMain:Toggle({
    Name = "look line",
    Default = false,
    Callback = function(value)
        ESP.Drawing.GazeLine.Enabled = value
        
        if not value and ESP.GazeLines then
            for _, line in pairs(ESP.GazeLines) do
                line.Visible = false
            end
        end
    end
}, "ESPGazeLine")

sections.ESPMain:Colorpicker({
    Name = "look line Color",
    Default = ESP.Drawing.GazeLine.RGB,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.GazeLine.RGB = color
        
        if ESP.GazeLines then
            for _, line in pairs(ESP.GazeLines) do
                line.Color = color
            end
        end
    end
}, "ESPGazeLineColor")


sections.ESPBox:Header({
    Text = "ESP Box Settings"
})

sections.ESPBox:Toggle({
    Name = "ESP Box",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Boxes.Full.Enabled = value
    end
}, "ESPBox")

sections.ESPBox:Toggle({
    Name = "Filled Box",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Boxes.Filled.Enabled = value
    end
}, "ESPFilledBox")

sections.ESPBox:Toggle({
    Name = "Animated Boxes",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Boxes.Animate = value
    end
}, "AnimatedBoxes")

sections.ESPBox:Slider({
    Name = "Rotation Speed",
    Default = 300,
    Minimum = 1,
    Maximum = 500,
    Precision = 2,
    Callback = function(value)
        ESP.Drawing.Boxes.RotationSpeed = value
    end
}, "RotationSpeed")

sections.ESPColor:Header({
    Text = "ESP Color Settings"
})

sections.ESPColor:Colorpicker({
    Name = "Box Gradient 1 Color",
    Default = ESP.Drawing.Boxes.GradientFillRGB1,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.Boxes.GradientFillRGB1 = color
        ESP.Drawing.Boxes.GradientRGB1 = color
        
        if ESP.Enabled and ESP.Initialized then
            ESP.Initialized = false
        end
    end
}, "BoxGradient1Color")

sections.ESPColor:Colorpicker({
    Name = "Box Gradient 2 Color",
    Default = ESP.Drawing.Boxes.GradientFillRGB2,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.Boxes.GradientFillRGB2 = color
        ESP.Drawing.Boxes.GradientRGB2 = color
    end
}, "BoxGradient1Color")

sections.ESPColor:Colorpicker({
    Name = "Healthbar Gradient 2 Color",
    Default = ESP.Drawing.Healthbar.GradientRGB2,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.Healthbar.GradientRGB2 = color
    end
}, "HealthbarGradient2Color")

sections.ESPColor:Colorpicker({
    Name = "Healthbar Gradient 3 Color",
    Default = ESP.Drawing.Healthbar.GradientRGB3,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.Healthbar.GradientRGB3 = color
    end
}, "HealthbarGradient3Color")

sections.ESPColor:Colorpicker({
    Name = "Chams Fill Color",
    Default = ESP.Drawing.Chams.FillRGB,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.Chams.FillRGB = color
    end
}, "ChamsFillColor")

sections.ESPColor:Colorpicker({
    Name = "Chams Outline Color",
    Default = ESP.Drawing.Chams.OutlineRGB,
    Alpha = 0,
    Callback = function(color)
        ESP.Drawing.Chams.OutlineRGB = color
    end
}, "ChamsOutlineColor")

sections.ESPColor:Slider({
    Name = "Chams Fill Transparency",
    Default = 50,
    Minimum = 0,
    Maximum = 100,
    Callback = function(value)
        ESP.Drawing.Chams.Fill_Transparency = value
    end
}, "ChamsFillTransparency")

sections.ESPColor:Slider({
    Name = "Chams Outline Transparency",
    Default = 50,
    Minimum = 0,
    Maximum = 100,
    Callback = function(value)
        ESP.Drawing.Chams.Outline_Transparency = value
    end
}, "ChamsOutlineTransparency")

sections.ESPColor:Button({
    Name = "Reset Colors to Default",
    Callback = function()
    ESP.Drawing.Boxes.GradientFillRGB1 = Color3.fromRGB(19, 0, 255)
    ESP.Drawing.Boxes.GradientRGB1 = Color3.fromRGB(19, 0, 255)
    ESP.Drawing.Boxes.GradientFillRGB2 = Color3.fromRGB(255, 0, 0)
    ESP.Drawing.Boxes.GradientRGB2 = Color3.fromRGB(255, 0, 0)
    ESP.Drawing.Healthbar.GradientRGB1 = Color3.fromRGB(200, 0, 0)
    ESP.Drawing.Healthbar.GradientRGB2 = Color3.fromRGB(150, 150, 0)
    ESP.Drawing.Healthbar.GradientRGB3 = Color3.fromRGB(0, 255, 0)
    ESP.Drawing.Chams.FillRGB = Color3.fromRGB(119, 120, 255)
    ESP.Drawing.Chams.OutlineRGB = Color3.fromRGB(119, 120, 255)
    ESP.Drawing.Chams.Fill_Transparency = 50
    ESP.Drawing.Chams.Outline_Transparency = 50
        ESP.Drawing.Names.RGB = Color3.fromRGB(255, 255, 255)
        ESP.Drawing.Distances.RGB = Color3.fromRGB(255, 255, 255)
        ESP.Options.TeamcheckRGB = Color3.fromRGB(0, 255, 0)
        ESP.Options.FriendcheckRGB = Color3.fromRGB(0, 255, 0)
        ESP.Options.HighlightRGB = Color3.fromRGB(255, 0, 0)
        sections.ESPColor:get_element("BoxGradient1Color"):set_value(ESP.Drawing.Boxes.GradientFillRGB1)
        sections.ESPColor:get_element("BoxGradient2Color"):set_value(ESP.Drawing.Boxes.GradientFillRGB2)
        sections.ESPColor:get_element("HealthbarGradient1Color"):set_value(ESP.Drawing.Healthbar.GradientRGB1)
        sections.ESPColor:get_element("HealthbarGradient2Color"):set_value(ESP.Drawing.Healthbar.GradientRGB2)
        sections.ESPColor:get_element("HealthbarGradient3Color"):set_value(ESP.Drawing.Healthbar.GradientRGB3)
        sections.ESPColor:get_element("ChamsFillColor"):set_value(ESP.Drawing.Chams.FillRGB)
        sections.ESPColor:get_element("ChamsOutlineColor"):set_value(ESP.Drawing.Chams.OutlineRGB)
        sections.ESPMain:get_element("ESPNamesColor"):set_value(ESP.Drawing.Names.RGB)
        sections.ESPMain:get_element("ESPDistanceColor"):set_value(ESP.Drawing.Distances.RGB)
        sections.ESPMain:get_element("ESPTeamCheckColor"):set_value(ESP.Options.TeamcheckRGB)
        sections.ESPMain:get_element("ESPFriendCheckColor"):set_value(ESP.Options.FriendcheckRGB)
        sections.ESPMain:get_element("ESPHighlightColor"):set_value(ESP.Options.HighlightRGB)
        if ESP.Enabled and ESP.Initialized then
            ESP.Initialized = false
        end
    end
})

sections.PlayerMovement:Header({
    Text = "Movement Settings"
})

sections.PlayerMovement:Toggle({
    Name = "Enable SpeedHack",
    Default = false,
    Callback = function(value)
        CFrameSpeed.Enabled = value
        
        if CFrameSpeed.Enabled then
            if CFrameSpeed.Connection then CFrameSpeed.Connection:Disconnect() end
            
            CFrameSpeed.Connection = RunService.RenderStepped:Connect(function()
                local player = Players.LocalPlayer
                local character = player.Character
                if not character or not character:FindFirstChild("HumanoidRootPart") or not character:FindFirstChild("Humanoid") then return end
                
                local hrp = character.HumanoidRootPart
                local humanoid = character.Humanoid
                
                if humanoid.MoveDirection.Magnitude > 0 or (CFrameSpeed.KeysEnabled.Space and UserInputService:IsKeyDown(Enum.KeyCode.Space)) then
                    local moveDirection = Vector3.new(0, 0, 0)
                    
                    if CFrameSpeed.KeysEnabled.W and UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        moveDirection = moveDirection + (Workspace.CurrentCamera.CFrame.LookVector * Vector3.new(1, 0, 1)).Unit
                    end
                    if CFrameSpeed.KeysEnabled.S and UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        moveDirection = moveDirection - (Workspace.CurrentCamera.CFrame.LookVector * Vector3.new(1, 0, 1)).Unit
                    end
                    if CFrameSpeed.KeysEnabled.A and UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        moveDirection = moveDirection - (Workspace.CurrentCamera.CFrame.RightVector * Vector3.new(1, 0, 1)).Unit
                    end
                    if CFrameSpeed.KeysEnabled.D and UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        moveDirection = moveDirection + (Workspace.CurrentCamera.CFrame.RightVector * Vector3.new(1, 0, 1)).Unit
                    end
                    
                    if CFrameSpeed.KeysEnabled.Space and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        moveDirection = moveDirection + Vector3.new(0, 1, 0)
                    end
                    
                    if moveDirection.Magnitude > 0 then
                        moveDirection = moveDirection.Unit
                    end
                    
                    hrp.CFrame = hrp.CFrame + moveDirection * CFrameSpeed.Speed
                end
            end)
        else
            if CFrameSpeed.Connection then
                CFrameSpeed.Connection:Disconnect()
                CFrameSpeed.Connection = nil
            end
        end
    end
}, "EnableSpeedHack")

sections.PlayerMovement:Slider({
    Name = "Speed Multiplier",
    Default = 0.01,
    Minimum = 0.01,
    Maximum = 0.05,
    Precision = 2,
    Callback = function(value)
        if not CFrameSpeed.FastWalkEnabled then
            CFrameSpeed.Speed = value
            CFrameSpeed.OriginalSpeed = value
        end
    end
}, "SpeedMultiplier")

sections.PlayerMovement:Toggle({
    Name = "Fast Walk",
    Default = false,
    Callback = function(value)
        CFrameSpeed.FastWalkEnabled = value
        CFrameSpeed.DirectWalkSpeedEnabled = value
        
        if CFrameSpeed.WalkSpeedConnection then
            CFrameSpeed.WalkSpeedConnection:Disconnect()
            CFrameSpeed.WalkSpeedConnection = nil
        end
        
        if value then
            CFrameSpeed.OriginalSpeed = CFrameSpeed.Speed
            CFrameSpeed.Speed = CFrameSpeed.FastWalkSpeed
            
            CFrameSpeed.WalkSpeedConnection = RunService.Heartbeat:Connect(function()
                local player = Players.LocalPlayer
                if not player then return end
                
                local character = player.Character
                if not character then return end
                
                local humanoid = character:FindFirstChild("Humanoid")
                if not humanoid then return end
                
                if not CFrameSpeed.OriginalWalkSpeedSaved then
                    CFrameSpeed.OriginalWalkSpeed = humanoid.WalkSpeed
                    CFrameSpeed.OriginalWalkSpeedSaved = true
                end
                
                humanoid.WalkSpeed = CFrameSpeed.FastWalkSpeedValue
            end)
            
            if not CFrameSpeed.Enabled then
                CFrameSpeed.Enabled = true
                
                if CFrameSpeed.Connection then 
                    CFrameSpeed.Connection:Disconnect() 
                end
                
                CFrameSpeed.Connection = RunService.RenderStepped:Connect(function()
                    local player = Players.LocalPlayer
                    local character = player.Character
                    if not character or not character:FindFirstChild("HumanoidRootPart") or not character:FindFirstChild("Humanoid") then return end
                    
                    local hrp = character.HumanoidRootPart
                    local humanoid = character.Humanoid
                    
                    if humanoid.MoveDirection.Magnitude > 0 or (CFrameSpeed.KeysEnabled.Space and UserInputService:IsKeyDown(Enum.KeyCode.Space)) then
                        local moveDirection = Vector3.new(0, 0, 0)
                        
                        if CFrameSpeed.KeysEnabled.W and UserInputService:IsKeyDown(Enum.KeyCode.W) then
                            moveDirection = moveDirection + (Workspace.CurrentCamera.CFrame.LookVector * Vector3.new(1, 0, 1)).Unit
                        end
                        if CFrameSpeed.KeysEnabled.S and UserInputService:IsKeyDown(Enum.KeyCode.S) then
                            moveDirection = moveDirection - (Workspace.CurrentCamera.CFrame.LookVector * Vector3.new(1, 0, 1)).Unit
                        end
                        if CFrameSpeed.KeysEnabled.A and UserInputService:IsKeyDown(Enum.KeyCode.A) then
                            moveDirection = moveDirection - (Workspace.CurrentCamera.CFrame.RightVector * Vector3.new(1, 0, 1)).Unit
                        end
                        if CFrameSpeed.KeysEnabled.D and UserInputService:IsKeyDown(Enum.KeyCode.D) then
                            moveDirection = moveDirection + (Workspace.CurrentCamera.CFrame.RightVector * Vector3.new(1, 0, 1)).Unit
                        end
                        
                        if CFrameSpeed.KeysEnabled.Space and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                            moveDirection = moveDirection + Vector3.new(0, 1, 0)
                        end
                        
                        if moveDirection.Magnitude > 0 then
                            moveDirection = moveDirection.Unit
                        end
                        
                        hrp.CFrame = hrp.CFrame + moveDirection * CFrameSpeed.Speed
                    end
                end)
            end
        else
            CFrameSpeed.Speed = CFrameSpeed.OriginalSpeed
            
            if CFrameSpeed.OriginalWalkSpeedSaved then
                local player = Players.LocalPlayer
                if player and player.Character and player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.WalkSpeed = CFrameSpeed.OriginalWalkSpeed
                end
                CFrameSpeed.OriginalWalkSpeedSaved = false
            end
            
            if CFrameSpeed.Connection and not CFrameSpeed.Enabled then
                CFrameSpeed.Connection:Disconnect()
                CFrameSpeed.Connection = nil
            end
        end
    end
}, "FastWalk")

sections.PlayerMovement:Toggle({
    Name = "Jesus (Walk on Water)",
    Default = false,
    Callback = function(value)
        WorldESP.JesusEnabled = value
        if not value then
             if waterplatforms then
                for _, v in ipairs(waterplatforms:GetChildren()) do
                    v:Destroy()
                end
            end
        end
    end
}, "JesusToggle")

local InventoryViewer = {
    Enabled = false,
    GUIEnabled = false,
    ScreenGui = nil,
    MainContainer = nil,
    ScrollingFrame = nil,
    HotbarScrollingFrame = nil, 
    ArmorScrollingFrame = nil,
    UpdateConnection = nil,
    Theme = {
        Background = Color3.fromRGB(25, 25, 25),
        Border = Color3.fromRGB(60, 60, 60), 
        Text = Color3.fromRGB(255, 255, 255),
        ItemBg = Color3.fromRGB(40, 40, 40),
        ItemHover = Color3.fromRGB(70, 70, 70),
        SlotBg = Color3.fromRGB(20, 20, 20)
    },
    CompactMode = true 
}

local inventoryViewerSection = tabs.Player:Section({ Side = "Right", Name = "Inventory Viewer" })

inventoryViewerSection:Header({
    Text = "Inventory Viewer"
})


inventoryViewerSection:Toggle({
    Name = "Enable Inventory Viewer",
    Default = false,
    Callback = function(value)
        InventoryViewer.Enabled = value
        
        if InventoryViewer.Enabled then
            
            if not InventoryViewer.ScreenGui then
                local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui", 10)
                if not playerGui then return end
                
                local screenGui = Instance.new("ScreenGui")
                screenGui.Name = "PlayerModelFinder"
                screenGui.Parent = playerGui
                screenGui.ResetOnSpawn = false  
                InventoryViewer.ScreenGui = screenGui
                
                
                local mainContainer = Instance.new("Frame")
                mainContainer.Name = "MainContainer"
                mainContainer.Size = UDim2.new(0, 550, 0, 265) 
                mainContainer.Position = UDim2.new(0.5, -275, 1, -378) 
                mainContainer.BackgroundTransparency = 1
                mainContainer.BorderSizePixel = 0
                mainContainer.Parent = screenGui
                
                
                local realHotbar = Instance.new("Frame")
                realHotbar.Name = "RealHotbar"
                realHotbar.Size = UDim2.new(0, 525, 0, 55)
                realHotbar.Position = UDim2.new(0.5, -262, 1, -65) 
                realHotbar.BackgroundColor3 = InventoryViewer.Theme.Background
                realHotbar.BackgroundTransparency = 0.3
                realHotbar.BorderSizePixel = 0
                
                local cornerHotbar = Instance.new("UICorner")
                cornerHotbar.CornerRadius = UDim.new(0, 8)
                cornerHotbar.Parent = realHotbar
                
                local strokeHotbar = Instance.new("UIStroke")
                strokeHotbar.Color = InventoryViewer.Theme.Border
                strokeHotbar.Thickness = 1
                strokeHotbar.Transparency = 0.3
                strokeHotbar.Parent = realHotbar
                realHotbar.Parent = mainContainer
                
                
                local realHotbarLabel = Instance.new("TextLabel")
                realHotbarLabel.Name = "RealHotbarLabel"
                realHotbarLabel.Size = UDim2.new(0, 80, 0, 20)
                realHotbarLabel.Position = UDim2.new(0, 10, 0, -22)
                realHotbarLabel.BackgroundColor3 = InventoryViewer.Theme.Background
                realHotbarLabel.BackgroundTransparency = 0.3
                realHotbarLabel.TextColor3 = InventoryViewer.Theme.Text
                realHotbarLabel.Text = "hotbar"
                realHotbarLabel.Font = Enum.Font.GothamBold
                realHotbarLabel.TextSize = 12
                realHotbarLabel.TextXAlignment = Enum.TextXAlignment.Center
                
                local cornerHotbarLabel = Instance.new("UICorner")
                cornerHotbarLabel.CornerRadius = UDim.new(0, 4)
                cornerHotbarLabel.Parent = realHotbarLabel
                
                realHotbarLabel.Parent = realHotbar
                
                
                local inventoryViewerHotbar = Instance.new("Frame")
                inventoryViewerHotbar.Name = "InventoryViewerHotbar"
                inventoryViewerHotbar.Size = UDim2.new(0, 450, 0, 45)
                inventoryViewerHotbar.Position = UDim2.new(0.5, -238, 1, -135) 
                inventoryViewerHotbar.BackgroundColor3 = InventoryViewer.Theme.Background
                inventoryViewerHotbar.BackgroundTransparency = 0.3
                inventoryViewerHotbar.BorderSizePixel = 0
                
                local cornerEquip = Instance.new("UICorner")
                cornerEquip.CornerRadius = UDim.new(0, 8)
                cornerEquip.Parent = inventoryViewerHotbar
                
                local strokeEquip = Instance.new("UIStroke")
                strokeEquip.Color = InventoryViewer.Theme.Border
                strokeEquip.Thickness = 1
                strokeEquip.Transparency = 0.3
                strokeEquip.Parent = inventoryViewerHotbar
                inventoryViewerHotbar.Parent = mainContainer
                
                
                local inventoryViewerHotbarLabel = Instance.new("TextLabel")
                inventoryViewerHotbarLabel.Name = "InventoryViewerHotbarLabel"
                inventoryViewerHotbarLabel.Size = UDim2.new(0, 80, 0, 20)
                inventoryViewerHotbarLabel.Position = UDim2.new(0, 10, 0, -22)
                inventoryViewerHotbarLabel.BackgroundColor3 = InventoryViewer.Theme.Background
                inventoryViewerHotbarLabel.BackgroundTransparency = 0.3
                inventoryViewerHotbarLabel.TextColor3 = InventoryViewer.Theme.Text
                inventoryViewerHotbarLabel.Text = "equip"
                inventoryViewerHotbarLabel.Font = Enum.Font.GothamBold
                inventoryViewerHotbarLabel.TextSize = 12
                inventoryViewerHotbarLabel.TextXAlignment = Enum.TextXAlignment.Center
                
                local cornerEquipLabel = Instance.new("UICorner")
                cornerEquipLabel.CornerRadius = UDim.new(0, 4)
                cornerEquipLabel.Parent = inventoryViewerHotbarLabel
                
                inventoryViewerHotbarLabel.Parent = inventoryViewerHotbar
                
                
                local inventoryViewArmor = Instance.new("Frame")
                inventoryViewArmor.Name = "InventoryViewArmor"
                inventoryViewArmor.Size = UDim2.new(0, 400, 0, 45)
                inventoryViewArmor.Position = UDim2.new(0.5, -212, 1, -205) 
                inventoryViewArmor.BackgroundColor3 = InventoryViewer.Theme.Background
                inventoryViewArmor.BackgroundTransparency = 0.3
                inventoryViewArmor.BorderSizePixel = 0
                
                local cornerArmor = Instance.new("UICorner")
                cornerArmor.CornerRadius = UDim.new(0, 8)
                cornerArmor.Parent = inventoryViewArmor
                
                local strokeArmor = Instance.new("UIStroke")
                strokeArmor.Color = InventoryViewer.Theme.Border
                strokeArmor.Thickness = 1
                strokeArmor.Transparency = 0.3
                strokeArmor.Parent = inventoryViewArmor
                inventoryViewArmor.Parent = mainContainer
                
                
                local inventoryViewArmorLabel = Instance.new("TextLabel")
                inventoryViewArmorLabel.Name = "InventoryViewArmorLabel"
                inventoryViewArmorLabel.Size = UDim2.new(0, 80, 0, 20)
                inventoryViewArmorLabel.Position = UDim2.new(0, 10, 0, -22)
                inventoryViewArmorLabel.BackgroundColor3 = InventoryViewer.Theme.Background
                inventoryViewArmorLabel.BackgroundTransparency = 0.3
                inventoryViewArmorLabel.TextColor3 = InventoryViewer.Theme.Text
                inventoryViewArmorLabel.Text = "armor"
                inventoryViewArmorLabel.Font = Enum.Font.GothamBold
                inventoryViewArmorLabel.TextSize = 12
                inventoryViewArmorLabel.TextXAlignment = Enum.TextXAlignment.Center
                
                local cornerArmorLabel = Instance.new("UICorner")
                cornerArmorLabel.CornerRadius = UDim.new(0, 4)
                cornerArmorLabel.Parent = inventoryViewArmorLabel
                
                inventoryViewArmorLabel.Parent = inventoryViewArmor
                
                
                InventoryViewer.MainContainer = mainContainer
                
                
                local scrollingFrame = Instance.new("ScrollingFrame")
                scrollingFrame.Size = UDim2.new(1, -10, 1, -5)
                scrollingFrame.Position = UDim2.new(0, 5, 0, 0) 
                scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
                scrollingFrame.ScrollBarThickness = 0
                scrollingFrame.BackgroundTransparency = 1
                scrollingFrame.Parent = realHotbar
                InventoryViewer.ScrollingFrame = scrollingFrame
                
                local listLayout = Instance.new("UIListLayout")
                listLayout.Padding = UDim.new(0, 10) 
                listLayout.FillDirection = Enum.FillDirection.Horizontal
                listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
                listLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                listLayout.Parent = scrollingFrame
                
                
                local paddingHotbar = Instance.new("UIPadding")
                paddingHotbar.PaddingTop = UDim.new(0, -3) 
                paddingHotbar.Parent = scrollingFrame
                
                
                local hotbarScrollingFrame = Instance.new("ScrollingFrame")
                hotbarScrollingFrame.Size = UDim2.new(1, -10, 1, -5)
                hotbarScrollingFrame.Position = UDim2.new(0, 5, 0, 0) 
                hotbarScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
                hotbarScrollingFrame.ScrollBarThickness = 0
                hotbarScrollingFrame.BackgroundTransparency = 1
                hotbarScrollingFrame.Parent = inventoryViewerHotbar
                InventoryViewer.HotbarScrollingFrame = hotbarScrollingFrame
                
                local hotbarListLayout = Instance.new("UIListLayout")
                hotbarListLayout.Padding = UDim.new(0, 10) 
                hotbarListLayout.FillDirection = Enum.FillDirection.Horizontal
                hotbarListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
                hotbarListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                hotbarListLayout.Parent = hotbarScrollingFrame
                
                
                local paddingEquip = Instance.new("UIPadding")
                paddingEquip.PaddingTop = UDim.new(0, -3) 
                paddingEquip.Parent = hotbarScrollingFrame
                
                
                local armorScrollingFrame = Instance.new("ScrollingFrame")
                armorScrollingFrame.Size = UDim2.new(1, -10, 1, -5)
                armorScrollingFrame.Position = UDim2.new(0, 5, 0, 0) 
                armorScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
                armorScrollingFrame.ScrollBarThickness = 0
                armorScrollingFrame.BackgroundTransparency = 1
                armorScrollingFrame.Parent = inventoryViewArmor
                InventoryViewer.ArmorScrollingFrame = armorScrollingFrame
                
                local armorListLayout = Instance.new("UIListLayout")
                armorListLayout.Padding = UDim.new(0, 10) 
                armorListLayout.FillDirection = Enum.FillDirection.Horizontal
                armorListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
                armorListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                armorListLayout.Parent = armorScrollingFrame
                
                
                local paddingArmor = Instance.new("UIPadding")
                paddingArmor.PaddingTop = UDim.new(0, -3) 
                paddingArmor.Parent = armorScrollingFrame
            end
            InventoryViewer.ScreenGui.Enabled = true
            InventoryViewer.GUIEnabled = true
            
            if not InventoryViewer.UpdateConnection then
                InventoryViewer.UpdateConnection = RunService.RenderStepped:Connect(function()
                    if InventoryViewer.Enabled then
                        if InventoryViewer.GUIEnabled then
                            InventoryViewer.updateGUI()
                        end
                    else
                        if InventoryViewer.UpdateConnection then
                            InventoryViewer.UpdateConnection:Disconnect()
                            InventoryViewer.UpdateConnection = nil
                        end
                    end
                end)
            end
            
            setupInventoryViewerRespawnHandler()
        else
            
            if InventoryViewer.ScreenGui then
                InventoryViewer.ScreenGui.Enabled = false
            end
            
            InventoryViewer.GUIEnabled = false
            
            if InventoryViewer.UpdateConnection then
                InventoryViewer.UpdateConnection:Disconnect()
                InventoryViewer.UpdateConnection = nil
            end
        end
    end
}, "EnableInventoryViewer")

InventoryViewer.isPlayerInFOV = function(player)
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end

    local screenPos, onScreen = workspace.CurrentCamera:WorldToScreenPoint(hrp.Position)
    if not onScreen then return false end

    local center = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    local distance = (center - Vector2.new(screenPos.X, screenPos.Y)).Magnitude

    if SilentAim and SilentAim.CircleRadius then
        return distance <= SilentAim.CircleRadius
    else
        return false 
    end
end

InventoryViewer.scanForItems = function(player)
    local result = {
        clothing = {},
        equipment = {},
        inventory = {}
    }

    local folder = game:GetService("ReplicatedStorage"):FindFirstChild("Players")
    if not folder then return result end

    local playerFolder = folder:FindFirstChild(player.Name)
    if not playerFolder then return result end

    
    local function safeAccess(obj, propName)
        if not obj then return nil end
        local success, result = pcall(function() return obj[propName] end)
        return success and result or nil
    end

    for category, list in pairs(result) do
        local subfolder = playerFolder:FindFirstChild(category:sub(1, 1):upper() .. category:sub(2))
        if subfolder then
            for _, item in ipairs(subfolder:GetChildren()) do
                if item:IsA("StringValue") then
                    table.insert(list, item)
                end
            end
        end
    end

    return result
end

InventoryViewer.getItemIcon = function(item)
    local props = item:FindFirstChild("ItemProperties")
    local icon = props and props:FindFirstChild("ItemIcon")
    return (icon and icon:IsA("ImageLabel")) and icon.Image or nil
end

InventoryViewer.clearGUI = function()
    
    if InventoryViewer.ScrollingFrame then
        for _, child in ipairs(InventoryViewer.ScrollingFrame:GetChildren()) do
            if not child:IsA("UIListLayout") then
                child:Destroy()
            end
        end
    end
    
    if InventoryViewer.HotbarScrollingFrame then
        for _, child in ipairs(InventoryViewer.HotbarScrollingFrame:GetChildren()) do
            if not child:IsA("UIListLayout") then
                child:Destroy()
            end
        end
    end
    
    if InventoryViewer.ArmorScrollingFrame then
        for _, child in ipairs(InventoryViewer.ArmorScrollingFrame:GetChildren()) do
            if not child:IsA("UIListLayout") then
                child:Destroy()
            end
        end
    end
end

InventoryViewer.createItemIcon = function(itemName, image, parent)
    if not parent then return end
    
    local size = InventoryViewer.CompactMode and 40 or 50
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, size, 0, size)
    frame.BackgroundColor3 = InventoryViewer.Theme.SlotBg
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, InventoryViewer.CompactMode and 4 or 6)
    corner.Parent = frame
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = InventoryViewer.Theme.Border
    stroke.Thickness = 1
    stroke.Transparency = 0.3
    stroke.Parent = frame
    
    local innerShadow = Instance.new("ImageLabel")
    innerShadow.Name = "InnerShadow"
    innerShadow.BackgroundTransparency = 1
    innerShadow.Position = UDim2.new(0, 0, 0, 0)
    innerShadow.Size = UDim2.new(1, 0, 1, 0)
    innerShadow.ZIndex = 2
    innerShadow.Image = "rbxassetid://5554236805"
    innerShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    innerShadow.ImageTransparency = 0.8
    innerShadow.ScaleType = Enum.ScaleType.Slice
    innerShadow.SliceCenter = Rect.new(23, 23, 277, 277)
    innerShadow.Parent = frame
    
    frame.Parent = parent
    
    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.new(0.8, 0, 0.8, 0)
    icon.Position = UDim2.new(0.1, 0, 0.1, 0)
    icon.BackgroundTransparency = 1
    icon.ZIndex = 3
    
    if image then
        icon.Image = image
    else
        icon.BackgroundColor = Color3.fromRGB(150, 150, 150)
        icon.BackgroundTransparency = 0.7
    end
    
    icon.Parent = frame
    
    local tooltip = Instance.new("Frame")
    tooltip.Size = UDim2.new(0, 120, 0, 25)
    tooltip.Position = UDim2.new(0.5, -60, 0, -30)
    tooltip.BackgroundColor3 = InventoryViewer.Theme.Background
    tooltip.BackgroundTransparency = 0.3
    tooltip.Visible = false
    tooltip.ZIndex = 10
    tooltip.Parent = frame
    
    local tooltipCorner = Instance.new("UICorner")
    tooltipCorner.CornerRadius = UDim.new(0, 4)
    tooltipCorner.Parent = tooltip
    
    local tooltipStroke = Instance.new("UIStroke")
    tooltipStroke.Color = InventoryViewer.Theme.Border
    tooltipStroke.Thickness = 1
    tooltipStroke.Transparency = 0.3
    tooltipStroke.Parent = tooltip
    
    local tooltipText = Instance.new("TextLabel")
    tooltipText.Text = itemName
    tooltipText.Size = UDim2.new(1, -10, 1, 0)
    tooltipText.Position = UDim2.new(0, 5, 0, 0)
    tooltipText.BackgroundTransparency = 1
    tooltipText.TextColor3 = InventoryViewer.Theme.Text
    tooltipText.TextSize = 11
    tooltipText.Font = Enum.Font.GothamBold
    tooltipText.TextWrapped = true
    tooltipText.ZIndex = 11
    tooltipText.Parent = tooltip

    frame.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(frame, TweenInfo.new(0.2), {BackgroundColor3 = InventoryViewer.Theme.ItemHover}).Play()
        game:GetService("TweenService"):Create(stroke, TweenInfo.new(0.2), {Thickness = 2}).Play()
        tooltip.Visible = true
    end)
    
    frame.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(frame, TweenInfo.new(0.2), {BackgroundColor3 = InventoryViewer.Theme.SlotBg}).Play()
        game:GetService("TweenService"):Create(stroke, TweenInfo.new(0.2), {Thickness = 1.5}).Play()
        tooltip.Visible = false
    end)
    
    return frame
end

InventoryViewer.updateGUI = function()
    InventoryViewer.clearGUI()

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and InventoryViewer.isPlayerInFOV(player) then
            local items = InventoryViewer.scanForItems(player)
            local hasItems = #items.clothing > 0 or #items.equipment > 0 or #items.inventory > 0

            if hasItems then
                
                local maxItemsPerRow = math.floor((InventoryViewer.ArmorScrollingFrame.AbsoluteSize.X - 20) / 55) 
                
                
                for i, item in ipairs(items.clothing) do
                    local icon = InventoryViewer.createItemIcon(item.Name, InventoryViewer.getItemIcon(item), InventoryViewer.ArmorScrollingFrame)
                end
                
                
                for i, item in ipairs(items.equipment) do
                    local icon = InventoryViewer.createItemIcon(item.Name, InventoryViewer.getItemIcon(item), InventoryViewer.HotbarScrollingFrame)
                end
                
                
                for i, item in ipairs(items.inventory) do
                    local icon = InventoryViewer.createItemIcon(item.Name, InventoryViewer.getItemIcon(item), InventoryViewer.ScrollingFrame)
                end
                
                
                if InventoryViewer.ScrollingFrame then
                    local itemCount = #items.inventory
                    local contentWidth = math.min(itemCount * 55, maxItemsPerRow * 55)  
                    InventoryViewer.ScrollingFrame.CanvasSize = UDim2.new(0, contentWidth + 20, 0, 0) 
                end
                
                if InventoryViewer.HotbarScrollingFrame then
                    local itemCount = #items.equipment
                    local contentWidth = math.min(itemCount * 55, maxItemsPerRow * 55)
                    InventoryViewer.HotbarScrollingFrame.CanvasSize = UDim2.new(0, contentWidth + 20, 0, 0) 
                end
                
                if InventoryViewer.ArmorScrollingFrame then
                    local itemCount = #items.clothing
                    local contentWidth = math.min(itemCount * 55, maxItemsPerRow * 55)
                    InventoryViewer.ArmorScrollingFrame.CanvasSize = UDim2.new(0, contentWidth + 20, 0, 0) 
                end
            end
        end
    end
end


local bulletTracerSection = tabs.Player:Section({ Side = "Right", Name = "Bullet Tracers" })

bulletTracerSection:Header({
    Text = "Bullet Tracers"
})

bulletTracerSection:Toggle({
    Name = "Enable Bullet Tracers",
    Default = false,
    Callback = function(value)
        _G.ScriptData = _G.ScriptData or {
        activeBulletTracers = {},
            bulletTracerEnabled = false,
        bulletTracerLifetime = 1,
        bulletTracerWidth = 0.2,
        bulletTracerFadeoutPoint = 0.7,
        bulletTracerColor = Color3.fromRGB(255, 255, 255),
        bulletTracerSpeed = 5,
        bulletTracerTexture = "http://www.roblox.com/asset/?id=446111271",
        bulletTracerMaxDistance = 1300
    }
        
        _G.ScriptData.bulletTracerEnabled = value
    
        if not value then
            if _G.ScriptData.activeBulletTracers then
                for _, tracer in pairs(_G.ScriptData.activeBulletTracers) do
                    if tracer and tracer.part then
                        pcall(function() tracer.part:Destroy() end)
                    end
                end
                _G.ScriptData.activeBulletTracers = {}
            end
        end
    end
}, "EnableBulletTracers")

bulletTracerSection:Slider({
    Name = "Tracer Lifetime",
    Default = 1,
    Minimum = 0,
    Maximum = 5,
    Precision = 1,
    Callback = function(value)
        if not _G.ScriptData then return end
        _G.ScriptData.bulletTracerLifetime = value
    end
}, "TracerLifetime")

bulletTracerSection:Colorpicker({
    Name = "Tracer Color",
    Default = _G.ScriptData and _G.ScriptData.bulletTracerColor or Color3.fromRGB(255, 255, 255),
    Alpha = 0,
    Callback = function(color)
        if not _G.ScriptData then return end
        _G.ScriptData.bulletTracerColor = color
    end
}, "TracerColor")

local function hasWeaponEquipped()
    local camera = workspace.CurrentCamera
    if not camera then return false end
    
    local viewModel = camera:FindFirstChild("ViewModel")
    if not viewModel then return false end
    
    local item = viewModel:FindFirstChild("Item")
    if not item then return false end
    
    local hasGunPart = false
    for _, part in ipairs(item:GetDescendants()) do
        if part:IsA("BasePart") and (part.Name == "AimPart" or part.Name == "Gunmuzzle" or part.Name:match("Barrel")) then
            hasGunPart = true
            break
        end
    end
    
    return hasGunPart
end

local function createBulletTracer()
    if not _G.ScriptData or not _G.ScriptData.bulletTracerEnabled then return end
    if not hasWeaponEquipped() then return end
    
    local camera = workspace.CurrentCamera
    if not camera then return end

    local startPos = camera.CFrame.Position
    local viewModel = camera:FindFirstChild("ViewModel")
    local muzzle = nil
    local aimPart = nil

    if viewModel then
        local weapon = viewModel:FindFirstChild("Item")
        
        if weapon then
            for _, part in pairs(weapon:GetDescendants()) do
                if part:IsA("BasePart") then
                    if part.Name == "Gunmuzzle" then
                        muzzle = part
                    elseif part.Name == "AimPart" then
                        aimPart = part
                    end
                end
            end
        end
    end
        
    if muzzle then
        startPos = muzzle.Position
    elseif aimPart then
        startPos = aimPart.Position
    end
    
    local direction = camera.CFrame.LookVector
    local endPos = nil
    
    if aimbool and aimtarget and aimtargetpart and isvisible(aimtarget:IsA("Model") and aimtarget or aimtarget.Character, aimtargetpart) then
        local targetPos = aimtargetpart.Position
        if aimtype == "Prediction" and globalammo then
            local bulletSpeed = globalammo:GetAttribute("MuzzleVelocity")
            local bulletDrop = globalammo:GetAttribute("ProjectileDrop")
            if bulletSpeed and bulletDrop then
                targetPos = predictpos(aimtargetpart, bulletSpeed, bulletDrop)
            end
        end
        
        direction = (targetPos - startPos).Unit
        endPos = targetPos
    else
        endPos = startPos + direction * (_G.ScriptData.bulletTracerMaxDistance or 1300)
        
        local ray = Ray.new(startPos, direction * (_G.ScriptData.bulletTracerMaxDistance or 1300))
        local ignoreList = {Players.LocalPlayer.Character, camera, viewModel}
        local hit, hitPos = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
        
        if hit then
            endPos = hitPos
        end
    end
    
    local beamPart = Instance.new("Part")
    beamPart.Name = "BulletTracer"
    beamPart.Size = Vector3.new(_G.ScriptData.bulletTracerWidth or 0.2, 0.1, 0.1)
    beamPart.Transparency = 1
    beamPart.CanCollide = false
    beamPart.Anchored = true
    beamPart.CFrame = CFrame.new(startPos)
    beamPart.Parent = workspace
    local startAttachment = Instance.new("Attachment", beamPart)
    startAttachment.WorldPosition = startPos
    local endAttachment = Instance.new("Attachment", beamPart)
    endAttachment.WorldPosition = endPos
    local beam = Instance.new("Beam")
    beam.Attachment0 = startAttachment
    beam.Attachment1 = endAttachment
    beam.Texture = _G.ScriptData.bulletTracerTexture or "http://www.roblox.com/asset/?id=446111271"
    beam.TextureMode = Enum.TextureMode.Wrap
    beam.TextureLength = 1
    beam.TextureSpeed = _G.ScriptData.bulletTracerSpeed or 5
    beam.FaceCamera = true
    beam.Color = ColorSequence.new(_G.ScriptData.bulletTracerColor or Color3.fromRGB(255, 255, 255))
    beam.Width0 = _G.ScriptData.bulletTracerWidth or 0.2
    beam.Width1 = _G.ScriptData.bulletTracerWidth or 0.2
    beam.LightEmission = 1
    beam.Parent = beamPart
    local tracerLifetime = _G.ScriptData.bulletTracerLifetime or 1
    local startTime = tick()
    local beamRef = setmetatable({value = beam}, {__mode = "v"})
    local beamPartRef = setmetatable({value = beamPart}, {__mode = "v"})
    local maxTracers = 10
    if not _G.ScriptData.activeBulletTracers then
        _G.ScriptData.activeBulletTracers = {}
    end
    while #_G.ScriptData.activeBulletTracers >= maxTracers do
        local oldestTracer = table.remove(_G.ScriptData.activeBulletTracers, 1)
        if oldestTracer and oldestTracer.part then
            pcall(function() 
                if oldestTracer.part:IsDescendantOf(workspace) then
                    oldestTracer.part:Destroy()
                end
            end)
        end
    end

    table.insert(_G.ScriptData.activeBulletTracers, {
        part = beamPart,
        beam = beam,
        startTime = startTime
    })

    local bulletAnimation = RunService.RenderStepped:Connect(function()
        local currentTime = tick() - startTime
        local beam = beamRef and beamRef.value
        local beamPart = beamPartRef and beamPartRef.value
        
        if currentTime >= tracerLifetime or not beam or not beamPart or not beam.Parent or not beamPart:IsDescendantOf(workspace) then
            if bulletAnimation then
                pcall(function() bulletAnimation:Disconnect() end)
                bulletAnimation = nil
            end
        
            if beamPart and beamPart:IsDescendantOf(workspace) then
                if beam then
                    pcall(function() beam.Enabled = false end)
                end
                pcall(function() beamPart:Destroy() end)
            end
            return
        end
        
        local fadeStartTime = tracerLifetime * (_G.ScriptData.bulletTracerFadeoutPoint or 0.7)
        if currentTime > fadeStartTime then
            local fadeProgress = (currentTime - fadeStartTime) / (tracerLifetime - fadeStartTime)
            local transparencySequence = NumberSequence.new({
                NumberSequenceKeypoint.new(0, fadeProgress),
                NumberSequenceKeypoint.new(1, 1)
            })
            beam.Transparency = transparencySequence
            
            if fadeProgress > 0.9 then
                local widthScale = 1 - ((fadeProgress - 0.9) * 10)
                beam.Width0 = (_G.ScriptData.bulletTracerWidth or 0.2) * widthScale
                beam.Width1 = (_G.ScriptData.bulletTracerWidth or 0.2) * widthScale
            end
        end
    end)
end

local function clearAllBulletTracers()
    if not _G.ScriptData.activeBulletTracers then
        _G.ScriptData.activeBulletTracers = {}
        return
    end
    
    for _, tracer in pairs(_G.ScriptData.activeBulletTracers) do
        if tracer and tracer.part then
            pcall(function()
                if tracer.part:IsDescendantOf(workspace) then
                    tracer.part:Destroy()
                end
            end)
        end
    end

    _G.ScriptData.activeBulletTracers = {}
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.UserInputType == Enum.UserInputType.MouseButton1 and 
       _G.ScriptData and _G.ScriptData.bulletTracerEnabled and 
       hasWeaponEquipped() then
        task.spawn(createBulletTracer)
    end
end)

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        SilentAim.IsAiming = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        SilentAim.IsAiming = false
        
        if SilentAim.LockedPlayerGUI then
            SilentAim.LockedPlayerGUI.Enabled = false
        end
    end
end)

RunService.RenderStepped:Connect(function()
    if SilentAim.FOVCircle then
        SilentAim.FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
        SilentAim.FOVCircle.Radius = SilentAim.CircleRadius
        SilentAim.FOVCircle.Filled = SilentAim.CircleFilled
        SilentAim.FOVCircle.Color = SilentAim.CircleColor
        SilentAim.FOVCircle.Visible = SilentAim.CircleVisible and SilentAim.Enabled
        SilentAim.FOVCircle.Transparency = SilentAim.CircleTransparency
        SilentAim.FOVCircle.NumSides = SilentAim.CircleSides
        SilentAim.FOVCircle.Thickness = SilentAim.CircleThickness
        
        if InventoryViewer and InventoryViewer.Enabled then
            if InventoryViewer.GUIEnabled then
                InventoryViewer.updateGUI()
            end
        end
    end

    if SilentAim.Enabled and SilentAim.IsAiming then
        local closestPlayer = GetClosestPlayer()
        
        if closestPlayer then
            if SilentAim.TrackerEnabled then
                if not SilentAim.Tracker2D then
                    SilentAim.Tracker2D = Drawing.new("Line")
                    SilentAim.Tracker2D.Color = SilentAim.CircleColor
                    SilentAim.Tracker2D.Thickness = 1
                    SilentAim.Tracker2D.Transparency = 1
                    SilentAim.Tracker2D.Visible = true
                end
                
                local targetPart = closestPlayer.Character and closestPlayer.Character:FindFirstChild(SilentAim.AimPart)
                if targetPart then
                    local camera = Workspace.CurrentCamera
                    local targetScreenPos = camera:WorldToViewportPoint(targetPart.Position)
                    
                    if targetScreenPos.Z > 0 then
                        local mousePosition = UserInputService:GetMouseLocation()
                        SilentAim.Tracker2D.From = mousePosition
                        SilentAim.Tracker2D.To = Vector2.new(targetScreenPos.X, targetScreenPos.Y)
                        SilentAim.Tracker2D.Visible = true
                    else
                        SilentAim.Tracker2D.Visible = false
                    end
                end
            else
                if SilentAim.Tracker2D then
                    SilentAim.Tracker2D.Visible = false
        end
    end
    
            if SilentAim.ShowTargetName and SilentAim.UsernameLabel then
                SilentAim.UsernameLabel.Text = "Target: " .. closestPlayer.Name
                if SilentAim.LockedPlayerGUI then
                    SilentAim.LockedPlayerGUI.Enabled = true
                end
            end
        else
            if SilentAim.Tracker2D then
                SilentAim.Tracker2D.Visible = false
            end
            
            if SilentAim.LockedPlayerGUI then
                SilentAim.LockedPlayerGUI.Enabled = false
            end
        end
    else
        if SilentAim.Tracker2D then
            SilentAim.Tracker2D.Visible = false
        end
        
        if SilentAim.LockedPlayerGUI then
            SilentAim.LockedPlayerGUI.Enabled = false
        end
    end
end)

sections.WorldESP:Header({
    Text = "World ESP Settings"
})

sections.WorldESP:Toggle({
    Name = "Enable World ESP",
    Default = false,
    Callback = function(value)
        WorldESP.Enabled = value
        WorldESP.KeyESPEnabled = value  
        
        if value then
            if not WorldESP.RenderThreadActive then
                WorldESP.RenderThreadActive = true
                
                
                task.spawn(function()
                    local lastFullContainerScan = 0
                    
                    while WorldESP.RenderThreadActive do
                        if WorldESP.Enabled then
                            
                            if WorldESP.KeyESPEnabled then
                                scanForKeys()
                            end
                            
                            local currentTime = tick()
                            
                            if WorldESP.ContainerESPEnabled then
                                if currentTime - lastFullContainerScan > 15 then 
                                    scanForContainers()
                                    lastFullContainerScan = currentTime
                                end
                            end
                            
                            if WorldESP.DroppedItemsESPEnabled then
                                scanForDroppedItems()
                            end
                        end
                        
                        
                        wait(3)
                    end
                end)
                
                
                coroutine.wrap(function()
                    local camera = Workspace.CurrentCamera
                    
                    while WorldESP.RenderThreadActive do
                        local cameraPos = camera.CFrame.Position
                        local hasActiveESP = false
                        local maxVisibleItems = 30 
                        local visibleCount = 0
                        
                        
                        for instance, data in pairs(WorldESP.TrackedItems) do
                            
                            if not instance or not instance.Parent or 
                               (data.IsKey and not WorldESP.KeyESPEnabled) or 
                               (data.IsContainer and not WorldESP.ContainerESPEnabled) or
                               (data.IsDroppedItem and not data.IsKey and not WorldESP.DroppedItemsESPEnabled) then
                                if data.Drawing and data.Drawing.Visible then
                                    data.Drawing.Visible = false
                                end
                                continue
                            end
                            
                            if visibleCount >= maxVisibleItems then
                                if data.Drawing and data.Drawing.Visible then
                                    data.Drawing.Visible = false
                                end
                                continue
                            end
                            
                            hasActiveESP = true
                            
                            
                            if not data.Drawing then
                                data.Drawing = getDrawingFromPool()
                            end
                            
                            
                            local objectPos
                            local trackPart = data.TrackPart
                            
                            
                            if not trackPart or not trackPart.Parent then
                                local success, newTrackPart = pcall(function()
                                    return instance.PrimaryPart or 
                                          (instance:IsA("Model") and instance:FindFirstChildWhichIsA("BasePart", true)) or 
                                          (instance:IsA("BasePart") and instance) or nil
                                end)
                                
                                if success and newTrackPart then
                                    trackPart = newTrackPart
                                    data.TrackPart = trackPart
                                else
                                    if data.Drawing and data.Drawing.Visible then
                                        data.Drawing.Visible = false
                                    end
                                    continue
                                end
                            end

                            local success, pos = pcall(function()
                                return trackPart.Position
                            end)
                            if not success then
                                if data.Drawing and data.Drawing.Visible then
                                    data.Drawing.Visible = false
                                end
                                continue
                            end
                            objectPos = pos
                            data.CachedPosition = objectPos
                            data.LastUpdateTime = tick()
                            local distance = (cameraPos - objectPos).Magnitude
                            
                            if distance > WorldESP.MaxDistance then
                                if data.Drawing and data.Drawing.Visible then
                                    data.Drawing.Visible = false
                                end
                                continue
                            end

                            local screenPoint, isOnScreen = nil, false
                            
                            success, screenPoint = pcall(function()
                                local point = camera:WorldToViewportPoint(objectPos)
                                return point
                            end)
                            
                            if success then
                                
                                isOnScreen = screenPoint.Z > 0 and 
                                             screenPoint.X > 0 and screenPoint.X < camera.ViewportSize.X and
                                             screenPoint.Y > 0 and screenPoint.Y < camera.ViewportSize.Y
                            end

                            if not success or not isOnScreen then
                                if data.Drawing and data.Drawing.Visible then
                                    data.Drawing.Visible = false
                                end
                                continue
                            end
                            
                            data.Drawing.Size = WorldESP.TextSize
                            data.Drawing.Color = WorldESP.TextColor  
                            data.Drawing.Transparency = WorldESP.TextTransparency
                            local xPos = math.clamp(screenPoint.X, 5, camera.ViewportSize.X - 5)
                            local yPos = math.clamp(screenPoint.Y - 25, 5, camera.ViewportSize.Y - 5)
                            data.Drawing.Position = Vector2.new(xPos, yPos)
                            local displayText = data.DisplayName
                            displayText = displayText:gsub("?", "")
                            displayText = displayText:gsub("[^%a%d%s_%-:%.%[%]]", "")
                            if displayText:match("^%s*$") or displayText == ":" then
                                if data.IsContainer then
                                    displayText = "Container"
                                elseif data.IsKey then
                                    displayText = "Key"
                                elseif data.IsDroppedItem then
                                    displayText = "Item"
                                else
                                    displayText = "Object"
                                end
                            end
                            if data.IsHiddenCache then
                                
                                data.Drawing.Text = displayText .. " [" .. math.floor(distance) .. "m]"
                            else
                                data.Drawing.Text = displayText .. " [" .. math.floor(distance) .. "m]"
                            end
                            
                            data.Drawing.Visible = true
                            
                            visibleCount = visibleCount + 1
                        end
                        local currentTime = tick()
                        if currentTime - WorldESP.LastCleanup > 5 then
                            local invalidItems = {}
                            
                            for instance, data in pairs(WorldESP.TrackedItems) do
                                if not instance or not instance.Parent then
                                    if data.Drawing then
                                        returnDrawingToPool(data.Drawing)
                                    end
                                    table.insert(invalidItems, instance)
                                end
                            end
                            
                            for _, instance in ipairs(invalidItems) do
                                WorldESP.TrackedItems[instance] = nil
                            end
                            
                            WorldESP.LastCleanup = currentTime
                        end

                        if hasActiveESP then
                            RunService.RenderStepped:Wait()
                        else
                        wait(0.1)
                        end
                    end
                end)()
            end
        else
            
            WorldESP.RenderThreadActive = false

            for _, data in pairs(WorldESP.TrackedItems) do
                if data.Drawing then
                    returnDrawingToPool(data.Drawing)
                    data.Drawing = nil
                                end
                            end
            
            
            WorldESP.TrackedItems = {}
        end
    end
}, "EnableWorldESP")

sections.WorldESP:Toggle({
    Name = "Container ESP",
    Default = false,
    Callback = function(value)
        WorldESP.ContainerESPEnabled = value
        if WorldESP.Enabled and WorldESP.ContainerESPEnabled then
            scanForContainers()
        end
        if not value then
            for _, data in pairs(WorldESP.TrackedItems) do
                if data.IsContainer and data.Drawing then
                    data.Drawing.Visible = false
                end
            end
        end
    end
}, "ContainerESP")
sections.WorldESP:Toggle({
    Name = "Dropped Items ESP",
    Default = false,
    Callback = function(value)
        WorldESP.DroppedItemsESPEnabled = value
        if WorldESP.Enabled and WorldESP.DroppedItemsESPEnabled then
            scanForDroppedItems()
        end
        if not value then
            for _, data in pairs(WorldESP.TrackedItems) do
                if data.IsDroppedItem and data.Drawing then
                    data.Drawing.Visible = false
                end
            end
        end
    end
}, "DroppedItemsESP")

sections.WorldESP:Slider({
    Name = "Max Distance",
    Default = 500,
    Minimum = 100,
    Maximum = 2000,
    Precision = 2,
    Callback = function(value)
        WorldESP.MaxDistance = value
    end
}, "WorldESPMaxDistance")

sections.WorldESP:Slider({
    Name = "Text Size",
    Default = 14,
    Minimum = 8,
    Maximum = 24,
    Precision = 2,
    Callback = function(value)
        WorldESP.TextSize = value
        for _, data in pairs(WorldESP.TrackedItems) do
            if data.Drawing then
                data.Drawing.Size = value
            end
        end
        for _, drawing in ipairs(WorldESP.DrawingPool) do
            drawing.Size = value
        end
    end
}, "WorldESPTextSize")

sections.WorldESP:Colorpicker({
    Name = "Text Color",
    Default = WorldESP.TextColor,
    Alpha = 0,
    Callback = function(color)
        WorldESP.TextColor = color
        
        
        for _, data in pairs(WorldESP.TrackedItems) do
            if data.Drawing then
                data.Drawing.Color = WorldESP.TextColor
            end
        end
        for _, drawing in ipairs(WorldESP.DrawingPool) do
            drawing.Color = WorldESP.TextColor
        end
    end
}, "WorldESPTextColor")

sections.WorldESP:Slider({
    Name = "Text Transparency",
    Default = 0.3, 
    Minimum = 0,
    Maximum = 0.9,
    Precision = 2,
    Callback = function(value)
        WorldESP.TextTransparency = value
        for _, data in pairs(WorldESP.TrackedItems) do
            if data.Drawing then
                data.Drawing.Transparency = value
            end
        end
        for _, drawing in ipairs(WorldESP.DrawingPool) do
            drawing.Transparency = value
        end
    end
}, "WorldESPTextTransparency")
sections.WorldVisual:Header({
    Text = "Lighting Settings"
})
sections.WorldVisual:Toggle({
    Name = "Full Bright",
    Default = false,
    Callback = function(value)
        if value then
            _G.OriginalLightingSettings = {
                Brightness = Lighting.Brightness,
                Ambient = Lighting.Ambient,
                OutdoorAmbient = Lighting.OutdoorAmbient,
                GlobalShadows = Lighting.GlobalShadows
            }
            Lighting.Brightness = 2
            Lighting.GlobalShadows = false
            Lighting.Ambient = Color3.fromRGB(199, 199, 199)
            Lighting.OutdoorAmbient = Color3.fromRGB(199, 199, 199)
        else
            if _G.OriginalLightingSettings then
                Lighting.Brightness = _G.OriginalLightingSettings.Brightness
                Lighting.Ambient = _G.OriginalLightingSettings.Ambient
                Lighting.OutdoorAmbient = _G.OriginalLightingSettings.OutdoorAmbient
                Lighting.GlobalShadows = _G.OriginalLightingSettings.GlobalShadows
                _G.OriginalLightingSettings = nil
            end
        end
    end
}, "FullBright")
sections.WorldVisual:Toggle({
    Name = "X-Ray",
    Default = false,
    Callback = function(value)
        if value then
            _G.XRayOriginalProperties = {}
            for _, obj in pairs(Workspace:GetDescendants()) do
                if obj:IsA("BasePart") and not obj:IsA("Terrain") then
                    _G.XRayOriginalProperties[obj] = {
                        Transparency = obj.Transparency,
                        Material = obj.Material,
                        Color = obj.Color
                    }
                    obj.Transparency = 0.75
                    obj.Material = Enum.Material.SmoothPlastic
                end
            end
            _G.XRayConnection = Workspace.DescendantAdded:Connect(function(obj)
                if obj:IsA("BasePart") and not obj:IsA("Terrain") then
                    _G.XRayOriginalProperties[obj] = {
                        Transparency = obj.Transparency,
                        Material = obj.Material,
                        Color = obj.Color
                    }
                    obj.Transparency = 0.75
                    obj.Material = Enum.Material.SmoothPlastic
                end
            end)
        else
            if _G.XRayOriginalProperties then
                for obj, props in pairs(_G.XRayOriginalProperties) do
                    if obj and obj:IsA("BasePart") then
                        for prop, value in pairs(props) do
                            pcall(function() obj[prop] = value end)
                            end
                        end
                    end
                _G.XRayOriginalProperties = nil
            end
            if _G.XRayConnection then
                _G.XRayConnection:Disconnect()
                _G.XRayConnection = nil
            end
        end
    end
}, "XRay")
sections.WorldVisual:Header({
    Text = "Map Settings"
})
sections.WorldVisual:Toggle({
    Name = "Hide Leaves",
    Default = false,
    Callback = function(value)
        if value then
            local folcheck = workspace:FindFirstChild("SpawnerZones")
            if not folcheck then return end
            for _, v in pairs(folcheck.Foliage:GetDescendants()) do
                if v:FindFirstChildOfClass("SurfaceAppearance") then
                    if not _G.OriginalLeavesTransparency then
                        _G.OriginalLeavesTransparency = {}
                    end
                    if not _G.OriginalLeavesTransparency[v] then
                        _G.OriginalLeavesTransparency[v] = v.Transparency
                    end
                    v.Transparency = 1
                end
            end
            if _G.LeavesAddedConnection then
                _G.LeavesAddedConnection:Disconnect()
            end
            _G.LeavesAddedConnection = folcheck.Foliage.DescendantAdded:Connect(function(v)
                if v:FindFirstChildOfClass("SurfaceAppearance") then
                    if not _G.OriginalLeavesTransparency then
                        _G.OriginalLeavesTransparency = {}
                    end
                    if not _G.OriginalLeavesTransparency[v] then
                        _G.OriginalLeavesTransparency[v] = v.Transparency
                    end
                    v.Transparency = 1
                end
            end)
        else
            if _G.OriginalLeavesTransparency then
                for obj, transparency in pairs(_G.OriginalLeavesTransparency) do
                    pcall(function()
                        if obj then
                            obj.Transparency = transparency
                        end
                    end)
                end
                
                _G.OriginalLeavesTransparency = nil
            end
            
            if _G.LeavesAddedConnection then
                _G.LeavesAddedConnection:Disconnect()
                _G.LeavesAddedConnection = nil
            end
        end
    end
}, "HideLeaves")

sections.WorldVisual:Toggle({
    Name = "Hide Grass",
    Default = false,
    Callback = function(value)
        if Workspace and Workspace:FindFirstChild("Terrain") then
            sethiddenproperty(Workspace.Terrain, "Decoration", not value)
        end
    end
}, "DisableGrass")

task.spawn(function()
    while wait(10.5) do
        table.clear(aimignoreparts)
        for i,v in pairs(workspace:GetDescendants()) do
            if v:GetAttribute("PassThrough") then
                table.insert(aimignoreparts, v)
            elseif allvars.worldnomines and v.Name == "PMN2" and v:IsA("Model") then
                v:Destroy()
            end
        end
    end
end)
sections.WorldVisual:Toggle({
    Name = "No Mines",
    Default = false,
    Callback = function(value)
        allvars.worldnomines = value
    end
}, "NoMines")


sections.WorldVisual:Header({
    Text = "Fog Settings"
})


_G.FogSettings = {
    originalAtmosphereDensity = nil,
    originalFogEnd = nil,
    originalFogStart = nil,
    removeFogEnabled = false
}

sections.WorldVisual:Toggle({
    Name = "Remove Fog",
    Default = false,
    Callback = function(value)
        _G.FogSettings.removeFogEnabled = value
        
        if value then
            
            if Lighting:FindFirstChild("Atmosphere") and _G.FogSettings.originalAtmosphereDensity == nil then
                _G.FogSettings.originalAtmosphereDensity = Lighting.Atmosphere.Density
            end
            
            if _G.FogSettings.originalFogEnd == nil then
                _G.FogSettings.originalFogEnd = Lighting.FogEnd
            end
            
            if _G.FogSettings.originalFogStart == nil then
                _G.FogSettings.originalFogStart = Lighting.FogStart
            end
            
            
            if not _G.FogRemovalConnection then
                _G.FogRemovalConnection = RunService.Heartbeat:Connect(function()
                    if _G.FogSettings.removeFogEnabled then
                        if Lighting:FindFirstChild("Atmosphere") then
                            Lighting.Atmosphere.Density = 0
                        end
                        Lighting.FogEnd = 100000
                        Lighting.FogStart = 0
                    end
                end)
            end
        else
            
            if _G.FogRemovalConnection then
                _G.FogRemovalConnection:Disconnect()
                _G.FogRemovalConnection = nil
            end
            
            
            if Lighting:FindFirstChild("Atmosphere") and _G.FogSettings.originalAtmosphereDensity then
                Lighting.Atmosphere.Density = _G.FogSettings.originalAtmosphereDensity
            end
            
            if _G.FogSettings.originalFogEnd then
                Lighting.FogEnd = _G.FogSettings.originalFogEnd
            end
            
            if _G.FogSettings.originalFogStart then
                Lighting.FogStart = _G.FogSettings.originalFogStart
            end
        end
    end
}, "RemoveFog")

local function SafeCloudAccess()
    local terrain = workspace:FindFirstChildOfClass("Terrain")
    if not terrain then return nil end
    
    local clouds = nil
    local success = pcall(function() 
        clouds = terrain.Clouds 
    end)
    
    if not success or not clouds then return nil end
    
    return {
        getEnabled = function() 
            local enabled = false
            pcall(function() enabled = clouds.Enabled end)
            return enabled
        end,
        setEnabled = function(value) 
            pcall(function() clouds.Enabled = value end)
        end,
        getColor = function() 
            local color = Color3.fromRGB(255, 255, 255)
            pcall(function() color = clouds.Color end)
            return color
        end,
        setColor = function(value) 
            pcall(function() clouds.Color = value end)
        end,
        getCover = function() 
            local cover = 0.5
            pcall(function() cover = clouds.Cover end)
            return cover
        end,
        setCover = function(value) 
            pcall(function() clouds.Cover = value end)
        end,
        getDensity = function() 
            local density = 0.5
            pcall(function() density = clouds.Density end)
            return density
        end,
        setDensity = function(value) 
            pcall(function() clouds.Density = value end)
        end
    }
end

local cloudSection = tabs.World:Section({ Side = "Right", Name = "Cloud Settings" })

cloudSection:Header({
    Text = "Cloud Controls"
})

cloudSection:Toggle({
    Name = "Toggle Clouds",
    Default = true,
    Callback = function(value)
        if not _G.CloudSettings then
            _G.CloudSettings = {
                Enabled = true,
                Color = Color3.fromRGB(255, 255, 255),
                Cover = 0.5,
                Density = 0.5,
                OriginalColor = nil,
                OriginalCover = nil,
                OriginalDensity = nil,
                OverrideActive = false
            }
        end
        
        _G.CloudSettings.Enabled = value
        
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        
        
        local cloudExists = false
        pcall(function() cloudExists = terrain.Clouds ~= nil end)
        
        if not cloudExists then
            return
        end
        
        if not _G.CloudSettings.OriginalCover then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                _G.CloudSettings.OriginalColor = cloudAccess.getColor()
                _G.CloudSettings.OriginalCover = cloudAccess.getCover()
                _G.CloudSettings.OriginalDensity = cloudAccess.getDensity()
            end
        end
        
        if _G.CloudsUpdateConnection then
            _G.CloudsUpdateConnection:Disconnect()
            _G.CloudsUpdateConnection = nil
        end
        
        if value then
            _G.CloudSettings.OverrideActive = true
            _G.CloudsUpdateConnection = RunService.Heartbeat:Connect(function()
                if _G.CloudSettings.OverrideActive then
                    
                    local cloudAccess = SafeCloudAccess()
                    if not cloudAccess then return end
                    
                    cloudAccess.setEnabled(true)
                    cloudAccess.setColor(_G.CloudSettings.Color)
                    cloudAccess.setCover(_G.CloudSettings.Cover)
                    cloudAccess.setDensity(_G.CloudSettings.Density)
                end
            end)
        else
            _G.CloudSettings.OverrideActive = false
            
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                cloudAccess.setEnabled(false)
            end
        end
    end
}, "ToggleClouds")

cloudSection:Colorpicker({
    Name = "Cloud Color",
    Default = Color3.fromRGB(255, 255, 255),
    Alpha = 0,
    Callback = function(color)
        if not _G.CloudSettings then
            _G.CloudSettings = {
                Enabled = true,
                Color = Color3.fromRGB(255, 255, 255),
                Cover = 0.5,
                Density = 0.5,
                OriginalColor = nil,
                OriginalCover = nil,
                OriginalDensity = nil,
                OverrideActive = false
            }
        end
        
        _G.CloudSettings.Color = color
        
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        
        
        local cloudExists = false
        pcall(function() cloudExists = terrain.Clouds ~= nil end)
        
        if not cloudExists then
            return
        end
        
        if not _G.CloudSettings.OriginalCover then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                _G.CloudSettings.OriginalColor = cloudAccess.getColor()
                _G.CloudSettings.OriginalCover = cloudAccess.getCover()
                _G.CloudSettings.OriginalDensity = cloudAccess.getDensity()
            end
        end
        
        if _G.CloudSettings.OverrideActive then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                cloudAccess.setColor(color)
            end
        end
    end
}, "CloudColor")

cloudSection:Slider({
    Name = "Cloud Cover",
    Default = 0.5,
    Minimum = 0,
    Maximum = 1,
    Precision = 2,
    Callback = function(value)
        if not _G.CloudSettings then
            _G.CloudSettings = {
                Enabled = true,
                Color = Color3.fromRGB(255, 255, 255),
                Cover = 0.5,
                Density = 0.5,
                OriginalColor = nil,
                OriginalCover = nil,
                OriginalDensity = nil,
                OverrideActive = false
            }
        end
        
        _G.CloudSettings.Cover = value
        
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        
        
        local cloudExists = false
        pcall(function() cloudExists = terrain.Clouds ~= nil end)
        
        if not cloudExists then
            return
        end
        
        if not _G.CloudSettings.OriginalCover then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                _G.CloudSettings.OriginalColor = cloudAccess.getColor()
                _G.CloudSettings.OriginalCover = cloudAccess.getCover()
                _G.CloudSettings.OriginalDensity = cloudAccess.getDensity()
            end
        end
        
        if _G.CloudSettings.OverrideActive then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                cloudAccess.setCover(value)
            end
        end
    end
}, "CloudCover")

cloudSection:Slider({
    Name = "Cloud Density",
    Default = 0.5,
    Minimum = 0,
    Maximum = 1,
    Precision = 2,
    Callback = function(value)
        if not _G.CloudSettings then
            _G.CloudSettings = {
                Enabled = true,
                Color = Color3.fromRGB(255, 255, 255),
                Cover = 0.5,
                Density = 0.5,
                OriginalColor = nil,
                OriginalCover = nil,
                OriginalDensity = nil,
                OverrideActive = false
            }
        end
        
        _G.CloudSettings.Density = value
        
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        
        
        local cloudExists = false
        pcall(function() cloudExists = terrain.Clouds ~= nil end)
        
        if not cloudExists then
            return
        end
        
        if not _G.CloudSettings.OriginalCover then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                _G.CloudSettings.OriginalColor = cloudAccess.getColor()
                _G.CloudSettings.OriginalCover = cloudAccess.getCover()
                _G.CloudSettings.OriginalDensity = cloudAccess.getDensity()
            end
        end
        
        if _G.CloudSettings.OverrideActive then
            local cloudAccess = SafeCloudAccess()
            if cloudAccess then
                cloudAccess.setDensity(value)
            end
        end
    end
}, "CloudDensity")

cloudSection:Button({
    Name = "Reset Cloud Settings",
    Callback = function()
        if _G.CloudSettings then

            _G.CloudSettings.OverrideActive = false
            
            if _G.CloudsUpdateConnection then
                _G.CloudsUpdateConnection:Disconnect()
                _G.CloudsUpdateConnection = nil
            end

            local terrain = Workspace:FindFirstChildOfClass("Terrain")
            if terrain and _G.CloudSettings.OriginalCover then
                
                local cloudExists = false
                pcall(function() cloudExists = terrain.Clouds ~= nil end)
                
                if not cloudExists then
                    return
                end

                local cloudAccess = SafeCloudAccess()
                if cloudAccess then
                    cloudAccess.setColor(_G.CloudSettings.OriginalColor)
                    cloudAccess.setCover(_G.CloudSettings.OriginalCover)
                    cloudAccess.setDensity(_G.CloudSettings.OriginalDensity)
                    cloudAccess.setEnabled(true)
                end
            end
            
            if _G.CloudSettings.OriginalCover then
                cloudSection:get_element("ToggleClouds"):set_value(true)
                cloudSection:get_element("CloudColor"):set_value(_G.CloudSettings.OriginalColor)
                cloudSection:get_element("CloudCover"):set_value(_G.CloudSettings.OriginalCover)
                cloudSection:get_element("CloudDensity"):set_value(_G.CloudSettings.OriginalDensity)
            end
            _G.CloudSettings = nil
        end
    end
})

local timeSection = tabs.World:Section({ Side = "Right", Name = "Time Settings" })

timeSection:Header({
    Text = "Time Changer"
})

timeSection:Toggle({
    Name = "Custom Time",
    Default = false,
    Callback = function(value)
        _G.TimeChangerEnabled = value
        
        if value then
            _G.OriginalTimeSettings = {
                ClockTime = Lighting.ClockTime,
                GeographicLatitude = Lighting.GeographicLatitude
            }
            
            
            if _G.ServerTimeUpdateConnection then
                _G.ServerTimeUpdateConnection:Disconnect()
                _G.ServerTimeUpdateConnection = nil
            end
            
            
            if not _G.TimeChangerConnection then
                _G.TimeChangerConnection = RunService.Heartbeat:Connect(function()
                    if _G.TimeChangerEnabled then
                        Lighting.ClockTime = _G.CustomTime or 12
                    end
                end)
            end
        else
            
            if _G.TimeChangerConnection then
                _G.TimeChangerConnection:Disconnect()
                _G.TimeChangerConnection = nil
            end
            
            
            if _G.OriginalTimeSettings then
                Lighting.ClockTime = _G.OriginalTimeSettings.ClockTime
                Lighting.GeographicLatitude = _G.OriginalTimeSettings.GeographicLatitude
                _G.OriginalTimeSettings = nil
            end
            
            
            _G.ServerTimeUpdateConnection = RunService.Heartbeat:Connect(function()
                task.wait(0.5)
                if _G.ServerTimeUpdateConnection then
                    _G.ServerTimeUpdateConnection:Disconnect()
                    _G.ServerTimeUpdateConnection = nil
                end
            end)
        end
    end
}, "CustomTime")

timeSection:Slider({
    Name = "Time of Day",
    Default = 12,
    Minimum = 0,
    Maximum = 24,
    Precision = 1,
    Callback = function(value)
        _G.CustomTime = value
        
        if _G.TimeChangerEnabled then
            Lighting.ClockTime = value
        end
    end
}, "TimeOfDay")

local Functions = {}

    function Functions:Create(Class, Properties)
        local _Instance = typeof(Class) == 'string' and Instance.new(Class) or Class
        for Property, Value in pairs(Properties) do
            _Instance[Property] = Value
        end
    return _Instance
    end
    
    function Functions:FadeOutOnDist(element, distance)
        local transparency = math.max(0.1, 1 - (distance / ESP.MaxDistance))
        if element:IsA("TextLabel") then
            element.TextTransparency = 1 - transparency
        elseif element:IsA("ImageLabel") then
            element.ImageTransparency = 1 - transparency
        elseif element:IsA("UIStroke") then
            element.Transparency = 1 - transparency
        elseif element:IsA("Frame") and (element.Name == "Healthbar" or element.Name == "BehindHealthbar") then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Frame") then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Highlight") then
            element.FillTransparency = 1 - transparency
            element.OutlineTransparency = 1 - transparency
    end
end

    function Functions:SilentAim()
        if Functions:TargetPlayer() and Configurations.Aimbot.Enabled then
            if Configurations.Aimbot['Aim Type'] == "Silent" and Configurations.Aimbot.Enabled and Functions:TargetPlayer() and SilentAim.Holding and tick() - autoshootdelay >= 0.30 then 
                local Origin = Camera.CFrame.p
                local Distination = Functions:TargetPlayer().Position
                local Velocity = Functions:TargetPlayer().Velocity
                local vm = game.FindFirstChildOfClass(Camera, "Model") or nil
                local aimpart = vm and game.FindFirstChild(vm, "AimPart") or nil

                autoshootdelay = tick()
                local rnd = math.random(-10000, 10000)
                
                
                ProjectileInflict:FireServer(
                    Functions:TargetPlayer(),
                    Functions:TargetPlayer().CFrame:ToObjectSpace(CFrame.new(Distination + Vector3.yAxis * 0.01)),
                    rnd,
                    0/0
                )
                
                
                FireProjectile:InvokeServer(
                    Vector3.new(0/0, 0/0, 0/0),
                    rnd,
                    autoshootdelay
                )
                
                local drawing, deleteme, deleteme1 = make_beam(aimpart and aimpart.Position or Camera.CFrame.p, Distination, Configurations.FOVSettings['FOV Circle'].Color)
                local wtf = -1
                local conn; conn = RunService.RenderStepped:Connect(LPH_JIT_MAX(function(delta)
                    wtf = wtf + delta
                    drawing.Transparency = NumberSequence.new(math.clamp(wtf, 0, 1))
                    if wtf >= 1 then
                        drawing:Destroy()
                        deleteme:Destroy()
                        deleteme1:Destroy()
                        conn:Disconnect()
                    end
                end))
            end
        end
    end

local function InitializeESP()
    local ScreenGui = Functions:Create("ScreenGui", {
        Parent = CoreGui,
        Name = "ESPHolder",
    })

    local function ESP_Draw(plr)
        local lplayer = Players.LocalPlayer
        local camera = Workspace.CurrentCamera
        local Cam = Workspace.CurrentCamera
        local RotationAngle, Tick = -45, tick()
        
        if ScreenGui:FindFirstChild(plr.Name) then
            ScreenGui[plr.Name]:Destroy()
        end
        
        local ESPContainer = Functions:Create("Folder", {
            Parent = ScreenGui,
            Name = plr.Name
        })
        
        local Name = Functions:Create("TextLabel", {
            Parent = ESPContainer,
            Position = UDim2.new(0.5, 0, 0, -11),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = ESP.Drawing.Names.RGB,
            Font = 3, 
            TextSize = ESP.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true,
            Visible = false
        })
        local isBot = plr.Character and not Players:GetPlayerFromCharacter(plr.Character)
        
        if ESP.ShowAIBots and isBot then
            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">AI</font>) %s', 255, 0, 0, "AI")
            Name.Visible = ESP.Drawing.Names.Enabled
        elseif not isBot then
            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s', 255, 0, 0, plr.Name)
            Name.Visible = ESP.Drawing.Names.Enabled
        end
        
        local Distance = Functions:Create("TextLabel", {
            Parent = ESPContainer,
            Position = UDim2.new(0.5, 0, 0, 11),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = ESP.Drawing.Distances.RGB,
            Font = 3, 
            TextSize = ESP.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
            RichText = true
        })
        
        local Box = Functions:Create("Frame", {
            Parent = ESPContainer,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 0.75,
            BorderSizePixel = 0,
            Name = "Box"
        })
        
        local Gradient1 = Functions:Create("UIGradient", {
            Parent = Box,
            Enabled = ESP.Drawing.Boxes.GradientFill,
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientFillRGB1),
                ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientFillRGB2)
            }
        })
        
        local Outline = Functions:Create("UIStroke", {
            Parent = Box,
            Enabled = ESP.Drawing.Boxes.Gradient,
            Transparency = 0,
            Color = Color3.fromRGB(255, 255, 255),
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        local Gradient2 = Functions:Create("UIGradient", {
            Parent = Outline,
            Enabled = ESP.Drawing.Boxes.Gradient,
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientRGB1),
                ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientRGB2)
            }
        })
        
        local Healthbar = Functions:Create("Frame", {
            Parent = ESPContainer,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 0,
            Name = "Healthbar"
        })
        
        local BehindHealthbar = Functions:Create("Frame", {
            Parent = ESPContainer,
            ZIndex = -1,
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 0,
            Name = "BehindHealthbar",
            Visible = ESP.Drawing.Healthbar.Enabled
        })
        
        local HealthbarGradient = Functions:Create("UIGradient", {
            Parent = Healthbar,
            Enabled = ESP.Drawing.Healthbar.Gradient,
            Rotation = -90,
            Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, ESP.Drawing.Healthbar.GradientRGB1),
                ColorSequenceKeypoint.new(0.5, ESP.Drawing.Healthbar.GradientRGB2),
                ColorSequenceKeypoint.new(1, ESP.Drawing.Healthbar.GradientRGB3)
            }
        })
        
        local HealthText = Functions:Create("TextLabel", {
            Parent = ESPContainer,
            Position = UDim2.new(0.5, 0, 0, 31),
            Size = UDim2.new(0, 100, 0, 20),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            Font = 3, 
            TextSize = ESP.FontSize,
            TextStrokeTransparency = 0,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        })
        
        local Chams = Functions:Create("Highlight", {
            Parent = ESPContainer,
            FillTransparency = 1,
            OutlineTransparency = 0,
            OutlineColor = Color3.fromRGB(119, 120, 255),
            DepthMode = "AlwaysOnTop"
        })
        
        local function HideESP()
            for _, child in pairs(ESPContainer:GetChildren()) do
                pcall(function()
                    if child:IsA("GuiObject") then
                        child.Visible = false
                    elseif child:IsA("Highlight") then
                        child.Enabled = false
                    end
                end)
            end
            
            Box.Visible = false
            Name.Visible = false
            Distance.Visible = false
            Healthbar.Visible = false
            BehindHealthbar.Visible = false
            HealthText.Visible = false
            Chams.Enabled = false
            
            if not plr or not plr.Parent then
                ESPContainer:Destroy()
                return
            end
        end
        
        local Connection = RunService.RenderStepped:Connect(function()
            if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and ESP.Enabled then
                local HRP = plr.Character.HumanoidRootPart
                local Humanoid = plr.Character:FindFirstChild("Humanoid")
                
                if not Humanoid then return end
                
                local Pos, OnScreen = Cam:WorldToScreenPoint(HRP.Position)
                local Dist = (Cam.CFrame.Position - HRP.Position).Magnitude / 3.5714285714
                
                if OnScreen and Dist <= ESP.MaxDistance then
                    local Size = HRP.Size.Y
                    
                    local realDist = (Cam.CFrame.Position - HRP.Position).Magnitude
                    local baseFOV = 70 
                    local fovCompensation = math.tan(math.rad(baseFOV) / 2) / math.tan(math.rad(Cam.FieldOfView) / 2)
                    local fixedScaleFactor = (Size * Cam.ViewportSize.Y) / (realDist * 2) * fovCompensation
                    local w, h = 3 * fixedScaleFactor, 4.5 * fixedScaleFactor
                    
                    if ESP.FadeOut.OnDistance then
                        Functions:FadeOutOnDist(Box, Dist)
                        Functions:FadeOutOnDist(Outline, Dist)
                        Functions:FadeOutOnDist(Name, Dist)
                        Functions:FadeOutOnDist(Distance, Dist)
                        Functions:FadeOutOnDist(Healthbar, Dist)
                        Functions:FadeOutOnDist(BehindHealthbar, Dist)
                        Functions:FadeOutOnDist(HealthText, Dist)
                        Functions:FadeOutOnDist(Chams, Dist)
                    end
                    
                    if not ESP.TeamCheck or plr == lplayer or ((lplayer.Team ~= plr.Team and plr.Team) or (not lplayer.Team and not plr.Team)) then
                        if ESP.Drawing.Chams.Enabled then
                            Chams.Adornee = plr.Character
                            Chams.Enabled = true
                            Chams.FillColor = ESP.Drawing.Chams.FillRGB
                            Chams.OutlineColor = ESP.Drawing.Chams.OutlineRGB
                            
                            if ESP.Drawing.Chams.Thermal then
                                local breathe_effect = math.atan(math.sin(tick() * 2)) * 2 / math.pi
                                Chams.FillTransparency = ESP.Drawing.Chams.Fill_Transparency * breathe_effect * 0.01
                                Chams.OutlineTransparency = ESP.Drawing.Chams.Outline_Transparency * breathe_effect * 0.01
                            end
                            
                            if ESP.Drawing.Chams.XRay then
                                Chams.DepthMode = "AlwaysOnTop"
                            else
                                Chams.DepthMode = ESP.Drawing.Chams.VisibleCheck and "Occluded" or "AlwaysOnTop"
                            end
                        else
                            Chams.Enabled = false
                        end
                        
                        Box.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                        Box.Size = UDim2.new(0, w, 0, h)
                        Box.Visible = ESP.Drawing.Boxes.Full.Enabled
                        
                        Gradient1.Color = ColorSequence.new{
                            ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientFillRGB1),
                            ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientFillRGB2)
                        }
                        
                        Gradient2.Color = ColorSequence.new{
                            ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientRGB1),
                            ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientRGB2)
                        }

                        if ESP.Drawing.Boxes.Filled.Enabled then
                            Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            
                            if ESP.Drawing.Boxes.GradientFill then
                                Box.BackgroundTransparency = ESP.Drawing.Boxes.Filled.Transparency
                            else
                                Box.BackgroundTransparency = 1
                            end
                            Box.BorderSizePixel = 1
                        else
                            Box.BackgroundTransparency = 1
                        end
                        
                        RotationAngle = RotationAngle + (tick() - Tick) * ESP.Drawing.Boxes.RotationSpeed * math.cos(math.pi / 4 * tick() - math.pi / 2)
                        if ESP.Drawing.Boxes.Animate then
                            Gradient1.Rotation = RotationAngle
                            Gradient2.Rotation = RotationAngle
                        else
                            Gradient1.Rotation = -45
                            Gradient2.Rotation = -45
                        end
                        Tick = tick()
                        
                        local health = Humanoid.Health / Humanoid.MaxHealth
                        Healthbar.Visible = ESP.Drawing.Healthbar.Enabled
                        
                        Healthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - health))
                        Healthbar.Size = UDim2.new(0, ESP.Drawing.Healthbar.Width, 0, h * health)
                        
                        BehindHealthbar.Visible = ESP.Drawing.Healthbar.Enabled
                        BehindHealthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2)
                        BehindHealthbar.Size = UDim2.new(0, ESP.Drawing.Healthbar.Width, 0, h)
                        
                        HealthbarGradient.Color = ColorSequence.new{
                            ColorSequenceKeypoint.new(0, ESP.Drawing.Healthbar.GradientRGB1),
                            ColorSequenceKeypoint.new(0.5, ESP.Drawing.Healthbar.GradientRGB2),
                            ColorSequenceKeypoint.new(1, ESP.Drawing.Healthbar.GradientRGB3)
                        }
                        
                        if ESP.Drawing.Healthbar.HealthText then
                            local healthPercentage = math.floor(Humanoid.Health / Humanoid.MaxHealth * 100)
                            HealthText.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - healthPercentage / 100) + 3)
                            HealthText.Text = tostring(healthPercentage)
                            HealthText.Visible = Humanoid.Health < Humanoid.MaxHealth
                            if ESP.Drawing.Healthbar.Lerp then
                                local color = health >= 0.75 and Color3.fromRGB(0, 255, 0) or health >= 0.5 and Color3.fromRGB(255, 255, 0) or health >= 0.25 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(255, 0, 0)
                                HealthText.TextColor3 = color
                            else
                                HealthText.TextColor3 = ESP.Drawing.Healthbar.HealthTextRGB
                            end
                        end
                        
                        Name.Visible = ESP.Drawing.Names.Enabled
                        Name.TextColor3 = ESP.Drawing.Names.RGB
                        if ESP.Options.Friendcheck and lplayer:IsFriendsWith(plr.UserId) then
                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s', 
                                ESP.Options.FriendcheckRGB.R * 255, 
                                ESP.Options.FriendcheckRGB.G * 255, 
                                ESP.Options.FriendcheckRGB.B * 255, 
                                plr.Name)
                        else
                            if Players:GetPlayerFromCharacter(plr.Character) == nil and ESP.ShowAIBots then
                                Name.Text = string.format('(<font color="rgb(%d, %d, %d)">AI</font>) %s', 255, 0, 0, "AI")
                                Name.Visible = true
                            else
                                if Players:GetPlayerFromCharacter(plr.Character) then
                                Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s', 255, 0, 0, plr.Name)
                                    Name.Visible = true
            end
                            end
                        end
                        Name.Position = UDim2.new(0, Pos.X, 0, Pos.Y - h / 2 - 9)
                        
                        if ESP.Drawing.Distances.Enabled then
                            Distance.TextColor3 = ESP.Drawing.Distances.RGB
                            if ESP.Drawing.Distances.Position == "Bottom" then
                                Distance.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 7)
                                Distance.Text = string.format("%d meters", math.floor(Dist))
                                Distance.Visible = true
                            elseif ESP.Drawing.Distances.Position == "Text" then
                                Distance.Visible = false
                                if ESP.Options.Friendcheck and lplayer:IsFriendsWith(plr.UserId) then
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s [%d]', 
                                        ESP.Options.FriendcheckRGB.R * 255, 
                                        ESP.Options.FriendcheckRGB.G * 255, 
                                        ESP.Options.FriendcheckRGB.B * 255, 
                                        plr.Name, 
                                        math.floor(Dist))
                                else
                                    if Players:GetPlayerFromCharacter(plr.Character) == nil and ESP.ShowAIBots then
                                        Name.Text = string.format('(<font color="rgb(%d, %d, %d)">AI</font>) %s [%d]', 255, 0, 0, "AI", math.floor(Dist))
                                        Name.Visible = true
                                    else
                                        if Players:GetPlayerFromCharacter(plr.Character) then
                                        Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s [%d]', 255, 0, 0, plr.Name, math.floor(Dist))
                                            Name.Visible = true
        end
                                    end
                                end
                                Name.Visible = ESP.Drawing.Names.Enabled
                            end
                        end
                    else
                        HideESP()
                    end
                else
                    HideESP()
                end
            else
                HideESP()
            end
        end)
        
        plr.AncestryChanged:Connect(function()
            if not plr:IsDescendantOf(game) then
                Connection:Disconnect()
                ESPContainer:Destroy()
            end
        end)
    end
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            task.spawn(ESP_Draw, player)
        end
    end
    
    Players.PlayerAdded:Connect(function(player)
        if player ~= Players.LocalPlayer then
            task.spawn(ESP_Draw, player)
        end
    end)
end

    RunService.RenderStepped:Connect(function()
    if ESP.Enabled and not ESP.Initialized then
        pcall(function()
            local oldGui = CoreGui:FindFirstChild("ESPHolder")
            if oldGui then
                oldGui:Destroy()
            end
        end)
        
        ESP.Initialized = true
        InitializeESP()
    end
    
    if ESP.Enabled and ESP.Initialized then
        local espHolder = CoreGui:FindFirstChild("ESPHolder")
        if not espHolder or #espHolder:GetChildren() == 0 then
            ESP.Initialized = false 
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.End then
        ESP.Enabled = not ESP.Enabled
        
        if ESP.Enabled then
            ForceESPRefresh()
        end
        
        pcall(function()
            local espToggle = sections.ESPMain:get_element("EnableESP")
            if espToggle then
                espToggle:set_value({Toggle = ESP.Enabled})
            end
        end)
    end
end)

MacLib:SetFolder("leadmarker")
tabs.Settings:InsertConfigSection("Left")
tabs.Aimbot:Select()
MacLib:LoadAutoLoadConfig()

local function CreateCustomWatermark()

    if _G.CustomWatermark then return end
    
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")

    local player = Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OblivionWatermark"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    if syn and syn.protect_gui then
        syn.protect_gui(screenGui)
        screenGui.Parent = game:GetService("CoreGui")
    else
        screenGui.Parent = playerGui
    end

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "WatermarkFrame"
    mainFrame.Position = UDim2.new(0, 15, 0, 60)
    mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) 
    mainFrame.BorderSizePixel = 0
    mainFrame.AutomaticSize = Enum.AutomaticSize.X
    mainFrame.Size = UDim2.new(0, 0, 0, 30) 
    mainFrame.Parent = screenGui
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 5) 
    uiCorner.Parent = mainFrame

    local padding = Instance.new("UIPadding")
    padding.PaddingLeft = UDim.new(0, 10)
    padding.PaddingRight = UDim.new(0, 10)
    padding.PaddingTop = UDim.new(0, 5)
    padding.PaddingBottom = UDim.new(0, 5)
    padding.Parent = mainFrame

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 1 
    stroke.Color = Color3.fromRGB(60, 60, 60) 
    stroke.Parent = mainFrame

    local accentBar = Instance.new("Frame")
    accentBar.Name = "AccentBar"
    accentBar.Position = UDim2.new(0, 0, 0, 0)
    accentBar.Size = UDim2.new(1, 0, 0, 1)
    accentBar.BorderSizePixel = 0
    accentBar.BackgroundColor3 = Color3.fromRGB(113, 93, 255)
    accentBar.Parent = mainFrame

    local accentGradient = Instance.new("UIGradient")
    accentGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 102, 102)), 
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(113, 93, 255)), 
        ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 214, 160)) 
    }
    accentGradient.Parent = accentBar

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = mainFrame
    textLabel.Size = UDim2.new(0, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1) 
    textLabel.Font = Enum.Font.Gotham 
    textLabel.TextSize = 13 
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.AutomaticSize = Enum.AutomaticSize.X

    local lastFrameTime = tick()
    local fps = 60

    local gradientOffset = 0
    RunService.RenderStepped:Connect(function()
        local now = tick()
        local delta = now - lastFrameTime
        lastFrameTime = now
        fps = math.floor(1 / delta)

        gradientOffset = (gradientOffset + delta * 0.1) % 1
        accentGradient.Offset = Vector2.new(gradientOffset, 0)
    end)

    local function updateText()
        local timeStr = os.date("%H:%M:%S")
        local dateStr = os.date("%d/%m/%Y")
        textLabel.Text = string.format("Oblivion | %s | %s | %d FPS", timeStr, dateStr, fps)
    end

    local updateConnection
    updateConnection = RunService.Heartbeat:Connect(function()
        if screenGui.Enabled then
            updateText()
    end
end)

    _G.CustomWatermark = screenGui

    screenGui.Enabled = true

    return screenGui
end

task.spawn(CreateCustomWatermark)

local function safeESPOptions()

    if not ESP.Options then
        ESP.Options = {
            Teamcheck = false,
            TeamcheckRGB = Color3.fromRGB(0, 255, 0),
            Friendcheck = false,
            FriendcheckRGB = Color3.fromRGB(0, 255, 0),
            Highlight = false,
            HighlightRGB = Color3.fromRGB(255, 0, 0)
        }
    end
    
    if ESP.Options.Friendcheck == nil then
        ESP.Options.Friendcheck = false
    end
    
    if ESP.Options.FriendcheckRGB == nil then
        ESP.Options.FriendcheckRGB = Color3.fromRGB(0, 255, 0)
    end
    
    if ESP.Options.Teamcheck == nil then
        ESP.Options.Teamcheck = false
    end
    
    if ESP.Options.TeamcheckRGB == nil then
        ESP.Options.TeamcheckRGB = Color3.fromRGB(0, 255, 0)
    end
    
    if ESP.Options.Highlight == nil then
        ESP.Options.Highlight = false
    end
    
    if ESP.Options.HighlightRGB == nil then
        ESP.Options.HighlightRGB = Color3.fromRGB(255, 0, 0)
    end
end

safeESPOptions()

local function UpdateESPSettings()
    if ESP.Enabled then
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game:GetService("Players").LocalPlayer then
                local espHolder = game:GetService("CoreGui"):FindFirstChild("ESPHolder")
                if espHolder and espHolder:FindFirstChild(player.Name) then
                    local playerESP = espHolder:FindFirstChild(player.Name)

                    local nameLabel = playerESP:FindFirstChildOfClass("TextLabel")
                    if nameLabel then
                        nameLabel.Visible = ESP.Drawing.Names.Enabled
                    end

                    local distanceLabels = {}
                    for _, child in pairs(playerESP:GetChildren()) do
                        if child:IsA("TextLabel") and child ~= nameLabel then
                            table.insert(distanceLabels, child)
                        end
                    end
                    for _, label in pairs(distanceLabels) do
                        label.Visible = ESP.Drawing.Distances.Enabled
                    end
                end
            end
        end
    end
end

local originalUpdateESP = UpdateESPSettings
UpdateESPSettings = function()
    if originalUpdateESP then
        originalUpdateESP()
    end

    pcall(function()
        local espHolder = game:GetService("CoreGui"):FindFirstChild("ESPHolder")
        if espHolder and ESP.Enabled then
            for _, playerESP in pairs(espHolder:GetChildren()) do
                if not playerESP:IsA("Frame") then continue end
                
                for _, child in pairs(playerESP:GetChildren()) do
                    if child:IsA("TextLabel") then
                        if (child.Text:find("meters") or child.Position.Y.Offset > 0) and
                           ESP.Drawing.Distances.RGB then
                            child.TextColor3 = ESP.Drawing.Distances.RGB
                        end

                        if not child.Text:find("rgb") and
                           (child.Position.Y.Offset < 0 or child.Text:find("E") or child.Text:find("F")) and
                           ESP.Drawing.Names.RGB then
                            child.TextColor3 = ESP.Drawing.Names.RGB
                        end
                    end
                end
            end
    end
end)
end


UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.F3 and WorldESP.Enabled then
        local toRemove = {}
        for instance, data in pairs(WorldESP.TrackedItems) do
            if data.IsContainer then
                if data.Drawing then
                    returnDrawingToPool(data.Drawing)
                    data.Drawing = nil
                end
                table.insert(toRemove, instance)
            end
        end
        
        for _, instance in ipairs(toRemove) do
            WorldESP.TrackedItems[instance] = nil
        end
        local containers = Workspace:FindFirstChild("Containers")
        if containers then
            local count = 0
            local function scanRecursive(parent)
                for _, child in pairs(parent:GetChildren()) do
                    if count >= 300 then return end 
                    
                    pcall(function()
                        
                        if child:IsA("MeshPart") then
                            local container = child.Parent
                            if container and not WorldESP.TrackedItems[container] then
                                trackItem(container, "????: " .. container.Name, false, true, false)
                                count = count + 1
                            end
                        end
                        
                        
                        if child:IsA("Model") and not WorldESP.TrackedItems[child] then
                            local hasMeshPart = false
                            for _, subchild in pairs(child:GetDescendants()) do
                                if subchild:IsA("MeshPart") then
                                    hasMeshPart = true
                                    break
                                end
                            end
                            
                            if hasMeshPart then
                                trackItem(child, "????: " .. child.Name, false, true, false)
                                count = count + 1
                            end
                        end
                        
                        
                        if #child:GetChildren() > 0 then
                            scanRecursive(child)
                        end
                    end)
                end
            end
            scanRecursive(containers)
        end
    end
end)

local ScreenSection = tabs.Player:Section({ Side = "Left", Name = "Zoom Settings" })

ScreenSection:Header({
    Text = "Screen Settings"
})

local function createZoom(time, amount, isZoomIn)
    if ZoomSettings.CurrentTween then
        ZoomSettings.CurrentTween:Cancel()
        ZoomSettings.CurrentTween = nil
    end
    
    local Tween_Info = TweenInfo.new(time, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut) 
    local Tween = game:GetService("TweenService"):Create(Workspace.CurrentCamera, Tween_Info, {FieldOfView = amount})
    
    Tween.Completed:Connect(function()
        ZoomSettings.CurrentTween = nil
        
        if not isZoomIn then
            ZoomSettings.IsZooming = false
            if ZoomSettings.IsFOVChangerActive and FOVChangerSettings and FOVChangerSettings.Enabled then
                
                task.delay(0.05, function()
                    if not ZoomSettings.IsZooming then
                        Workspace.CurrentCamera.FieldOfView = FOVChangerSettings.CustomFOV
                    end
                end)
            else
                
                task.delay(0.05, function()
                    if not ZoomSettings.IsZooming and Workspace.CurrentCamera.FieldOfView ~= ZoomSettings.OldZoom then
                        Workspace.CurrentCamera.FieldOfView = ZoomSettings.OldZoom
                    end
                end)
            end
        end
    end)
    
    ZoomSettings.CurrentTween = Tween
    return Tween
end


local function resetZoom()
    if not ZoomSettings.IsKeyDown and ZoomSettings.IsZooming then
        
        ZoomSettings.IsZooming = false
        
        if ZoomSettings.CurrentTween then
            ZoomSettings.CurrentTween:Cancel()
            ZoomSettings.CurrentTween = nil
        end
        
        
        if ZoomSettings.IsFOVChangerActive and FOVChangerSettings and FOVChangerSettings.Enabled then
            Workspace.CurrentCamera.FieldOfView = FOVChangerSettings.CustomFOV
        else
            Workspace.CurrentCamera.FieldOfView = ZoomSettings.OldZoom
        end
    end
end


local function setupZoomBindings()
    if ZoomSettings.InputConnection then
        ZoomSettings.InputConnection:Disconnect()
        ZoomSettings.InputConnection = nil
    end
    
    if ZoomSettings.EndConnection then
        ZoomSettings.EndConnection:Disconnect()
        ZoomSettings.EndConnection = nil
    end
    
    ZoomSettings.IsZooming = false
    ZoomSettings.IsKeyDown = false
    
    if not ZoomSettings.Enabled then
        resetZoom()
        return
    end
    
    local currentKey = ZoomSettings.Key
    if MacLib and MacLib.Flags and MacLib.Flags["ZoomKey"] then
        currentKey = MacLib.Flags["ZoomKey"]
        ZoomSettings.Key = currentKey
    end
    
    ZoomSettings.InputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        
        local activeKey = ZoomSettings.Key
        if input.KeyCode ~= activeKey then return end
        
        ZoomSettings.IsKeyDown = true
        ZoomSettings.IsFOVChangerActive = FOVChangerSettings and FOVChangerSettings.Enabled
        
        if not ZoomSettings.IsZooming then
            if ZoomSettings.IsFOVChangerActive then
                ZoomSettings.OldZoom = FOVChangerSettings.CustomFOV
            else
                ZoomSettings.OldZoom = Workspace.CurrentCamera.FieldOfView
            end
        end
        
        ZoomSettings.IsZooming = true
        createZoom(ZoomSettings.ZoomTime, ZoomSettings.ZoomedAmount, true):Play()
    end)
    
    ZoomSettings.EndConnection = UserInputService.InputEnded:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        
        local activeKey = ZoomSettings.Key
        if input.KeyCode ~= activeKey then return end
        
        ZoomSettings.IsKeyDown = false
        
        if not ZoomSettings.IsZooming then return end
        
        if ZoomSettings.IsFOVChangerActive and FOVChangerSettings and FOVChangerSettings.Enabled then
            createZoom(ZoomSettings.ZoomTime, FOVChangerSettings.CustomFOV, false):Play()
        else
            createZoom(ZoomSettings.ZoomTime, ZoomSettings.OldZoom, false):Play()
        end
    end)
end


ScreenSection:Toggle({
    Name = "Enable Zoom",
    Default = false,
    Flag = "EnableZoom",
    Callback = function(value)
        ZoomSettings.Enabled = value
        setupZoomBindings()
    end
})

ScreenSection:Slider({
    Name = "Zoom Amount",
    Default = 10,
    Minimum = 5,
    Maximum = 40,
    Precision = 1,
    Flag = "ZoomAmount",
    Callback = function(value)
        ZoomSettings.ZoomedAmount = value
    end
})

ScreenSection:Keybind({
    Name = "Zoom Key",
    Default = ZoomSettings.Key,
    Flag = "ZoomKey",
    Callback = function() end,
    KeyChanged = function(key)
        ZoomSettings.Key = key
        
        if MacLib and MacLib.Flags then
            MacLib.Flags["ZoomKey"] = key
        end
        
        if ZoomSettings.InputConnection then
            ZoomSettings.InputConnection:Disconnect()
            ZoomSettings.InputConnection = nil
        end
        
        if ZoomSettings.EndConnection then
            ZoomSettings.EndConnection:Disconnect()
            ZoomSettings.EndConnection = nil
        end
        
        setupZoomBindings()
    end
})


local lastKeyCheck = tick()
RunService.Heartbeat:Connect(function()
    if tick() - lastKeyCheck > 1 then
        lastKeyCheck = tick()
        resetZoom()  
    end
    
    if MacLib and MacLib.Flags and MacLib.Flags["ZoomKey"] and ZoomSettings.Key ~= MacLib.Flags["ZoomKey"] then
        ZoomSettings.Key = MacLib.Flags["ZoomKey"]
        
        if tick() - (ZoomSettings.LastBindUpdate or 0) > 0.5 then
            ZoomSettings.LastBindUpdate = tick()
            
            if ZoomSettings.Enabled then
                setupZoomBindings()
            end
        end
    end
end)

local FOVChangerSettings = {
    Enabled = true,
    CustomFOV = 70,
    DefaultFOV = workspace.CurrentCamera.FieldOfView,
    UpdateConnection = nil,
    CurrentTween = nil
}

local function updateFOV(instant)
    if not FOVChangerSettings.Enabled then
        if workspace.CurrentCamera.FieldOfView ~= FOVChangerSettings.DefaultFOV then
            if instant then
                workspace.CurrentCamera.FieldOfView = FOVChangerSettings.DefaultFOV
            else
                if FOVChangerSettings.CurrentTween then
                    FOVChangerSettings.CurrentTween:Cancel()
                end
                
                FOVChangerSettings.CurrentTween = game:GetService("TweenService"):Create(
                    workspace.CurrentCamera,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {FieldOfView = FOVChangerSettings.DefaultFOV}
                )
                FOVChangerSettings.CurrentTween:Play()
            end
        end
    else
        if workspace.CurrentCamera.FieldOfView ~= FOVChangerSettings.CustomFOV then
            if instant then
                workspace.CurrentCamera.FieldOfView = FOVChangerSettings.CustomFOV
            else
                if FOVChangerSettings.CurrentTween then
                    FOVChangerSettings.CurrentTween:Cancel()
                end
                
                FOVChangerSettings.CurrentTween = game:GetService("TweenService"):Create(
                    workspace.CurrentCamera,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {FieldOfView = FOVChangerSettings.CustomFOV}
                )
                FOVChangerSettings.CurrentTween:Play()
            end
        end
    end
end

local function setupFOVChanger()
    if FOVChangerSettings.UpdateConnection then
        FOVChangerSettings.UpdateConnection:Disconnect()
    end
    
    FOVChangerSettings.UpdateConnection = workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
        if ZoomSettings.IsZooming then return end
        
        if FOVChangerSettings.Enabled and workspace.CurrentCamera.FieldOfView ~= FOVChangerSettings.CustomFOV then
            if not FOVChangerSettings.CurrentTween or FOVChangerSettings.CurrentTween.PlaybackState == Enum.PlaybackState.Completed then
                workspace.CurrentCamera.FieldOfView = FOVChangerSettings.CustomFOV
            end
        end
    end)
end

ScreenSection:Toggle({
    Name = "Enable FOV Changer",
    Default = true,
    Callback = function(value)
        FOVChangerSettings.Enabled = value
        
        
        ZoomSettings.IsFOVChangerActive = value
        
        
        if not ZoomSettings.IsZooming then
            updateFOV()
        end
        
        
        if value and not FOVChangerSettings.UpdateConnection then
            FOVChangerSettings.UpdateConnection = Workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
                
                if ZoomSettings.IsZooming then return end
                
                if FOVChangerSettings.Enabled and Workspace.CurrentCamera.FieldOfView ~= FOVChangerSettings.CustomFOV then
                    
                    
                    if not FOVChangerSettings.CurrentTween or FOVChangerSettings.CurrentTween.PlaybackState == Enum.PlaybackState.Completed then
                        Workspace.CurrentCamera.FieldOfView = FOVChangerSettings.CustomFOV
                    end
                end
            end)
        elseif not value and FOVChangerSettings.UpdateConnection then
            FOVChangerSettings.UpdateConnection:Disconnect()
            FOVChangerSettings.UpdateConnection = nil
        end
    end
})


ScreenSection:Slider({
    Name = "Custom FOV",
    Default = 70,
    Minimum = 30,
    Maximum = 120,
    Precision = 2,
    Callback = function(value)
        FOVChangerSettings.CustomFOV = value
        if FOVChangerSettings.Enabled and not ZoomSettings.IsZooming then
            updateFOV()
        end
    end
})

ScreenSection:Toggle({
    Name = "No screen effects",
    Default = false,
    Tooltip = 'Disables mask effects',
    Callback = function(v)
        allvars.antimaskbool = v
        if v == true then
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.HelmetMask.TitanShield.Size = UDim2.new(0,0,1,0)
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Mask.GP5.Size = UDim2.new(0,0,1,0)
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visor:GetChildren()) do
                v.Size = UDim2.new(0,0,1,0)
            end
        else
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.HelmetMask.TitanShield.Size = UDim2.new(1,0,1,0)
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Mask.GP5.Size = UDim2.new(1,0,1,0)
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visor:GetChildren()) do
                v.Size = UDim2.new(1,0,1,0)
            end
        end
    end
})


FOVChangerSettings.DefaultFOV = Workspace.CurrentCamera.FieldOfView


local ArmsVisual = {
    Enabled = false,
    Color = Color3.fromRGB(0, 255, 255),
    Transparency = 0.5,
    Material = Enum.Material.ForceField,
    SavedAppearances = {},
    CachedViewModel = nil,
    LastViewModelCheck = nil,
    LastUsedColor = nil,
    LastUsedTransparency = nil,
    LastUsedMaterial = nil,
    LastUpdateTime = nil,
    
    IgnoreList = {
        ["camera"] = true,
        ["Camera"] = true,
        ["CAMERA"] = true,
        ["camerapart"] = true,
        ["CameraPart"] = true,
        ["camerascript"] = true,
        ["CameraScript"] = true,
        ["cameramodule"] = true,
        ["CameraModule"] = true,
        ["cameracontroller"] = true,
        ["CameraController"] = true
    },
    
    StrictPathProcessing = true,
    
    AllowedPaths = {
        "ViewModel",
        "Arms",
        "Weapon",
        "Gun",
        "Knife",
        "Hands",
        "Tool"
    }
}

local function UpdateArmsVisual(color, transparency)
    if not color or transparency == nil then return end 
    
    local function shouldIgnore(obj)
        if not obj then return true end
        
        local current = obj
        while current and current ~= workspace.Camera do
            local name = current.Name:lower()
            if ArmsVisual.IgnoreList[name] then
                return true
            end
            
            if name:find("camera") then
                return true
            end
            
            current = current.Parent
        end
        
        if ArmsVisual.StrictPathProcessing then
            local isAllowed = false
            local current = obj
            while current and current ~= workspace.Camera do
                local name = current.Name:lower()
                for _, allowedPath in ipairs(ArmsVisual.AllowedPaths) do
                    if name:find(allowedPath:lower()) then
                        isAllowed = true
                        break
                    end
                end
                if isAllowed then break end
                current = current.Parent
            end
            return not isAllowed
        end
        
        return false
    end
    
    local viewModel = ArmsVisual.CachedViewModel
    local currentTime = tick()
    
    local forceUpdate = not viewModel or not viewModel.Parent
    if forceUpdate or not ArmsVisual.LastViewModelCheck or (currentTime - ArmsVisual.LastViewModelCheck) > 0.5 then
        viewModel = nil
        
        local validViewModels = {}
        
        pcall(function()
            for _, child in ipairs(workspace.Camera:GetChildren()) do
                if child and child:IsA("Model") and not shouldIgnore(child) then
                    table.insert(validViewModels, child)
                end
            end
        end)
        
        if #validViewModels > 0 then
            viewModel = validViewModels[1]
        end
        
        if viewModel then
            ArmsVisual.CachedViewModel = viewModel
            ArmsVisual.LastViewModelCheck = currentTime
        end
    end
    
    if not viewModel then return end
    
    local function safeSetTransparency(object, value)
        pcall(function()
            if not object or typeof(object) ~= "Instance" or shouldIgnore(object) then return end
            
            if object:IsA("ParticleEmitter") or object:IsA("Beam") or object:IsA("Trail") then
                if typeof(value) == "number" then
                    object.Transparency = NumberSequence.new(value)
                end
            elseif typeof(value) == "number" then
                object.Transparency = value
            end
        end)
    end
    
    local function safeSet(obj, prop, value)
        if not obj or typeof(obj) ~= "Instance" or shouldIgnore(obj) then return end
        pcall(function() obj[prop] = value end)
    end
    
    local timeThreshold = 0.25
    local skipCacheUpdate = false
    
    if ArmsVisual.LastUpdateTime and (currentTime - ArmsVisual.LastUpdateTime) < timeThreshold then
        if ArmsVisual.LastUsedColor and ArmsVisual.LastUsedTransparency and
           ArmsVisual.LastUsedMaterial and ArmsVisual.Enabled and
           ArmsVisual.LastUsedColor == color and
           math.abs(ArmsVisual.LastUsedTransparency - transparency) < 0.01 and
           ArmsVisual.LastUsedMaterial == ArmsVisual.Material then
            skipCacheUpdate = true
        end
    end
    
    if not skipCacheUpdate then
        ArmsVisual.LastUsedColor = color
        ArmsVisual.LastUsedTransparency = transparency
        ArmsVisual.LastUsedMaterial = ArmsVisual.Material
        ArmsVisual.LastUpdateTime = currentTime
        
        local partsToProcess = {}
        for _, part in ipairs(viewModel:GetDescendants()) do
            if shouldIgnore(part) then
                continue
            end
            
            local className = part.ClassName
            local validPartTypes = {
                ["BasePart"] = true,
                ["MeshPart"] = true,
                ["Part"] = true,
                ["UnionOperation"] = true
            }
            
            if validPartTypes[className] then
                if part.Transparency < 1 then
                    table.insert(partsToProcess, part)
                    safeSet(part, "CanCollide", false)
                end
            elseif part:IsA("Decal") or part:IsA("Texture") then
                if ArmsVisual.Enabled then
                    safeSetTransparency(part, 1)
                else
                    safeSetTransparency(part, 0)
                end
            elseif part:IsA("ParticleEmitter") or part:IsA("Beam") or part:IsA("Trail") then
                if ArmsVisual.Enabled then
                    safeSet(part, "Enabled", false)
                    safeSetTransparency(part, 1)
                else
                    safeSet(part, "Enabled", true)
                    safeSetTransparency(part, 0)
                end
            end
        end
        
        for _, part in ipairs(partsToProcess) do
            pcall(function()
                if ArmsVisual.Enabled then
                    for _, child in ipairs(part:GetChildren()) do
                        if child:IsA("SurfaceAppearance") and not ArmsVisual.SavedAppearances[child] then
                            ArmsVisual.SavedAppearances[child] = part
                            child.Parent = nil
                        end
                    end
                    
                    for _, child in ipairs(part:GetChildren()) do
                        if child:IsA("SpecialMesh") or child:IsA("BlockMesh") or child:IsA("CylinderMesh") then
                            safeSet(child, "TextureId", "")
                            pcall(function() 
                                child.VertexColor = Vector3.new(color.R, color.G, color.B) 
                            end)
                        end
                    end
                    
                    safeSet(part, "TextureID", "")
                    safeSet(part, "Material", ArmsVisual.Material)
                    safeSet(part, "Reflectance", 0)
                    safeSet(part, "Color", color)
                    
                    if transparency >= 0 then
                        safeSet(part, "Transparency", transparency)
                    end
                else
                    for stored, parent in pairs(ArmsVisual.SavedAppearances) do
                        if parent == part then
                            stored.Parent = parent
                        end
                    end
                    
                    safeSet(part, "Material", Enum.Material.SmoothPlastic)
                    safeSet(part, "Transparency", 0)
                end
            end)
        end
    end
    
    if not ArmsVisual.Enabled then
        ArmsVisual.SavedAppearances = {}
        ArmsVisual.LastUsedColor = nil
        ArmsVisual.LastUsedTransparency = nil
        ArmsVisual.LastUsedMaterial = nil
    end
    
    if ArmsVisual.LastUsedTransparency ~= transparency then
        ArmsVisual.LastUsedTransparency = transparency
        ArmsVisual.LastUpdateTime = tick() - 1 
    end
end

local function SetupWeaponChangeListener()
    local camera = workspace.Camera
    
    if ArmsVisual.WeaponChangeConnection then
        ArmsVisual.WeaponChangeConnection:Disconnect()
        ArmsVisual.WeaponChangeConnection = nil
    end
    
    local function shouldProcess(obj)
        if not obj or not obj:IsA("Model") then 
            return false 
        end
        
        local name = obj.Name:lower()
        if (ArmsVisual.IgnoreList and ArmsVisual.IgnoreList[name]) or name:find("camera") then
            return false
        end
        
        local isViewModel = name:find("view") or name:find("arm") or 
                           name:find("weapon") or name:find("hand") or
                           name:find("gun") or name:find("item") or name:find("model") 
        return isViewModel
    end
    
    local function updateViewModel(model)
        if not model or not ArmsVisual.Enabled then return end
        
        ArmsVisual.LastUsedColor = nil
        ArmsVisual.LastUsedTransparency = nil
        ArmsVisual.LastUsedMaterial = nil
        ArmsVisual.LastViewModelCheck = nil
        
        ArmsVisual.CachedViewModel = model
        
        ArmsVisual.ViewModelChildrenConnection = model.DescendantAdded:Connect(function(child)
            if not ArmsVisual.Enabled then return end
            
            task.delay(0.05, function()
                if not ArmsVisual.Enabled then return end
                
                ArmsVisual.LastUsedColor = nil
                ArmsVisual.LastUsedTransparency = nil
                ArmsVisual.LastUsedMaterial = nil
                pcall(function()
                    UpdateArmsVisual(ArmsVisual.Color, ArmsVisual.Transparency)
                end)
            end)
        end)
    end
    
    ArmsVisual.WeaponChangeConnection = camera.ChildAdded:Connect(function(child)
        if shouldProcess(child) then
            task.delay(0.05, function()
                updateViewModel(child)
            end)
        end
    end)
    
    task.delay(0.05, function()
        for _, model in ipairs(camera:GetChildren()) do
            if shouldProcess(model) then
                updateViewModel(model)
                break
            end
        end
    end)
    
    return true
end

local function CleanupArmsVisual()
    if not ArmsVisual then return end
    
    if ArmsVisual.Connection then
        ArmsVisual.Connection:Disconnect()
        ArmsVisual.Connection = nil
    end
    
    if ArmsVisual.WeaponChangeConnection then
        ArmsVisual.WeaponChangeConnection:Disconnect()
        ArmsVisual.WeaponChangeConnection = nil
    end
    
    if ArmsVisual.ViewModelChangeConnection then
        ArmsVisual.ViewModelChangeConnection:Disconnect()
        ArmsVisual.ViewModelChangeConnection = nil
    end
    
    ArmsVisual.CachedViewModel = nil
    ArmsVisual.LastViewModelCheck = nil
    ArmsVisual.LastUsedColor = nil
    ArmsVisual.LastUsedTransparency = nil
    ArmsVisual.LastUsedMaterial = nil
    ArmsVisual.SavedAppearances = {}
end

local PlayerHandSection = tabs.Player:Section({ Side = "Left", Name = "Hand Customization" })

PlayerHandSection:Header({
    Text = "Hand & Weapon Visual"
})

local function EmergencyDisableArmsVisual()
    
    ArmsVisual.Enabled = false
    
    if ArmsVisual.Connection then
        ArmsVisual.Connection:Disconnect()
        ArmsVisual.Connection = nil
    end
    
    if ArmsVisual.WeaponChangeConnection then
        ArmsVisual.WeaponChangeConnection:Disconnect()
        ArmsVisual.WeaponChangeConnection = nil
    end
    
    if ArmsVisual.WeaponRemoveConnection then
        ArmsVisual.WeaponRemoveConnection:Disconnect()
        ArmsVisual.WeaponRemoveConnection = nil
    end
    
    if ArmsVisual.ViewModelChangeConnection then
        ArmsVisual.ViewModelChangeConnection:Disconnect()
        ArmsVisual.ViewModelChangeConnection = nil
    end
    
    for stored, parent in pairs(ArmsVisual.SavedAppearances) do
        pcall(function()
            if stored and stored:IsA("Instance") and parent and parent:IsA("Instance") and parent.Parent then
                stored.Parent = parent
            end
        end)
    end
    
    ArmsVisual.SavedAppearances = {}
    ArmsVisual.CachedViewModel = nil
    ArmsVisual.LastViewModelCheck = nil
    ArmsVisual.LastUsedColor = nil
    ArmsVisual.LastUsedTransparency = nil
    ArmsVisual.LastUsedMaterial = nil
    
    pcall(function()
        for _, child in ipairs(workspace.Camera:GetDescendants()) do
            if child:IsA("BasePart") or child:IsA("MeshPart") or 
               child:IsA("Part") or child:IsA("UnionOperation") then
                pcall(function()
                    child.Material = Enum.Material.SmoothPlastic
                    child.Transparency = 0
                end)
            elseif child:IsA("Decal") or child:IsA("Texture") then
                pcall(function()
                    child.Transparency = 0
                end)
            elseif child:IsA("ParticleEmitter") or child:IsA("Beam") or child:IsA("Trail") then
                pcall(function()
                    child.Enabled = true
                    if child:IsA("ParticleEmitter") or child:IsA("Beam") or child:IsA("Trail") then
                        child.Transparency = NumberSequence.new(0)
                    end
                end)
            end
        end
    end)
    
    Window:Notify({
        Title = "Hand Visual",
        Description = "Hand Visual  - ",
        Lifetime = 5
    })
    
    pcall(function()
        if PlayerHandSection and PlayerHandSection.Objects and 
           PlayerHandSection.Objects["EnableHandSkin"] and 
           type(PlayerHandSection.Objects["EnableHandSkin"].Set) == "function" then
            PlayerHandSection.Objects["EnableHandSkin"]:Set(false)
        end
    end)
end

PlayerHandSection:Toggle({
    Name = "Enable Hand Skin",
    Default = false,
    Callback = function(value)
        
        local success, errorMsg = pcall(function()
            ArmsVisual.Enabled = value
            
            if ArmsVisual.Enabled then
                
                if ArmsVisual.Connection then
                    ArmsVisual.Connection:Disconnect()
                end
                
                ArmsVisual.Connection = game:GetService("RunService").RenderStepped:Connect(function()
                    local success, errorMsg = pcall(function()
                        UpdateArmsVisual(ArmsVisual.Color or Color3.fromRGB(0, 255, 255), ArmsVisual.Transparency or 0.5)
                    end)
                    
                    
                    if not success then
                        warn("[ArmsVisual] : " .. tostring(errorMsg))
                        pcall(EmergencyDisableArmsVisual)
                    end
                end)
                
                
                pcall(SetupWeaponChangeListener)
                
                
                pcall(function()
                    UpdateArmsVisual(ArmsVisual.Color or Color3.fromRGB(0, 255, 255), ArmsVisual.Transparency or 0.5)
                end)
            else
                if ArmsVisual.Connection then
                    ArmsVisual.Connection:Disconnect()
                    ArmsVisual.Connection = nil
                end
                
                
                if ArmsVisual.WeaponChangeConnection then
                    ArmsVisual.WeaponChangeConnection:Disconnect()
                    ArmsVisual.WeaponChangeConnection = nil
                end
                
                if ArmsVisual.WeaponRemoveConnection then
                    ArmsVisual.WeaponRemoveConnection:Disconnect()
                    ArmsVisual.WeaponRemoveConnection = nil
                end
                
                
                pcall(function()
                    UpdateArmsVisual(Color3.fromRGB(30, 30, 30), 0)
                end)
            end
        end)
        
        
        if not success then
            warn("[ArmsVisual]  : " .. tostring(errorMsg))
            pcall(EmergencyDisableArmsVisual)
            
            
            pcall(function()
                if PlayerHandSection and PlayerHandSection.Objects and 
                   PlayerHandSection.Objects["EnableHandSkin"] and 
                   type(PlayerHandSection.Objects["EnableHandSkin"].Set) == "function" then
                    PlayerHandSection.Objects["EnableHandSkin"]:Set(false)
                end
            end)
            
            
            pcall(function()
                Window:Notify({
                    Title = "Hand Visual",
                    Description = " : " .. tostring(errorMsg),
                    Lifetime = 5
                })
            end)
        end
    end
}, "EnableHandSkin")

PlayerHandSection:Colorpicker({
    Name = "Hand Color",
    Default = Color3.fromRGB(0, 255, 255),
    Callback = function(value)
        ArmsVisual.Color = value
        if ArmsVisual.Enabled then
            UpdateArmsVisual(ArmsVisual.Color or Color3.fromRGB(0, 255, 255), ArmsVisual.Transparency or 0.5)
        end
    end
}, "HandColor")

PlayerHandSection:Slider({
    Name = "Transparency",
    Default = 50,
    Minimum = 0.01,
    Maximum = 100,
    Precision = 2,
    Callback = function(value)
        ArmsVisual.Transparency = value / 100
        
        if ArmsVisual.Enabled then
            local safeColor = ArmsVisual.Color or Color3.fromRGB(0, 255, 255)
            UpdateArmsVisual(safeColor, ArmsVisual.Transparency)
        end
    end
}, "HandTransparency")

PlayerHandSection:Dropdown({
    Name = "Material Type",
    Multi = false,
    Required = true,
    Options = {"ForceField", "Neon", "Glass", "SmoothPlastic"},
    Default = "ForceField",
    Callback = function(value)
        local materialMap = {
            Neon = Enum.Material.Neon,
            ForceField = Enum.Material.ForceField,
            Glass = Enum.Material.Glass,
            SmoothPlastic = Enum.Material.SmoothPlastic
        }
        
        ArmsVisual.Material = materialMap[value] or Enum.Material.Neon
        
        if ArmsVisual.Enabled then
            local safeColor = ArmsVisual.Color or Color3.fromRGB(0, 255, 255)
            local safeTransparency = ArmsVisual.Transparency or 0.5
            UpdateArmsVisual(safeColor, safeTransparency)
        end
    end
}, "MaterialType")

local function updateGazeLine()
    if not ESP.Enabled or not ESP.Drawing.GazeLine.Enabled then return end
    
    local localPlayer = game:GetService("Players").LocalPlayer
    local localCharacter = localPlayer.Character
    local localHRP = localCharacter and localCharacter:FindFirstChild("HumanoidRootPart")
    local camera = Workspace.CurrentCamera
    local maxDistance = ESP.MaxDistance
    local gazeLength = ESP.Drawing.GazeLine.Thickness
    local gazeColor = ESP.Drawing.GazeLine.RGB
    
    if not localHRP then return end
    
    if not ESP.GazeLines then
        ESP.GazeLines = {}
    end
    
    local function processGazeLine(player)
        if player == localPlayer then return end
        if not player or not player.Character then return end
        
        local head = player.Character:FindFirstChild("Head")
        if not head then return end
        
        local distance = (localHRP.Position - head.Position).Magnitude
        if distance > maxDistance then 
            if ESP.GazeLines[player] then
                ESP.GazeLines[player].Visible = false
            end
            return 
        end
        
        if ESP.TeamCheck then
            local playerTeam = player.Team
            local localTeam = localPlayer.Team
            if playerTeam and localTeam and playerTeam == localTeam then 
                if ESP.GazeLines[player] then
                    ESP.GazeLines[player].Visible = false
                end
                return 
            end
        end
        
        local lookVector = head.CFrame.LookVector
        
        if not ESP.GazeLines[player] then
            ESP.GazeLines[player] = Drawing.new("Line")
            ESP.GazeLines[player].Thickness = ESP.Drawing.GazeLine.Thickness
            ESP.GazeLines[player].Color = gazeColor
            ESP.GazeLines[player].Transparency = 1
        end
        
        local headPosition = head.Position
        local endPosition = headPosition + (lookVector * ESP.Drawing.GazeLine.Length)
        
        local distanceToCamera = (camera.CFrame.Position - headPosition).Magnitude
        if distanceToCamera > maxDistance * 1.2 then
            ESP.GazeLines[player].Visible = false
            return
        end
        
        local screenHeadPosition = camera:WorldToViewportPoint(headPosition)
        local screenEndPosition = camera:WorldToViewportPoint(endPosition)
        
        if screenHeadPosition.Z > 0 and screenEndPosition.Z > 0 then
            ESP.GazeLines[player].From = Vector2.new(screenHeadPosition.X, screenHeadPosition.Y)
            ESP.GazeLines[player].To = Vector2.new(screenEndPosition.X, screenEndPosition.Y)
            ESP.GazeLines[player].Visible = true
        else
            ESP.GazeLines[player].Visible = false
        end
    end
    
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        processGazeLine(player)
    end
    
    for player, line in pairs(ESP.GazeLines) do
        if not player or not player.Character or not player.Character:FindFirstChild("Head") then
            line.Visible = false
            ESP.GazeLines[player] = nil
        end
    end
end

local oldUpdateESP = UpdateESPSettings
UpdateESPSettings = function()
    
    if oldUpdateESP then
        oldUpdateESP()
    end
    
    
    pcall(updateGazeLine)
end

if not ESP.Connections.GazeLineUpdate then
    if ESP.Connections.GazeLineUpdate then
        ESP.Connections.GazeLineUpdate:Disconnect()
    end
    
    ESP.Connections.GazeLineUpdate = RunService.RenderStepped:Connect(function()
        if ESP.Enabled and ESP.Drawing.GazeLine.Enabled then
            local currentTime = tick()
            
            if not ESP.Performance then
                ESP.Performance = {}
            end
            
            if not ESP.Performance.LastGazeLineUpdate then
                ESP.Performance.LastGazeLineUpdate = currentTime
                ESP.Performance.GazeLineUpdateInterval = 0.03
            end
            
            if currentTime - ESP.Performance.LastGazeLineUpdate >= ESP.Performance.GazeLineUpdateInterval then
                ESP.Performance.LastGazeLineUpdate = currentTime
                local success, err = pcall(updateGazeLine)
                if not success and ESP.DebugMode then
                    warn("Ошибка обновления линий: " .. tostring(err))
                end
            end
        else
            if ESP.GazeLines then
                for _, line in pairs(ESP.GazeLines) do
                    line.Visible = false
                end
            end
        end
    end)
    
    game:GetService("Players").PlayerRemoving:Connect(function(player)
        if ESP.GazeLines and ESP.GazeLines[player] then
            ESP.GazeLines[player].Visible = false
            ESP.GazeLines[player] = nil
        end
    end)
end

local function UpdateSkeletonLine(line, part1, part2)
    if not line or not part1 or not part2 then
        if line then line.Visible = false end
        return
    end
    
    if typeof(part1) == "Instance" and not part1.Parent then
        line.Visible = false
        return
    end
    if typeof(part2) == "Instance" and not part2.Parent then
        line.Visible = false
        return
    end
    
    local position1, position2
    
    if typeof(part1) == "table" and part1.Position then
        position1 = part1.Position
    elseif typeof(part1) == "Instance" and part1:IsA("BasePart") then
        position1 = part1.Position
    end
    
    if typeof(part2) == "table" and part2.Position then
        position2 = part2.Position
    elseif typeof(part2) == "Instance" and part2:IsA("BasePart") then
        position2 = part2.Position
    end
    
    if not position1 or not position2 then
        line.Visible = false
        return
    end
    
    local camera = workspace.CurrentCamera
    local pos1, visible1 = camera:WorldToViewportPoint(position1)
    local pos2, visible2 = camera:WorldToViewportPoint(position2)
    
    if visible1 and visible2 and pos1.Z > 0 and pos2.Z > 0 then
        if not ESP.CachedFOV then
            ESP.CachedFOV = {
                baseFOV = 70,
                currentFOV = camera.FieldOfView,
                lastUpdateTime = tick(),
                fovCompensation = 1
            }
        end
        
        local currentTime = tick()
        if currentTime - ESP.CachedFOV.lastUpdateTime > 0.1 or ESP.CachedFOV.currentFOV ~= camera.FieldOfView then
            ESP.CachedFOV.currentFOV = camera.FieldOfView
            ESP.CachedFOV.lastUpdateTime = currentTime
            ESP.CachedFOV.fovCompensation = math.clamp(
                math.tan(math.rad(ESP.CachedFOV.baseFOV) / 2) / math.tan(math.rad(camera.FieldOfView) / 2),
                0.5, 2.0
            )
        end
        
        local distanceToCamera = (camera.CFrame.Position - position1).Magnitude
        local distanceFactor = math.clamp(1 - (distanceToCamera / 1000), 0.1, 1)
        local baseThickness = ESP.Drawing.Skeleton.Thickness or 1
        local finalThickness = baseThickness * ESP.CachedFOV.fovCompensation * distanceFactor
        
        line.From = Vector2.new(pos1.X, pos1.Y)
        line.To = Vector2.new(pos2.X, pos2.Y)
        line.Thickness = finalThickness
        line.Visible = true
    else
        line.Visible = false
    end
end

local function UpdatePlayerSkeleton(player, skeleton)
    if not player or not skeleton then return end
    
    local currentTime = tick()
    if not skeleton.lastUpdate or (currentTime - skeleton.lastUpdate > 1) then
        skeleton.forceUpdate = true
    end
    
    local character = player.Character
    if not character then
        if workspace:FindFirstChild("Players") then
            character = workspace.Players:FindFirstChild(player.Name)
        end
    end
    
    local function hideAllLines()
        if skeleton.allHidden then return end
        
        for name, line in pairs(skeleton) do
            if type(name) == "string" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and 
               name ~= "lastFoV" and name ~= "lastCamPos" and name ~= "allHidden" and
               name ~= "forceUpdate" then
                
                if line and typeof(line) ~= "table" and type(line) ~= "number" then
                    line.Visible = false
                end
            end
        end
        skeleton.allHidden = true
    end
    
    if not character or not ESP.Drawing.Skeleton.Enabled then
        hideAllLines()
        return
    end
    
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid and humanoid.Health <= 0 then
        hideAllLines()
        return
    end
    
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    local localPlayer = game:GetService("Players").LocalPlayer
    local localCharacter = localPlayer and localPlayer.Character
    local localRootPart = localCharacter and localCharacter:FindFirstChild("HumanoidRootPart")
    
    if not rootPart or not localRootPart then
        hideAllLines()
        return
    end
    
    local camera = workspace.CurrentCamera
    local camCFrame = camera.CFrame
    local currentCamPos = camCFrame.Position
    local currentFoV = camera.FieldOfView
    local rootPos = rootPart.Position
    
    if not skeleton.forceUpdate and skeleton.lastPlayerPos and skeleton.lastCamPos and skeleton.lastFoV then
        local positionDifference = (skeleton.lastPlayerPos - rootPos).Magnitude
        local cameraDifference = (skeleton.lastCamPos - currentCamPos).Magnitude
        local fovDifference = math.abs(skeleton.lastFoV - currentFoV)
        
        if positionDifference < 0.5 and cameraDifference < 0.5 and fovDifference < 0.1 then
            return
        end
    end
    
    local distance = (localRootPart.Position - rootPos).Magnitude
    local _, onScreen = camera:WorldToViewportPoint(rootPos)
    
    if not onScreen or (ESP.MaxDistance and distance > ESP.MaxDistance) then
        hideAllLines()
        return
    end
    
    skeleton.allHidden = false
    skeleton.forceUpdate = false
    skeleton.lastPlayerPos = rootPos
    skeleton.lastUpdate = tick()
    skeleton.lastFoV = currentFoV
    skeleton.lastCamPos = currentCamPos
    for name, line in pairs(skeleton) do
        if type(name) == "string" and name ~= "HeadCircle" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and name ~= "lastFoV" and name ~= "lastCamPos" then
            pcall(function()
                if line and typeof(line) ~= "table" and type(line) ~= "number" and type(line.Color) ~= "nil" then
                    line.Color = ESP.Drawing.Skeleton.Color
                end
            end)
        end
    end
    
    pcall(function()
        if skeleton.HeadCircle and type(skeleton.HeadCircle) ~= "number" and type(skeleton.HeadCircle.Color) ~= "nil" then
            skeleton.HeadCircle.Color = ESP.Drawing.Skeleton.Color
        end
    end)
    
    pcall(function()
        local isR15 = (character:FindFirstChild("UpperTorso") ~= nil)
        
        if isR15 then
            local head = character:FindFirstChild("Head")
            local upperTorso = character:FindFirstChild("UpperTorso")
            local lowerTorso = character:FindFirstChild("LowerTorso")
            
            local leftUpperArm = character:FindFirstChild("LeftUpperArm")
            local leftLowerArm = character:FindFirstChild("LeftLowerArm")
            local leftHand = character:FindFirstChild("LeftHand")
            local rightUpperArm = character:FindFirstChild("RightUpperArm")
            local rightLowerArm = character:FindFirstChild("RightLowerArm")
            local rightHand = character:FindFirstChild("RightHand")
            
            if head and skeleton.HeadCircle and type(skeleton.HeadCircle) ~= "number" then
                local headScreen, headOnScreen = camera:WorldToViewportPoint(head.Position)
                if headOnScreen and headScreen.Z > 0 then
                    pcall(function()
                        local baseFOV = 70 

                        local currentFOV = camera.FieldOfView
                        local fovRatio = baseFOV / currentFOV
                        local fovCompensation = math.clamp(
                            math.tan(math.rad(baseFOV) / 2) / math.tan(math.rad(currentFOV) / 2),
                            0.5,  
                            2.0   
                        )
                        local distanceToHead = (camera.CFrame.Position - head.Position).Magnitude
                        local distanceFactor = math.clamp(1 - (distanceToHead / 1000), 0.1, 1)
                        
                        local baseRadius = 3
                        local finalRadius = baseRadius * fovCompensation * distanceFactor
                        
                        skeleton.HeadCircle.Position = Vector2.new(headScreen.X, headScreen.Y)
                        skeleton.HeadCircle.Radius = finalRadius
                        skeleton.HeadCircle.Visible = true
                    end)
                else
                    pcall(function()
                        skeleton.HeadCircle.Visible = false
                    end)
                end
            end
            
            local leftShoulder, rightShoulder
            if upperTorso then
                local leftShoulderAttachment = upperTorso:FindFirstChild("LeftShoulderRigAttachment")
                if leftShoulderAttachment then
                    leftShoulder = {Position = leftShoulderAttachment.WorldPosition, Parent = upperTorso}
                else
                    leftShoulder = {Position = upperTorso.Position + Vector3.new(-upperTorso.Size.X/2, upperTorso.Size.Y/2.5, 0), Parent = upperTorso}
                end
                
                local rightShoulderAttachment = upperTorso:FindFirstChild("RightShoulderRigAttachment")
                if rightShoulderAttachment then
                    rightShoulder = {Position = rightShoulderAttachment.WorldPosition, Parent = upperTorso}
                else
                    rightShoulder = {Position = upperTorso.Position + Vector3.new(upperTorso.Size.X/2, upperTorso.Size.Y/2.5, 0), Parent = upperTorso}
                end
            end
            
            if head and upperTorso then
                UpdateSkeletonLine(skeleton.NeckLine, head, upperTorso)
            end
            if upperTorso and lowerTorso then
                UpdateSkeletonLine(skeleton.UpperSpine, upperTorso, lowerTorso)
            end
            
            if leftShoulder and leftUpperArm then
                UpdateSkeletonLine(skeleton.LeftUpperArm, leftShoulder, leftUpperArm)
            end
            if leftLowerArm and leftHand then
                UpdateSkeletonLine(skeleton.LeftLowerArm, leftLowerArm, leftHand)
            end
            
            if rightShoulder and rightUpperArm then
                UpdateSkeletonLine(skeleton.RightUpperArm, rightShoulder, rightUpperArm)
            end
            if rightLowerArm and rightHand then
                UpdateSkeletonLine(skeleton.RightLowerArm, rightLowerArm, rightHand)
            end
            
            if leftUpperArm and leftLowerArm then
                UpdateSkeletonLine(skeleton.LeftElbow, leftUpperArm, leftLowerArm)
            end
            if rightUpperArm and rightLowerArm then
                UpdateSkeletonLine(skeleton.RightElbow, rightUpperArm, rightLowerArm)
            end
            
            local leftUpperLeg = character:FindFirstChild("LeftUpperLeg")
            local leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
            local leftFoot = character:FindFirstChild("LeftFoot")
            local rightUpperLeg = character:FindFirstChild("RightUpperLeg")
            local rightLowerLeg = character:FindFirstChild("RightLowerLeg")
            local rightFoot = character:FindFirstChild("RightFoot")
            
            if lowerTorso and leftUpperLeg then
                UpdateSkeletonLine(skeleton.LeftUpperLeg, lowerTorso, leftUpperLeg)
            end
            if leftUpperLeg and leftLowerLeg then
                UpdateSkeletonLine(skeleton.LeftLowerLeg, leftUpperLeg, leftLowerLeg)
            end
            if leftLowerLeg and leftFoot then
                UpdateSkeletonLine(skeleton.LeftFoot, leftLowerLeg, leftFoot)
            end
            
            if lowerTorso and rightUpperLeg then
                UpdateSkeletonLine(skeleton.RightUpperLeg, lowerTorso, rightUpperLeg)
            end
            if rightUpperLeg and rightLowerLeg then
                UpdateSkeletonLine(skeleton.RightLowerLeg, rightUpperLeg, rightLowerLeg)
            end
            if rightLowerLeg and rightFoot then
                UpdateSkeletonLine(skeleton.RightFoot, rightLowerLeg, rightFoot)
            end
            
            if upperTorso then
                local shouldUseLeftClavicle = false
                local shouldUseRightClavicle = false
                
                if shouldUseLeftClavicle then
                    local leftClavicleAttachment = upperTorso:FindFirstChild("LeftCollarAttachment")
                    if leftClavicleAttachment and leftShoulder then
                        pcall(function()
                            local leftClaviclePos = leftClavicleAttachment.WorldPosition
                            UpdateSkeletonLine(skeleton.LeftClavicle, {Position = leftClaviclePos, Parent = upperTorso}, leftShoulder)
                        end)
                    else
                        UpdateSkeletonLine(skeleton.LeftClavicle, 
                            {Position = upperTorso.Position + Vector3.new(-upperTorso.Size.X/4, upperTorso.Size.Y/2.5, 0), Parent = upperTorso}, 
                            leftShoulder)
                    end
                    
                    local rightClavicleAttachment = upperTorso:FindFirstChild("RightCollarAttachment")
                    if rightClavicleAttachment and rightShoulder then
                        pcall(function()
                            local rightClaviclePos = rightClavicleAttachment.WorldPosition
                            UpdateSkeletonLine(skeleton.RightClavicle, {Position = rightClaviclePos, Parent = upperTorso}, rightShoulder)
                        end)
                    else
                        UpdateSkeletonLine(skeleton.RightClavicle, 
                            {Position = upperTorso.Position + Vector3.new(upperTorso.Size.X/4, upperTorso.Size.Y/2.5, 0), Parent = upperTorso}, 
                            rightShoulder)
                    end
                else

                    pcall(function() 
                        if skeleton.LeftClavicle then
                            skeleton.LeftClavicle.Visible = false
                        end
                        if skeleton.RightClavicle then
                            skeleton.RightClavicle.Visible = false
                        end
                    end)

                    if leftShoulder and upperTorso then

                        pcall(function()
                            UpdateSkeletonLine(skeleton.LeftClavicle, 
                                leftShoulder, 
                                {Position = upperTorso.Position + Vector3.new(0, upperTorso.Size.Y/4, 0), Parent = upperTorso})
                        end)
                    end
                    
                    if rightShoulder and upperTorso then
                        pcall(function()
                            UpdateSkeletonLine(skeleton.RightClavicle, 
                                rightShoulder, 
                                {Position = upperTorso.Position + Vector3.new(0, upperTorso.Size.Y/4, 0), Parent = upperTorso})
                        end)
                    end
                end
            end
        end
    end)
end
local function ClearSkeletons()
    for player, skeleton in pairs(ESP.Skeletons) do
        for name, element in pairs(skeleton) do
            pcall(function() 
                if element and typeof(element) ~= "table" then
                    element:Remove()
                end
            end)
        end
    end
    ESP.Skeletons = {}
end

local originalESPUpdateConnection = ESP.Connections.RunService
if originalESPUpdateConnection and typeof(originalESPUpdateConnection) == "RBXScriptConnection" then
    originalESPUpdateConnection:Disconnect()
end

ESP.Connections.RunService = RunService.RenderStepped:Connect(function()
    if ESP.Enabled then
        if ESP.Drawing.Skeleton.Enabled then
            local currentTime = tick()
            if ESP.Performance and ESP.Performance.LastSkeletonUpdate then
                ESP.Performance.LastSkeletonUpdate = currentTime
                
                local success, errorMsg = pcall(function()
                    for _, player in pairs(Players:GetPlayers()) do
                        if player ~= Players.LocalPlayer then
                            local character = player.Character
                            if not character and workspace:FindFirstChild("Players") then
                                character = workspace.Players:FindFirstChild(player.Name)
                            end
                            
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                if not ESP.Skeletons[player] then
                                    pcall(InitializePlayerSkeleton, player)
                                end
                                
                                if ESP.Skeletons[player] then
                                    pcall(function()
                                        UpdatePlayerSkeleton(player, ESP.Skeletons[player])
                                    end)
                                end
                            else
                                if ESP.Skeletons[player] then
                                    for name, element in pairs(ESP.Skeletons[player]) do
                                        pcall(function()
                                            if element and typeof(element) ~= "table" and type(element) ~= "number" and type(name) == "string" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and name ~= "lastFoV" and name ~= "lastCamPos" then
                                                element.Visible = false
                                            end
                                        end)
                                    end
                                end
                            end
                        end
                    end
                end)
                
                if not success then
                    warn("Skeleton ESP error: " .. tostring(errorMsg))
                end
            end
        else
            for player, skeleton in pairs(ESP.Skeletons) do
                for name, element in pairs(skeleton) do
                    pcall(function()
                        if element and typeof(element) ~= "table" and type(element) ~= "number" and type(name) == "string" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and name ~= "lastFoV" and name ~= "lastCamPos" then
                            element.Visible = false
        end
    end)
                end
            end
        end
    else
        for player, skeleton in pairs(ESP.Skeletons) do
            for name, element in pairs(skeleton) do
                pcall(function()
                    if element and typeof(element) ~= "table" and type(element) ~= "number" and type(name) == "string" and name ~= "lastPlayerPos" and name ~= "lastUpdate" and name ~= "lastFoV" and name ~= "lastCamPos" then
                        element.Visible = false 
                    end
                end)
            end
        end
    end
end)


Players.PlayerAdded:Connect(function(player)
    if ESP.Drawing.Skeleton.Enabled then
        InitializePlayerSkeleton(player)
    end
end)
Players.PlayerRemoving:Connect(function(player)
    if ESP.Skeletons[player] then
        for name, element in pairs(ESP.Skeletons[player]) do
            pcall(function() 
                if element and typeof(element) ~= "table" then
                    element:Remove()
                end
            end)
        end
        ESP.Skeletons[player] = nil
    end
end)


game:GetService("Players").LocalPlayer.Destroying:Connect(function()
    ClearSkeletons()
end)


local function IsDrawingAvailable()
    local success = pcall(function()
        local testDrawing = Drawing.new("Line")
        testDrawing:Remove()
    end)
    return success
end

sections.ESPMain:Toggle({
    Name = "Skeleton",
    Default = false,
    Callback = function(value)
        ESP.Drawing.Skeleton.Enabled = value
        
        if value then
            local drawingWorks = pcall(function()
                local testLine = Drawing.new("Line")
                testLine:Remove()
            end)
            
            if not drawingWorks then
                ESP.Drawing.Skeleton.Enabled = false
                Window:Notify({
                    Title = "Error",
                    Description = "Drawing API not available. Skeleton ESP disabled.",
                    Lifetime = 5
                })
                sections.ESPMain:get_element("ESPSkeleton"):set_value(false)
                return
            end
            
            if not InitializePlayerSkeleton then
                InitializePlayerSkeleton = function(player)
                    if ESP.Skeletons[player] then
                        for name, line in pairs(ESP.Skeletons[player]) do
                            pcall(function()
                                if line and typeof(line) ~= "table" then
                                    line:Remove()
                                end
                            end)
                        end
                        ESP.Skeletons[player] = nil
                    end
                    
                    local function CreateSkeletonDrawing(type, properties)
                        local drawing
                        local success, result = pcall(function()
                            drawing = Drawing.new(type)
                            
                            if properties then
                                for prop, value in pairs(properties) do
                                    pcall(function()
                                        drawing[prop] = value
                                    end)
                                end
                            end
                            
                            drawing.Visible = false
                            return drawing
                        end)
                        
                        if success and result then
                            return result
                        else
                            pcall(function()
                                drawing = Drawing.new(type)
                                drawing.Visible = false
                                
                                if type == "Line" then
                                    drawing.Thickness = ESP.Drawing.Skeleton.Thickness or 1
                                    drawing.Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                                elseif type == "Circle" then
                                    drawing.Thickness = 1
                                    drawing.Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                                    drawing.NumSides = 20
                                    drawing.Radius = 4
                                    drawing.Filled = true
                                end
                            end)
                            return drawing
                        end
                    end
                    
                    ESP.Skeletons[player] = {
                        lastPlayerPos = nil,
                        lastUpdate = tick(),
                        lastFoV = nil,
                        lastCamPos = nil,
                        
                        NeckLine = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        UpperSpine = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LowerSpine = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftUpperArm = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftLowerArm = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightUpperArm = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightLowerArm = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftUpperLeg = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftLowerLeg = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightUpperLeg = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightLowerLeg = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftFoot = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightFoot = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftElbow = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightElbow = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        LeftClavicle = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        }),
                        
                        RightClavicle = CreateSkeletonDrawing("Line", {
                            Thickness = ESP.Drawing.Skeleton.Thickness or 1,
                            Color = ESP.Drawing.Skeleton.Color or Color3.new(1,1,1)
                        })
                    }
                    
                    return ESP.Skeletons[player]
                end
            end
            
            pcall(function()
                local drawingAvailable = true
            for _, player in pairs(Players:GetPlayers()) do
                    if player ~= Players.LocalPlayer then
                        if ESP.Drawing.Skeleton.Enabled and drawingAvailable and not ESP.Skeletons[player] then
                            InitializePlayerSkeleton(player)
                        end
                        
                        if ESP.Drawing.Skeleton.Enabled and drawingAvailable and ESP.Skeletons[player] then
                            UpdatePlayerSkeleton(player, ESP.Skeletons[player])
                end
            end
                end
            end)
        else
            for player, skeleton in pairs(ESP.Skeletons) do
                for name, line in pairs(skeleton) do
                    pcall(function() 
                        if line and typeof(line) ~= "table" and type(line) ~= "number" then
                line.Visible = false
            end
                    end)
        end
    end
        end
    end
}, "ESPSkeleton")



local function SafeCloudAccess()
    local terrain = Workspace:FindFirstChildOfClass("Terrain")
    if not terrain then return nil end
    
    local cloudExists = false
    pcall(function() cloudExists = terrain.Clouds ~= nil end)
    
    if not cloudExists then
        return nil
    end
    
    return {
        terrain = terrain,
        
        getColor = function()
            local success, result = pcall(function() return terrain.Clouds.Color end)
            return success and result or Color3.fromRGB(255, 255, 255)
        end,
        
        getCover = function()
            local success, result = pcall(function() return terrain.Clouds.Cover end)
            return success and result or 0.5
        end,
        
        getDensity = function()
            local success, result = pcall(function() return terrain.Clouds.Density end)
            return success and result or 0.5
        end,
        
        getEnabled = function()
            local success, result = pcall(function() return terrain.Clouds.Enabled end)
            return success and result or false
        end,
        
        setColor = function(color)
            pcall(function() terrain.Clouds.Color = color end)
        end,
        
        setCover = function(cover)
            pcall(function() terrain.Clouds.Cover = cover end)
        end,
        
        setDensity = function(density)
            pcall(function() terrain.Clouds.Density = density end)
        end,
        
        setEnabled = function(enabled)
            pcall(function() terrain.Clouds.Enabled = enabled end)
        end
    }
end


local function SetupWeaponChangeListener()
    local camera = workspace.Camera
    
    if ArmsVisual.WeaponChangeConnection then
        ArmsVisual.WeaponChangeConnection:Disconnect()
        ArmsVisual.WeaponChangeConnection = nil
    end
    
    if ArmsVisual.WeaponRemoveConnection then
        ArmsVisual.WeaponRemoveConnection:Disconnect()
        ArmsVisual.WeaponRemoveConnection = nil
    end
    
    if ArmsVisual.ViewModelChildrenConnection then
        ArmsVisual.ViewModelChildrenConnection:Disconnect()
        ArmsVisual.ViewModelChildrenConnection = nil
    end
    
    if ArmsVisual.ViewModelChildrenRemovedConnection then
        ArmsVisual.ViewModelChildrenRemovedConnection:Disconnect()
        ArmsVisual.ViewModelChildrenRemovedConnection = nil
    end
    
    local currentSettings = {
        Enabled = ArmsVisual.Enabled,
        Color = ArmsVisual.Color or Color3.fromRGB(0, 255, 255),
        Transparency = ArmsVisual.Transparency or 0.5,
        Material = ArmsVisual.Material or Enum.Material.ForceField
    }
    
    local function shouldProcess(obj)
        if not obj or not obj:IsA("Model") then 
            return false 
        end
        
        local name = obj.Name:lower()
        if (ArmsVisual.IgnoreList and ArmsVisual.IgnoreList[name]) or name:find("camera") then
            return false
        end
        
        local isViewModel = name:find("view") or name:find("arm") or 
                           name:find("weapon") or name:find("hand") or
                           name:find("gun") or name:find("item") or name:find("model") 
        return isViewModel
    end
    
    local function updateViewModel(model)
        if not model or not ArmsVisual.Enabled then return end
        
        ArmsVisual.LastUsedColor = nil
        ArmsVisual.LastUsedTransparency = nil
        ArmsVisual.LastUsedMaterial = nil
        ArmsVisual.LastViewModelCheck = nil
        
        ArmsVisual.CachedViewModel = model
        ArmsVisual.LastViewModelCheck = nil
        
        if ArmsVisual.ViewModelChildrenConnection then
            ArmsVisual.ViewModelChildrenConnection:Disconnect()
            ArmsVisual.ViewModelChildrenConnection = nil
        end
        
        if ArmsVisual.ViewModelChildrenRemovedConnection then
            ArmsVisual.ViewModelChildrenRemovedConnection:Disconnect()
            ArmsVisual.ViewModelChildrenRemovedConnection = nil
        end
        
        ArmsVisual.ViewModelChildrenConnection = model.DescendantAdded:Connect(function(child)
            if not ArmsVisual.Enabled then return end
            
            task.delay(0.05, function()
                if not ArmsVisual.Enabled then return end
                
                ArmsVisual.LastUsedColor = nil
                ArmsVisual.LastUsedTransparency = nil
                ArmsVisual.LastUsedMaterial = nil
                pcall(function()
                    UpdateArmsVisual(currentSettings.Color, currentSettings.Transparency)
                end)
            end)
        end)
        
        ArmsVisual.ViewModelChildrenRemovedConnection = model.DescendantRemoving:Connect(function(child)
            if not ArmsVisual.Enabled then return end
            
            if child:IsA("BasePart") or child:IsA("MeshPart") or child:IsA("Part") or child:IsA("UnionOperation") then
                task.delay(0.1, function()
                    if ArmsVisual.Enabled and model.Parent then
                        
                        ArmsVisual.LastUsedColor = nil
                        ArmsVisual.LastUsedTransparency = nil
                        ArmsVisual.LastUsedMaterial = nil
                        pcall(function()
                            UpdateArmsVisual(currentSettings.Color, currentSettings.Transparency)
                        end)
                    end
                end)
            end
        end)
        
        task.delay(0.1, function()
            if ArmsVisual.Enabled then
                
                ArmsVisual.LastUsedColor = nil
                ArmsVisual.LastUsedTransparency = nil
                ArmsVisual.LastUsedMaterial = nil
                pcall(function()
                    UpdateArmsVisual(currentSettings.Color, currentSettings.Transparency)
                end)
            end
        end)
    end
    
    ArmsVisual.WeaponChangeConnection = camera.ChildAdded:Connect(function(child)
        
        if shouldProcess(child) then
            
            task.delay(0.05, function()
                updateViewModel(child)
            end)
        end
    end)
    
    ArmsVisual.WeaponRemoveConnection = camera.ChildRemoved:Connect(function(child)
        
        if child == ArmsVisual.CachedViewModel then
            ArmsVisual.CachedViewModel = nil
            ArmsVisual.LastViewModelCheck = nil
            
            if ArmsVisual.ViewModelChildrenConnection then
                ArmsVisual.ViewModelChildrenConnection:Disconnect()
                ArmsVisual.ViewModelChildrenConnection = nil
            end
            
            if ArmsVisual.ViewModelChildrenRemovedConnection then
                ArmsVisual.ViewModelChildrenRemovedConnection:Disconnect()
                ArmsVisual.ViewModelChildrenRemovedConnection = nil
            end
            
            task.delay(0.1, function()
                if not ArmsVisual.Enabled then return end
                
                for _, model in ipairs(camera:GetChildren()) do
                    if shouldProcess(model) and model ~= child then
                        updateViewModel(model)
                        break
                    end
                end
            end)
        end
    end)
    
    task.delay(0.05, function()
        for _, model in ipairs(camera:GetChildren()) do
            if shouldProcess(model) then
                updateViewModel(model)
                break
            end
        end
    end)
    
    return true
end


if ArmsVisual.ViewModelChildrenConnection then
    ArmsVisual.ViewModelChildrenConnection:Disconnect()
    ArmsVisual.ViewModelChildrenConnection = nil
end


local originalToggleCallback = nil


if PlayerHandSection and PlayerHandSection.Objects and PlayerHandSection.Objects["EnableHandSkin"] and 
   PlayerHandSection.Objects["EnableHandSkin"].Callback then
    originalToggleCallback = PlayerHandSection.Objects["EnableHandSkin"].Callback
    
    PlayerHandSection.Objects["EnableHandSkin"].Callback = function(value)
        
        if originalToggleCallback then
            originalToggleCallback(value)
        end
        
        if value then
            if type(SetupWeaponChangeListener) == "function" then
                SetupWeaponChangeListener()
            end
        else
            
            if ArmsVisual.WeaponChangeConnection then
                ArmsVisual.WeaponChangeConnection:Disconnect()
                ArmsVisual.WeaponChangeConnection = nil
            end
            if ArmsVisual.WeaponRemoveConnection then
                ArmsVisual.WeaponRemoveConnection:Disconnect()
                ArmsVisual.WeaponRemoveConnection = nil
            end
        end
    end
end


if ArmsVisual and ArmsVisual.Enabled then
    
    if type(SetupWeaponChangeListener) == "function" then
        SetupWeaponChangeListener()
    end
end


local function CleanupArmsVisualConnections()
    
    if not ArmsVisual then
        return
    end
    
    if ArmsVisual.Connection then
        ArmsVisual.Connection:Disconnect()
        ArmsVisual.Connection = nil
    end
    
    if ArmsVisual.WeaponChangeConnection then
        ArmsVisual.WeaponChangeConnection:Disconnect()
        ArmsVisual.WeaponChangeConnection = nil
    end
    
    if ArmsVisual.WeaponRemoveConnection then
        ArmsVisual.WeaponRemoveConnection:Disconnect()
        ArmsVisual.WeaponRemoveConnection = nil
    end
    
    if ArmsVisual.ViewModelChangeConnection then
        ArmsVisual.ViewModelChangeConnection:Disconnect()
        ArmsVisual.ViewModelChangeConnection = nil
    end
    
    ArmsVisual.CachedViewModel = nil
    ArmsVisual.LastViewModelCheck = nil
    ArmsVisual.LastUsedColor = nil
    ArmsVisual.LastUsedTransparency = nil
    ArmsVisual.LastUsedMaterial = nil
    ArmsVisual.SavedAppearances = {}
end


game:GetService("Players").PlayerRemoving:Connect(function(player)
    if player == game:GetService("Players").LocalPlayer then
        CleanupArmsVisualConnections()
    end
end)


if Window and Window.unload then
    local originalUnload = Window.unload
    Window.unload = function(...)
        CleanupArmsVisualConnections()
        return originalUnload(...)
    end
end


RunService.RenderStepped:Connect(function()
    if not ESP.Enabled then return end
    
    local drawingAvailable = pcall(function()
        local testDrawing = Drawing.new("Line")
        testDrawing:Remove()
    end)
    
    if not drawingAvailable and ESP.Drawing.Skeleton.Enabled then
        ESP.Drawing.Skeleton.Enabled = false
        sections.ESPMain:get_element("ESPSkeleton"):set_value(false)
        
        if not ESP.DrawingUnavailableNotified then
            ESP.DrawingUnavailableNotified = true
            Window:Notify({
                Title = "",
                Description = " Drawing .  .",
                Lifetime = 5
            })
        end
        return
    end
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            
            if ESP.Drawing.Skeleton.Enabled and drawingAvailable and not ESP.Skeletons[player] then
                InitializePlayerSkeleton(player)
            end
            
            if ESP.Drawing.Skeleton.Enabled and drawingAvailable and ESP.Skeletons[player] then
                UpdatePlayerSkeleton(player, ESP.Skeletons[player])
            end
        end
    end
end)

sections.WorldVisual:Header({
    Text = "World Color Settings"
})


_G.WorldColorSettings = {
    enabled = false,
    originalAmbient = nil,
    originalOutdoorAmbient = nil,
    customAmbient = Color3.fromRGB(72, 69, 157),  
    customOutdoorAmbient = Color3.fromRGB(47, 61, 132),  
    connection = nil
}

sections.WorldVisual:Toggle({
    Name = "Custom World Color",
    Default = false,
    Callback = function(value)
        _G.WorldColorSettings.enabled = value
        
        if value then
            
            if not _G.WorldColorSettings.originalAmbient then
                _G.WorldColorSettings.originalAmbient = Lighting.Ambient
                _G.WorldColorSettings.originalOutdoorAmbient = Lighting.OutdoorAmbient
            end
            
            if not _G.WorldColorSettings.connection then
                _G.WorldColorSettings.connection = RunService.Heartbeat:Connect(function()
                    if _G.WorldColorSettings.enabled then
                        Lighting.Ambient = _G.WorldColorSettings.customAmbient
                        Lighting.OutdoorAmbient = _G.WorldColorSettings.customOutdoorAmbient
                    end
                end)
            end
        else
            
            if _G.WorldColorSettings.connection then
                _G.WorldColorSettings.connection:Disconnect()
                _G.WorldColorSettings.connection = nil
            end
            
            if _G.WorldColorSettings.originalAmbient then
                Lighting.Ambient = _G.WorldColorSettings.originalAmbient
                Lighting.OutdoorAmbient = _G.WorldColorSettings.originalOutdoorAmbient
        end
    end
    end
}, "CustomWorldColor")

sections.WorldVisual:Colorpicker({
    Name = "Indoor Ambient",
    Default = Color3.fromRGB(72, 69, 157),  
    Alpha = 0,
    Callback = function(color)
        _G.WorldColorSettings.customAmbient = color
        if _G.WorldColorSettings.enabled then
            Lighting.Ambient = color
        end
    end
}, "IndoorAmbientColor")

sections.WorldVisual:Colorpicker({
    Name = "Outdoor Ambient",
    Default = Color3.fromRGB(47, 61, 132),  
    Alpha = 0,
    Callback = function(color)
        _G.WorldColorSettings.customOutdoorAmbient = color
        if _G.WorldColorSettings.enabled then
            Lighting.OutdoorAmbient = color
        end
    end
}, "OutdoorAmbientColor")

sections.WorldVisual:Button({
    Name = "Reset World Color",
    Callback = function()
        if _G.WorldColorSettings.originalAmbient then
            _G.WorldColorSettings.customAmbient = _G.WorldColorSettings.originalAmbient
            _G.WorldColorSettings.customOutdoorAmbient = _G.WorldColorSettings.originalOutdoorAmbient
            
            if _G.WorldColorSettings.enabled then
                Lighting.Ambient = _G.WorldColorSettings.originalAmbient
                Lighting.OutdoorAmbient = _G.WorldColorSettings.originalOutdoorAmbient
            end
            
            sections.WorldVisual:get_element("IndoorAmbientColor"):set_value(_G.WorldColorSettings.originalAmbient)
            sections.WorldVisual:get_element("OutdoorAmbientColor"):set_value(_G.WorldColorSettings.originalOutdoorAmbient)
        end
    end
})


local function PreventCameraConflicts()
    
    if not ArmsVisual then return end
    
    local camProtectionConnection
    camProtectionConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if not ArmsVisual.Enabled then
            camProtectionConnection:Disconnect()
            return
        end
        
        pcall(function()
            for _, child in ipairs(workspace.Camera:GetChildren()) do
                
                if child.Name:lower():find("camera") then
                    pcall(function()
                        
                        for _, subChild in ipairs(child:GetDescendants()) do
                            if subChild:IsA("BasePart") or subChild:IsA("MeshPart") or 
                               subChild:IsA("Part") or subChild:IsA("UnionOperation") then
                                pcall(function()
                                    subChild.Transparency = 0
                                    subChild.Material = Enum.Material.SmoothPlastic
                                    subChild.Color = Color3.fromRGB(163, 162, 165) 
                                end)
                            elseif subChild:IsA("Decal") or subChild:IsA("Texture") then
                                pcall(function()
                                    subChild.Transparency = 0
                                end)
                            end
                        end
                    end)
                end
            end
        end)
    end)
    
    return camProtectionConnection
end


local prevArmsVisualEnabled = false
game:GetService("RunService").Heartbeat:Connect(function()
    if ArmsVisual and ArmsVisual.Enabled ~= prevArmsVisualEnabled then
        prevArmsVisualEnabled = ArmsVisual.Enabled
        if ArmsVisual.Enabled then
            PreventCameraConflicts()
        end
    end
end)

local function ForceUpdateArmsVisual()
    if not ArmsVisual then return end
    
    ArmsVisual.LastUsedColor = nil
    ArmsVisual.LastUsedTransparency = nil
    ArmsVisual.LastUsedMaterial = nil
    ArmsVisual.LastUpdateTime = nil
    ArmsVisual.LastViewModelCheck = nil
    
    ArmsVisual.CachedViewModel = nil
    
    pcall(function()
        for _, child in ipairs(workspace.Camera:GetChildren()) do
            if child:IsA("Model") and not child.Name:lower():find("camera") then
                ArmsVisual.CachedViewModel = child
                break
            end
        end
    end)
    
    task.delay(0.05, function()
        pcall(function()
            if ArmsVisual.Enabled then
                local safeColor = ArmsVisual.Color or Color3.fromRGB(0, 255, 255)
                local safeTransparency = ArmsVisual.Transparency or 0.5
                UpdateArmsVisual(safeColor, safeTransparency)
            end
        end)
    end)
    
    if ArmsVisual.Enabled then
        pcall(SetupWeaponChangeListener)
    end
end

local cameraProtectionConnection = nil

local function PreventCameraConflicts()
    if cameraProtectionConnection then
        cameraProtectionConnection:Disconnect()
        cameraProtectionConnection = nil
    end
    
    cameraProtectionConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if not ArmsVisual.Enabled then
            cameraProtectionConnection:Disconnect()
            cameraProtectionConnection = nil
            return
        end
        
        pcall(function()
            for _, child in ipairs(workspace.Camera:GetChildren()) do
                if child.Name:lower():find("camera") then
                    for _, subChild in ipairs(child:GetDescendants()) do
                        if subChild:IsA("BasePart") or subChild:IsA("MeshPart") or 
                           subChild:IsA("Part") or subChild:IsA("UnionOperation") then
                            pcall(function()
                                subChild.Transparency = 0
                                subChild.Material = Enum.Material.SmoothPlastic
                                subChild.Color = Color3.fromRGB(163, 162, 165)
                            end)
                        elseif subChild:IsA("Decal") or subChild:IsA("Texture") then
                            pcall(function()
                                subChild.Transparency = 0
                            end)
                        end
                    end
                end
            end
        end)
    end)
    
    return cameraProtectionConnection
end

local prevArmsVisualEnabled = false
game:GetService("RunService").Heartbeat:Connect(function()
    if ArmsVisual and ArmsVisual.Enabled ~= prevArmsVisualEnabled then
        prevArmsVisualEnabled = ArmsVisual.Enabled
        if ArmsVisual.Enabled then
            PreventCameraConflicts()
        elseif cameraProtectionConnection then
            cameraProtectionConnection:Disconnect()
            cameraProtectionConnection = nil
        end
    end
end)

localplayer.CharacterAdded:Connect(function(lchar)
    local maingui = localplayer.PlayerGui:WaitForChild("MainGui")
    if maingui then
        maingui.ChildAdded:Connect(function(Sound)
            if Sound:IsA("Sound") and hitsoundbool then
                if Sound.SoundId == "rbxassetid://4585351098" or Sound.SoundId == "rbxassetid://4585382589" then 
                    Sound.SoundId = hitsoundlib[hitsoundhead]
                elseif Sound.SoundId == "rbxassetid://4585382046" or Sound.SoundId == "rbxassetid://4585364605" then 
                    Sound.SoundId = hitsoundlib[hitsoundbody]
                end
            end
        end)
    end
end)

if localplayer.PlayerGui:FindFirstChild("MainGui") then
    localplayer.PlayerGui.MainGui.ChildAdded:Connect(function(Sound)
        if Sound:IsA("Sound") and hitsoundbool then
            if Sound.SoundId == "rbxassetid://4585351098" or Sound.SoundId == "rbxassetid://4585382589" then 
                Sound.SoundId = hitsoundlib[hitsoundhead]
            elseif Sound.SoundId == "rbxassetid://4585382046" or Sound.SoundId == "rbxassetid://4585364605" then 
                Sound.SoundId = hitsoundlib[hitsoundbody]
            end
        end
    end)
end 

local fpsrequired = require(game.ReplicatedStorage.Modules.FPS)
local a1table 

localplayer.CharacterAdded:Connect(function()
    task.wait(1)
    for i,v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v, 'humanoid') and rawget(v, 'settings') then
            a1table = v
            break
        end
    end
end)

runs.RenderStepped:Connect(function()
    pcall(function()
        if aimfovcircle and aimfovcircle.Visible then
            aimfovcircle.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2)
            aimfovcircle.Radius = aimfov
        end
        
        if snaplinebool and aimtarget ~= nil and aimtargetpart ~= nil then
            local screenpos = wcamera:WorldToViewportPoint(aimtargetpart.Position)
            aimsnapline.From = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2)
            aimsnapline.To = Vector2.new(screenpos.X, screenpos.Y)
            aimsnapline.Visible = true
        else
            aimsnapline.Visible = false
        end
        
        if aimtarget ~= nil then
            local targetName = aimtarget.Name or "Unknown"
            
            aimtargetname.Text = targetName
            aimtargetname.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2 + aimfov + 20)
            
            pcall(function()
                local gunname, gun, guninv = getcurrentgun(localplayer)
                if gun then
                    local ammo = gun:FindFirstChild("LoadedAmmo", true)
                    if ammo then
                        local shots = #ammo:GetChildren()
                        aimtargetshots.Text = "Shots: "..shots
                        aimtargetshots.Position = Vector2.new(wcamera.ViewportSize.X / 2, wcamera.ViewportSize.Y / 2 + aimfov + 40)
                    end
                end
            end)
        else
            aimtargetname.Text = "None"
            aimtargetshots.Text = " "
        end
    end)
end)

runs.Heartbeat:Connect(function(delta) 
    if not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") or not localplayer.Character:FindFirstChild("Humanoid") then
        return
    end

    pcall(function()
        choosetarget()
    end)
    
    if aimbool then
        pcall(function()
            local bulletModule = getSafeBulletModule()
            if bulletModule and aimmodfunc ~= nil then
                local currentFunc = require(bulletModule).CreateBullet
                if currentFunc ~= aimmodfunc then
                    require(bulletModule).CreateBullet = aimmodfunc
                end
            end
        end)
    end

    if aimtrigger and aimtarget ~= nil and a1table and fpsrequired and fpsrequired.action then
        pcall(function()
            fpsrequired.action(a1table, true)
            wait()
            fpsrequired.action(a1table, false)
        end)
    end
    
    if aimselftrack and localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
        pcall(function()
            selftrack_update += 1
            
            if selftrack_update >= 30 then
                selftrack_update = 0
                
                local ping = localplayer:GetNetworkPing() * 1000 + 5
                local key = math.floor(ping / 30) * 30
                local added = false
                
                for i, entry in ipairs(selftrack_data) do
                    if entry.ms == key then
                        entry.vpos = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
                        added = true
                        break
                    end
                end
                
                if not added then
                    table.insert(selftrack_data, {
                        ms = key,
                        vpos = localplayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)
                    })
                end
                
                if #selftrack_data > 30 then
                    table.remove(selftrack_data, 1)
                end
            end
        end)
    end
end)

scriptloading = false

pcall(function()
    local bulletModule = getSafeBulletModule()
    if bulletModule and not aimogfunc then
        aimogfunc = require(bulletModule).CreateBullet
    end
end)

local function isvisible(char, object)
    if not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") then
        return false
    end
    if aimvischeck == false then
        return true
    end
    local origin = wcamera.CFrame.Position
    if aimselftrack then
        local plrping = localplayer:GetNetworkPing() * 1000 + 5
        local key = math.floor(plrping / 10) * 10

        local onv
        for _, entry in ipairs(selftrack_data) do
            if entry.ms == key then
                onv = entry
            end
        end
        if onv ~= nil then
            origin = onv.vpos
        end
    end

    local pos = object.Position
    local dir = pos - origin
    local dist = dir.Magnitude + 5
    local penetrated = false
    dir = dir.Unit

    local params = RaycastParams.new()
    params.IgnoreWater = true
    params.CollisionGroup = "WeaponRay"
    params.FilterDescendantsInstances = {
        localplayer.Character,
        wcamera,
        workspace.CurrentCamera,
        char,
        aimignoreparts
    }

    local ray = workspace:Raycast(origin, dir * dist, params)
    if not ray then
        return true 
    end
    
    if ray.Instance:IsDescendantOf(char) then
        return true 
    end
    
    if ray and ray.Instance.Name ~= "Terrain" and not ray.Instance:GetAttribute("NoPen") then
        local armorpen4 = 10
        if globalammo then
            armorpen4 = globalammo:GetAttribute("ArmorPen")
        end

        local FunctionLibraryExtension = require(game.ReplicatedStorage.Modules.FunctionLibraryExtension)
        local armorpen1, newpos2 = FunctionLibraryExtension.Penetration(FunctionLibraryExtension, ray.Instance, ray.Position, dir, armorpen4)
        if armorpen1 and newpos2 then
            local neworigin = ray.Position + dir * 0.01
            local newray = workspace:Raycast(neworigin, dir * (dist - (neworigin - origin).Magnitude), params)
            if newray and newray.Instance:IsDescendantOf(char) then
                return true 
            end
        end
    end

    return false 
end

local function isonscreen(object)
    local _, bool = wcamera:WorldToScreenPoint(object.Position)
    return bool
end

local function getcurrentgun(plr)
    local char = plr.Character
    if not char then return nil, nil end
    local invchar = game.ReplicatedStorage.Players:FindFirstChild(game.Players.LocalPlayer.Name).Inventory
    if not invchar then return nil, nil end

    local gun = nil
    local gunname = nil
    local guninv = nil

    for _, desc in ipairs(char:GetDescendants()) do
        if desc:IsA("Model") and desc:FindFirstChild("ItemRoot") and desc:FindFirstChild("Attachments") then
            gun = desc
            gunname = desc.Name
            guninv = invchar:FindFirstChild(gunname)
        end
    end

    return gunname, gun, guninv
end

sections.GunMod:Header({
    Text = "Gun Mod Settings"
})

sections.GunMod:Slider({
    Name = "Multitaps",
    Default = 1,
    Minimum = 1,
    Maximum = 5,
    Precision = 0,
    Callback = function(value)
        if allvars then
            allvars.multitaps = value
        end
    end
}, "Multitaps")

sections.GunMod:Toggle({
    Name = "Rapid Fire [IF HOLD GUN - REEQUIP IT]",
    Default = false,
    Callback = function(value)
        local inv = game.ReplicatedStorage.Players:FindFirstChild(localplayer.Name).Inventory
        for i, v in ipairs(inv:GetChildren()) do
            if v:FindFirstChild("SettingsModule") then
                local sett = require(v.SettingsModule)
                if value then
                    sett.FireRate = 0.05
                else
                    sett.FireRate = v.ItemProperties.Tool:GetAttribute("FireRate")
                end
            end
        end
        local char = localplayer.Character
        if char then
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid:FindFirstChildOfClass("Tool") then
                local tool = humanoid:FindFirstChildOfClass("Tool")
                humanoid:UnequipTools()
                task.wait(0.1)
                humanoid:EquipTool(tool)
            end
        end
    end
}, "RapidFire")

sections.GunMod:Toggle({
    Name = "Custom Rapid Fire",
    Default = false,
    Callback = function(value)
        allvars.customRapidFireEnabled = value
        if value then
            local inv = game.ReplicatedStorage.Players:FindFirstChild(game.Players.LocalPlayer.Name).Inventory
            for i, v in ipairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    sett.FireRate = 0.005
                end
            end
        else
            local inv = game.ReplicatedStorage.Players:FindFirstChild(game.Players.LocalPlayer.Name).Inventory
            for i, v in ipairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    sett.FireRate = v.ItemProperties.Tool:GetAttribute("FireRate")
                end
            end
        end
    end
}, "CustomRapidFire")

sections.GunMod:Slider({
    Name = "Custom Rapid Fire Delay",
    Default = 0.035,
    Minimum = 0.001,
    Maximum = 0.5,
    Precision = 3,
    Callback = function(value)
        if allvars.customRapidFireEnabled then
            local inv = game.ReplicatedStorage.Players:FindFirstChild(game.Players.LocalPlayer.Name).Inventory
            for i, v in ipairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    sett.FireRate = value
                end
            end
        end
    end
})

sections.GunMod:Toggle({
    Name = "Unlock Firemodes",
    Default = false,
    Callback = function(value)
        if value then
            local inv = game.ReplicatedStorage.Players:FindFirstChild(game.Players.LocalPlayer.Name).Inventory
            for i, v in ipairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    sett.FireModes = {"Auto", "Semi"}
                end
            end
            if localplayer.Character and localplayer.Character:FindFirstChild("WeaponModel") then
                local a1 = require(game.ReplicatedStorage.Modules.FPS).getController()
                require(game.ReplicatedStorage.Modules.FPS).equip(a1, a1.weapon, nil)
            end
        else
            local inv = game.ReplicatedStorage.Players:FindFirstChild(game.Players.LocalPlayer.Name).Inventory
            for i, v in ipairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    if v.ItemProperties.Tool:GetAttribute("FireModes") then
                        local firemodes = v.ItemProperties.Tool:GetAttribute("FireModes"):split(",")
                        sett.FireModes = firemodes
                    end
                end
            end
            if localplayer.Character and localplayer.Character:FindFirstChild("WeaponModel") then
                local a1 = require(game.ReplicatedStorage.Modules.FPS).getController()
                require(game.ReplicatedStorage.Modules.FPS).equip(a1, a1.weapon, nil)
            end
        end
    end
}, "UnlockFiremodes")

local instrelOGfunc = require(game.ReplicatedStorage.Modules.FPS).reload
local instrelMODfunc = function(a1,a2)
    local function aaa(a1)
        local v27_2_ = a1.weapon
        local v27_1_ = v27_2_.Attachments
        local v27_3_ = "Magazine"
        v27_1_ = v27_1_:FindFirstChild(v27_3_)
        if v27_1_ then
            local v27_4_ = a1.weapon
            v27_3_ = v27_4_.Attachments
            v27_2_ = v27_3_.Magazine
            v27_2_ = v27_2_:GetChildren()
            v27_1_ = v27_2_[-1]
            if v27_1_ then
                v27_2_ = v27_1_.ItemProperties
                v27_4_ = "LoadedAmmo"
                v27_2_ = v27_2_:GetAttribute(v27_4_)
                a1.Bullets = v27_2_
                v27_2_ = {}
                a1.BulletsList = v27_2_
                v27_3_ = v27_1_.ItemProperties
                v27_2_ = v27_3_.LoadedAmmo
                v27_3_ = v27_2_:GetChildren()
                local v27_6_ = 1
                v27_4_ = #v27_3_
                local v27_5_ = 1
                for v27_6_ = v27_6_, v27_4_, v27_5_ do
                    local v27_7_ = a1.BulletsList
                    local v27_10_ = v27_3_[v27_6_]
                    local v27_9_ = v27_10_.Name
                    local v27_8_ = tonumber
                    v27_8_ = v27_8_(v27_9_)
                    v27_9_ = {}
                    v27_10_ = v27_3_[v27_6_]
                    local v27_12_ = "AmmoType"
                    v27_10_ = v27_10_:GetAttribute(v27_12_)
                    v27_9_.AmmoType = v27_10_
                    v27_10_ = v27_3_[v27_6_]
                    v27_12_ = "Amount"
                    v27_10_ = v27_10_:GetAttribute(v27_12_)
                    v27_9_.Amount = v27_10_
                    v27_7_[v27_8_] = v27_9_
                end
            end
            v27_2_ = 0
            a1.movementModifier = v27_2_
            v27_2_ = a1.weapon
            if v27_2_ then
                v27_2_ = a1.movementModifier
                local v27_6_ = a1.weapon
                local v27_5_ = v27_6_.ItemProperties
                v27_4_ = v27_5_.Tool
                v27_6_ = "MovementModifer"
                v27_4_ = v27_4_:GetAttribute(v27_6_)
                v27_3_ = v27_4_ or 0.000000
                v27_2_ += v27_3_
                a1.movementModifier = v27_2_
                v27_2_ = a1.weapon
                v27_4_ = "Attachments"
                v27_2_ = v27_2_:FindFirstChild(v27_4_)
                if v27_2_ then
                    v27_3_ = a1.weapon
                    v27_2_ = v27_3_.Attachments
                    v27_2_ = v27_2_:GetChildren()
                    v27_5_ = 1
                    v27_3_ = #v27_2_
                    v27_4_ = 1
                    for v27_5_ = v27_5_, v27_3_, v27_4_ do
                        v27_6_ = v27_2_[v27_5_]
                        local v27_8_ = "StringValue"
                        v27_6_ = v27_6_:FindFirstChildOfClass(v27_8_)
                        if v27_6_ then
                            local v27_7_ = v27_6_.ItemProperties
                            local v27_9_ = "Attachment"
                            v27_7_ = v27_7_:FindFirstChild(v27_9_)
                            if v27_7_ then
                                v27_7_ = a1.movementModifier
                                local v27_10_ = v27_6_.ItemProperties
                                v27_9_ = v27_10_.Attachment
                                local v27_11_ = "MovementModifer"
                                v27_9_ = v27_9_:GetAttribute(v27_11_)
                                v27_8_ = v27_9_ or 0.000000
                                v27_7_ += v27_8_
                                a1.movementModifier = v27_7_
                            end
                        end
                    end
                end
                return
            end
        end
        v27_2_ = a1.weapon
        v27_1_ = v27_2_.ItemProperties
        v27_3_ = "LoadedAmmo"
        v27_1_ = v27_1_:GetAttribute(v27_3_)
        a1.Bullets = v27_1_
        v27_1_ = {}
        a1.BulletsList = v27_1_
        v27_3_ = a1.weapon
        v27_2_ = v27_3_.ItemProperties
        v27_1_ = v27_2_.LoadedAmmo
        v27_2_ = v27_1_:GetChildren()
        local v27_5_ = 1
        v27_3_ = #v27_2_
        local v27_4_ = 1
        for v27_5_ = v27_5_, v27_3_, v27_4_ do
            local v27_6_ = a1.BulletsList
            local v27_9_ = v27_2_[v27_5_]
            local v27_8_ = v27_9_.Name
            local v27_7_ = tonumber
            v27_7_ = v27_7_(v27_8_)
            v27_8_ = {}
            v27_9_ = v27_2_[v27_5_]
            local v27_11_ = "AmmoType"
            v27_9_ = v27_9_:GetAttribute(v27_11_)
            v27_8_.AmmoType = v27_9_
            v27_9_ = v27_2_[v27_5_]
            v27_11_ = "Amount"
            v27_9_ = v27_9_:GetAttribute(v27_11_)
            v27_8_.Amount = v27_9_
            v27_6_[v27_7_] = v27_8_
        end
    end
    
    local v103_2_ = a1.viewModel
    if v103_2_ then
        local v103_3_ = a1.viewModel
        v103_2_ = v103_3_.Item
        local v103_4_ = "AmmoTypes"
        v103_2_ = v103_2_:FindFirstChild(v103_4_)
        if v103_2_ then
            local v103_5_ = a1.weapon
            v103_4_ = v103_5_.ItemProperties
            v103_3_ = v103_4_.AmmoType
            v103_2_ = v103_3_.Value
            v103_5_ = a1.viewModel
            v103_4_ = v103_5_.Item
            v103_3_ = v103_4_.AmmoTypes
            v103_3_ = v103_3_:GetChildren()
            local v103_6_ = 1
            v103_4_ = #v103_3_
            v103_5_ = 1
            for v103_6_ = v103_6_, v103_4_, v103_5_ do
                local v103_7_ = v103_3_[v103_6_]
                local v103_8_ = 1
                v103_7_.Transparency = v103_8_
            end
            v103_6_ = a1.viewModel
            v103_5_ = v103_6_.Item
            v103_4_ = v103_5_.AmmoTypes
            v103_6_ = v103_2_
            v103_4_ = v103_4_:FindFirstChild(v103_6_)
            v103_5_ = 0
            v103_4_.Transparency = v103_5_
            v103_5_ = a1.viewModel
            v103_4_ = v103_5_.Item
            v103_6_ = "AmmoTypes2"
            v103_4_ = v103_4_:FindFirstChild(v103_6_)
            if v103_4_ then
                v103_6_ = a1.viewModel
                v103_5_ = v103_6_.Item
                v103_4_ = v103_5_.AmmoTypes2
                v103_4_ = v103_4_:GetChildren()
                local v103_7_ = 1
                v103_5_ = #v103_4_
                v103_6_ = 1
                for v103_7_ = v103_7_, v103_5_, v103_6_ do
                    local v103_8_ = v103_4_[v103_7_]
                    local v103_9_ = 1
                    v103_8_.Transparency = v103_9_
                end
                v103_7_ = a1.viewModel
                v103_6_ = v103_7_.Item
                v103_5_ = v103_6_.AmmoTypes2
                v103_7_ = v103_2_
                v103_5_ = v103_5_:FindFirstChild(v103_7_)
                v103_6_ = 0
                v103_5_.Transparency = v103_6_
            end
        end
    end
    
    v103_2_ = a1.reloading
    if v103_2_ == false then
        v103_2_ = a1.cancellingReload
        if v103_2_ == false then
            v103_2_ = a1.MaxAmmo
            v103_3_ = 0
            if v103_3_ < v103_2_ then
                v103_3_ = true
                local v103_6_ = 1
                local v103_7_ = a1.CancelTables
                v103_4_ = #v103_7_
                local v103_5_ = 1
                for v103_6_ = v103_6_, v103_4_, v103_5_ do
                    local v103_9_ = a1.CancelTables
                    local v103_8_ = v103_9_[v103_6_]
                    v103_7_ = v103_8_.Visible
                    if v103_7_ == true then
                        v103_3_ = false
                    else
                    end
                end
                v103_2_ = v103_3_
                if v103_2_ then
                    v103_3_ = a1.clientAnimationTracks
                    v103_2_ = v103_3_.Inspect
                    if v103_2_ then
                        v103_3_ = a1.clientAnimationTracks
                        v103_2_ = v103_3_.Inspect
                        v103_2_:Stop()
                        v103_3_ = a1.serverAnimationTracks
                        v103_2_ = v103_3_.Inspect
                        v103_2_:Stop()
                        v103_4_ = a1.WeldedTool
                        v103_3_ = v103_4_.ItemRoot
                        v103_2_ = v103_3_.Sounds.Inspect
                        v103_2_:Stop()
                    end
                    v103_3_ = a1.settings
                    v103_2_ = v103_3_.AimWhileActing
                    if not v103_2_ then
                        v103_2_ = a1.isAiming
                        if v103_2_ then
                            v103_4_ = false
                            a1:aim(v103_4_)
                        end
                    end
                    
                    if a1.reloadType == "loadByHand" then
                        local count = a1.Bullets
                        local maxcount = a1.MaxAmmo
                        for i=count, maxcount do 
                            game.ReplicatedStorage.Remotes.Reload:InvokeServer(nil, 0.001, nil)
                        end
                        aaa(a1)
                    else
                        game.ReplicatedStorage.Remotes.Reload:InvokeServer(nil, 0.001, nil)
                        require(game.ReplicatedStorage.Modules.FPS).equip(a1, a1.weapon, nil)
                        aaa(a1)
                    end      
                end
            end
        end
    end
end

workspace.Camera.ChildAdded:Connect(function(ch)
    if allvars and allvars.instaequip and ch:IsA("Model") then
        task.wait(0.015)
        for i,v in pairs(ch.Humanoid.Animator:GetPlayingAnimationTracks()) do
            if v.Animation.Name == "Equip" then
                v.TimePosition = v.Length - 0.01
            end
        end
    end
end)

runs.Heartbeat:Connect(function(delta)
    local inv = game.ReplicatedStorage.Players:FindFirstChild(localplayer.Name)
    if inv then
        inv = inv.Inventory
        if inv then
            for _, v in pairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    if allvars and allvars.noswaybool then
                        sett.swayModifier = 0
                        sett.aimSwayModifier = 0
                        sett.breathSwayModifier = 0
                    end
                    if allvars and allvars.customRapidFireEnabled then
                        sett.FireRate = 0.001
                    end
                end
            end
        end
    end
end)

local function toggleDesync(enabled)
    desyncbool = enabled
    if enabled then
        desyncvis = Instance.new("Part", workspace)
        desyncvis.Name = "DesyncVisual"
        desyncvis.Anchored = true
        desyncvis.CanQuery = false
        desyncvis.CanCollide = false
        desyncvis.Size = Vector3.new(4,5,1)
        desyncvis.Color = desynccolor
        desyncvis.Material = Enum.Material.Neon
        desyncvis.Transparency = visdesync == true and 1 or desynctrans
        desyncvis.TopSurface = Enum.SurfaceType.Hinge
        
        spawn(function()
            while desyncbool do
                task.wait(0.01)
            end
            
            if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                localplayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            end
            
            if desyncvis then
                desyncvis:Destroy()
                desyncvis = nil
            end
        end)
    end
end

local function toggleForceUnderground(enabled)
    invisbool = enabled
    
    if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
        invistrack = localplayer.Character.Humanoid.Animator:LoadAnimation(invisanim)
        
        if desyncbool and enabled then
            invistrack:Play(.01, 1, 0)
            camthirdp = true
            camthirdpX = 0.1  -- X
            camthirdpY = -0.9 -- Y
            camthirdpZ = -4   -- z
            thirdpshow = true 
            task.spawn(function()
                for i = 1, 3 do
                    game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
                    task.wait(0.1)
                end
            end)
            
            if localplayer.Character then
                game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
                game.Players.LocalPlayer.CameraMaxZoomDistance = 5
                game.Players.LocalPlayer.CameraMinZoomDistance = 5
                localplayer.Character.Humanoid.CameraOffset = Vector3.new(camthirdpX, camthirdpY, camthirdpZ)
                task.delay(0.1, function()
                    if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                        localplayer.Character.Humanoid.CameraOffset = Vector3.new(camthirdpX, camthirdpY, camthirdpZ)
                    end
                end)
                

            end
        end
        
        if not enabled and invistrack then
            invistrack:Stop()
            invistrack:Destroy()
            for i,v in pairs(localplayer.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
                if v.Animation.AnimationId == "rbxassetid://15609995579" then
                    v:Stop()
                end
            end
            if camthirdp then
                camthirdp = false
                if localplayer.Character then
                    game.Players.LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
                    game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5
                    game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
                    localplayer.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
                end
            end
        end
    end
end

runs.Heartbeat:Connect(function(delta)
    if not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    end
    
    if desyncbool and localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart") then
        if localplayer.Character.Humanoid.Health <= 0 then return end
        
        desynctable[1] = localplayer.Character.HumanoidRootPart.CFrame
        desynctable[2] = localplayer.Character.HumanoidRootPart.AssemblyLinearVelocity

        if invisbool and invistrack then
            invistrack:Stop()
            invistrack = localplayer.Character.Humanoid.Animator:LoadAnimation(invisanim)
            invistrack:Play(.01, 1, 0)
            invistrack.TimePosition = invisnum

            local cf = localplayer.Character.HumanoidRootPart.CFrame
            local posoffset = Vector3.new(0,-2.55,0)
            local rotoffset = Vector3.new(90,0,0)
            local spoofedcf = cf
                * CFrame.new(posoffset) 
                * CFrame.Angles(math.rad(rotoffset.X), math.rad(rotoffset.Y), math.rad(rotoffset.Z))
            desynctable[3] = spoofedcf

            localplayer.Character.HumanoidRootPart.CFrame = spoofedcf
            runs.RenderStepped:Wait()
            localplayer.Character.HumanoidRootPart.CFrame = desynctable[1]
            localplayer.Character.HumanoidRootPart.AssemblyLinearVelocity = desynctable[2]
        else
            local cf = localplayer.Character.HumanoidRootPart.CFrame
            local posoffset = desyncPos and Vector3.new(desynXp, desynYp, desynZp) or Vector3.new(0,0,0)
            local rotoffset = desyncOr and Vector3.new(desynXo, desynYo, desynZo) or Vector3.new(0,0,0)
            local spoofedcf = cf
                * CFrame.new(posoffset) 
                * CFrame.Angles(math.rad(rotoffset.X), math.rad(rotoffset.Y), math.rad(rotoffset.Z))
            desynctable[3] = spoofedcf

            localplayer.Character.HumanoidRootPart.CFrame = spoofedcf
            runs.RenderStepped:Wait()
            localplayer.Character.HumanoidRootPart.CFrame = desynctable[1]
            localplayer.Character.HumanoidRootPart.AssemblyLinearVelocity = desynctable[2]
        end
    end
end)

runs.RenderStepped:Connect(function(delta)
    if not localplayer.Character or not localplayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    end
    
    if desyncbool and invisbool then
        local vel = localplayer.Character.HumanoidRootPart.AssemblyLinearVelocity
        local newvel = Vector3.new(vel.X, math.clamp(vel.Y, -99999, 19), vel.Z)
        localplayer.Character.HumanoidRootPart.AssemblyLinearVelocity = newvel
    elseif invistrack then
        invistrack:Stop()
        invistrack:Destroy()
    end
    
    if desyncvis and desynctable[3] then
        desyncvis.CFrame = desynctable[3] * CFrame.new(0, -0.7, 0)
        localplayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    end
end)
local desyncSection = tabs.Player:Section({ 
    Side = "Right", 
    Name = "Desync и Force Underground" 
})

desyncSection:Header({
    Text = "Desync [Use Third Person]"
})

desyncSection:Toggle({
    Name = "Desync ",
    Default = false,
    Callback = function(value)
        toggleDesync(value)
    end
}, "Desync")

desyncSection:Toggle({
    Name = "Force Underground",
    Default = false,
    Callback = function(value)
        invisbool = value
        
        if value then
            invistrack = localplayer.Character.Humanoid.Animator:LoadAnimation(invisanim)
            
            if desyncbool then
                invistrack:Play(.01, 1, 0)
                invistrack.TimePosition = invisnum
            end
        else
            if invistrack then
                invistrack:Stop()
                invistrack:Destroy()
                
                for _, track in pairs(localplayer.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
                    if track.Animation.AnimationId == invisanim.AnimationId then
                        track:Stop()
                    end
                end
            end
            
            if _G.OriginalCameraPosition then
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                workspace.CurrentCamera.CFrame = _G.OriginalCameraPosition
            end
        end
    end
}, "ForceUnderground")

desyncSection:Toggle({
    Name = "Hide Desync",
    Default = false,
    Callback = function(value)
        visdesync = value
        if desyncvis then
            desyncvis.Transparency = visdesync and 1 or desynctrans
        end
    end
}, "HideDesync")

local thirdPersonSection = tabs.Player:Section({ 
    Side = "Right", 
    Name = "Third Person" 
})

thirdPersonSection:Header({
    Text = "Third Person"
})

thirdPersonSection:Toggle({
    Name = "Third Person",
    Default = false,
    Callback = function(value)
        allvars.camthirdp = value
        _G.allvars.camthirdp = value
        
        task.spawn(function()
            pcall(function()
                if value then
                    if localplayer and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                        localplayer.CameraMaxZoomDistance = 5
                        localplayer.CameraMinZoomDistance = 5
                        
                        localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX or 2, allvars.camthirdpY or 2, allvars.camthirdpZ or 2)
                        
                        if _G.SetThirdPersonCamera then
                            _G.SetThirdPersonCamera()
                        end
                    end
                else
                    if localplayer and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                        localplayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
                        localplayer.CameraMaxZoomDistance = 0.5
                        localplayer.CameraMinZoomDistance = 0.5
                    end
                end
            end)
        end)
    end,
    KeyBind = Enum.KeyCode.KeypadSix
}, "ThirdPersonToggle")

thirdPersonSection:Toggle({
    Name = "Show Character",
    Default = false,
    Callback = function(value)
        thirdpshow = value
        _G.thirdpshow = value
    end
}, "ShowCharacterToggle")
if not _G.allvars.camthirdpX then _G.allvars.camthirdpX = 2 end
if not _G.allvars.camthirdpY then _G.allvars.camthirdpY = 2 end
if not _G.allvars.camthirdpZ then _G.allvars.camthirdpZ = 2 end
if not allvars.camthirdpX then allvars.camthirdpX = 2 end
if not allvars.camthirdpY then allvars.camthirdpY = 2 end
if not allvars.camthirdpZ then allvars.camthirdpZ = 2 end

thirdPersonSection:Slider({
    Name = "Thirdp Offset X",
    Default = 2,
    Minimum = -10,
    Maximum = 10,
    Precision = 1,
    Callback = function(value)
        allvars.camthirdpX = value
        _G.allvars.camthirdpX = value
        
        task.spawn(function()
            if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                localplayer.CameraMaxZoomDistance = 5
                localplayer.CameraMinZoomDistance = 5
                
                task.wait(0.01)
                
                if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                    localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX, allvars.camthirdpY, allvars.camthirdpZ)
                end
            end
        end)
    end
}, "ThirdPersonXOffset")

thirdPersonSection:Slider({
    Name = "Thirdp Offset Y",
    Default = 2,
    Minimum = -10,
    Maximum = 10,
    Precision = 1,
    Callback = function(value)
        allvars.camthirdpY = value
        _G.allvars.camthirdpY = value
        
        task.spawn(function()
            if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                localplayer.CameraMaxZoomDistance = 5
                localplayer.CameraMinZoomDistance = 5
                
                task.wait(0.01)
                
                if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                    localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX, allvars.camthirdpY, allvars.camthirdpZ)
                end
            end
        end)
    end
}, "ThirdPersonYOffset")

thirdPersonSection:Slider({
    Name = "Thirdp Offset Z",
    Default = 2,
    Minimum = -10,
    Maximum = 10,
    Precision = 1,
    Callback = function(value)
        allvars.camthirdpZ = value
        _G.allvars.camthirdpZ = value
        
        task.spawn(function()
            if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                localplayer.CameraMaxZoomDistance = 5
                localplayer.CameraMinZoomDistance = 5
                
                task.wait(0.01)
                
                if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                    localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX, allvars.camthirdpY, allvars.camthirdpZ)
                end
            end
        end)
    end
}, "ThirdPersonZOffset")

if _G.ThirdPersonCameraConnection then
    _G.ThirdPersonCameraConnection:Disconnect()
    _G.ThirdPersonCameraConnection = nil
end

if _G.ThirdPersonCameraConnection then
    _G.ThirdPersonCameraConnection:Disconnect()
    _G.ThirdPersonCameraConnection = nil
end

_G.ThirdPersonCameraConnection = RunService.Heartbeat:Connect(function()
    pcall(function()
        if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
            localplayer.CameraMaxZoomDistance = 5
            localplayer.CameraMinZoomDistance = 5
            
            localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX or 2, allvars.camthirdpY or 2, allvars.camthirdpZ or 2)
            
            if workspace.CurrentCamera then
                workspace.CurrentCamera.CameraSubject = localplayer.Character.Humanoid
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            end
        end
    end)
end)

if _G.ThirdPersonCameraConnection2 then
    _G.ThirdPersonCameraConnection2:Disconnect()
    _G.ThirdPersonCameraConnection2 = nil
end

_G.ThirdPersonCameraConnection2 = RunService.RenderStepped:Connect(function()
    pcall(function()
        if allvars.camthirdp and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
            localplayer.CameraMaxZoomDistance = 5
            localplayer.CameraMinZoomDistance = 5
            
            localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX or 2, allvars.camthirdpY or 2, allvars.camthirdpZ or 2)
        end
    end)
end)

local function setupSafeThirdPersonMode()
    _G.SetThirdPersonCamera = function()
        pcall(function()
            if allvars and allvars.camthirdp and localplayer and localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
                localplayer.CameraMaxZoomDistance = 5
                localplayer.CameraMinZoomDistance = 5
                localplayer.Character.Humanoid.CameraOffset = Vector3.new(allvars.camthirdpX or 2, allvars.camthirdpY or 2, allvars.camthirdpZ or 2)
            end
        end)
    end
    
    local function onHumanoidAdded(humanoid)
        pcall(function()
            humanoid.AutoRotate = true
            
            humanoid:GetPropertyChangedSignal("CameraOffset"):Connect(function()
                if allvars.camthirdp then
                    _G.SetThirdPersonCamera()
                end
            end)
        end)
    end
    
    if localplayer.Character and localplayer.Character:FindFirstChild("Humanoid") then
        onHumanoidAdded(localplayer.Character.Humanoid)
    end
    
    localplayer.CharacterAdded:Connect(function(character)
        if character:FindFirstChild("Humanoid") then
            onHumanoidAdded(character:FindFirstChild("Humanoid"))
        else
            character.ChildAdded:Connect(function(child)
                if child:IsA("Humanoid") then
                    onHumanoidAdded(child)
                end
            end)
        end
    end)
end

setupSafeThirdPersonMode()

task.spawn(function()
    pcall(function()
        local transparencyController = require(game.Players.LocalPlayer.PlayerScripts.PlayerModule.CameraModule.TransparencyController)
        
        local originalUpdate = transparencyController.Update
        
        transparencyController.Update = function(self, dt)
            pcall(function()
                if _G.allvars and _G.allvars.camthirdp and _G.thirdpshow then
                    if self.cachedParts then
                        for part, _ in pairs(self.cachedParts) do
                            part.LocalTransparencyModifier = 0
                        end
                    end
                    
                    self.transparencyDirty = false
                    self.lastTransparency = 0
                else
                    originalUpdate(self, dt)
                end
            end)
        end
    end)
end)

sections.GunMod:Toggle({
    Name = "No Sway",
    Default = false,
    Callback = function(value)
        if allvars then
            allvars.noswaybool = value
        end
    end
}, "NoSway")

sections.GunMod:Toggle({
    Name = "No Recoil",
    Default = false,
    Callback = function(value)
        if not game.ReplicatedStorage:FindFirstChild("AmmoTypes") then return end
        
        local ammoTypes = game.ReplicatedStorage.AmmoTypes
        local realAmmoTypes = game.ReplicatedStorage:FindFirstChild("realAmmoTypes")
        
        if not realAmmoTypes then
            realAmmoTypes = ammoTypes:Clone()
            realAmmoTypes.Name = "realAmmoTypes"
            realAmmoTypes.Parent = game.ReplicatedStorage
        end
        
        if value then
            for _, ammo in pairs(ammoTypes:GetChildren()) do
                if ammo:GetAttribute("AccuracyDeviation") then
                    ammo:SetAttribute("AccuracyDeviation", 0)
                end
                if ammo:GetAttribute("RecoilStrength") then
                    ammo:SetAttribute("RecoilStrength", 0)
                end
            end
        else
            for _, ammo in pairs(ammoTypes:GetChildren()) do
                local realAmmo = realAmmoTypes:FindFirstChild(ammo.Name)
                if realAmmo then
                    if ammo:GetAttribute("AccuracyDeviation") then
                        ammo:SetAttribute("AccuracyDeviation", realAmmo:GetAttribute("AccuracyDeviation"))
                    end
                    if ammo:GetAttribute("RecoilStrength") then
                        ammo:SetAttribute("RecoilStrength", realAmmo:GetAttribute("RecoilStrength"))
                    end
                end
            end
        end
    end
}, "NoRecoil")

sections.GunMod:Toggle({
    Name = "Fast Equip",
    Default = false,
    Callback = function(value)
        if allvars then
            allvars.instaequip = value
        end
    end
}, "InstantEquip")

sections.GunMod:Toggle({
    Name = "Fast Reload",
    Default = false,
    Callback = function(value)
        if value then 
            require(game.ReplicatedStorage.Modules.FPS).reload = instrelMODfunc
        else
            require(game.ReplicatedStorage.Modules.FPS).reload = instrelOGfunc
        end
    end
}, "InstantReload")

runs.Heartbeat:Connect(function(delta)
    local inv = game.ReplicatedStorage.Players:FindFirstChild(localplayer.Name)
    if inv then
        inv = inv.Inventory
        if inv then
            for _, v in pairs(inv:GetChildren()) do
                if v:FindFirstChild("SettingsModule") then
                    local sett = require(v.SettingsModule)
                    if allvars and allvars.noswaybool then
                        sett.swayModifier = 0
                        sett.aimSwayModifier = 0
                        sett.breathSwayModifier = 0
                    end
                    if allvars and allvars.customRapidFireEnabled then
                        sett.FireRate = 0.01
                    end
                end
            end
        end
    end
end)

sections.ESPMain:Toggle({
    Name = "ESP Corpses",
    Default = false,
    Callback = function(value)
        allvars.espdead = value
        
        if value == false then
            pcall(function()
                for _, drawing in pairs(_G.CorpseESP or {}) do
                    if drawing.nameLabel then 
                        drawing.nameLabel.Visible = false
                        drawing.nameLabel:Remove()
                    end
                    if drawing.distanceLabel then 
                        drawing.distanceLabel.Visible = false 
                        drawing.distanceLabel:Remove()
                    end
                end
                _G.CorpseESP = {}
            end)
        end
    end
}, "ESPDead")

if not _G.CorpseESP then _G.CorpseESP = {} end
if not _G.CorpseUpdateConnection then _G.CorpseUpdateConnection = nil end

local function updateCorpseESP()
    if not ESP.Enabled or not allvars.espdead then return end
    
    for corpse, info in pairs(_G.CorpseESP) do
        if not corpse or not corpse.Parent or not corpse:FindFirstChild("Head") then
            if info.nameLabel then 
                info.nameLabel.Visible = false
                info.nameLabel:Remove()
            end
            if info.distanceLabel then 
                info.distanceLabel.Visible = false
                info.distanceLabel:Remove()
            end
            _G.CorpseESP[corpse] = nil
        else
            local head = corpse.Head
            local character = localplayer.Character
            
            if character and character:FindFirstChild("HumanoidRootPart") then
                local distance = (character.HumanoidRootPart.Position - head.Position).Magnitude
                
                if distance <= ESP.MaxDistance then
                    local onScreen, screenPos = pcall(function() 
                        return wcamera:WorldToViewportPoint(head.Position) 
                    end)
                    
                    if onScreen and screenPos and screenPos.Z > 0 then

                        if info.nameLabel then
                            info.nameLabel.Position = Vector2.new(screenPos.X, screenPos.Y - 20)
                            info.nameLabel.Visible = true
                        end
                        
                        if info.distanceLabel then
                            local dist = math.floor(distance * 0.3336) 
                            info.distanceLabel.Text = dist .. "M"
                            info.distanceLabel.Position = Vector2.new(screenPos.X, screenPos.Y)
                            info.distanceLabel.Visible = true
                        end
                    else
                        if info.nameLabel then info.nameLabel.Visible = false end
                        if info.distanceLabel then info.distanceLabel.Visible = false end
                    end
                else
                    if info.nameLabel then info.nameLabel.Visible = false end
                    if info.distanceLabel then info.distanceLabel.Visible = false end
                end
            end
        end
    end
end

local function scanForCorpses()
    if not ESP.Enabled or not allvars.espdead then return end
    if not localplayer.Character then return end
    
    local maxCorpses = 10
    local currentCount = 0
    for _ in pairs(_G.CorpseESP) do currentCount = currentCount + 1 end
    
    if currentCount >= maxCorpses then return end
    
    local droppedItems = workspace:FindFirstChild("DroppedItems")
    if not droppedItems then return end
    
    for _, v in ipairs(droppedItems:GetChildren()) do
        if currentCount >= maxCorpses then break end
        
        if not _G.CorpseESP[v] and v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") then
            local head = v.Head
            
            local nameLabel = Drawing.new("Text")
            nameLabel.Text = v.Name .. " [CORPSE]"
            nameLabel.Size = 18
            nameLabel.Center = true
            nameLabel.Outline = true
            nameLabel.Font = 3
            nameLabel.Color = Color3.fromRGB(255, 177, 177)
            nameLabel.OutlineColor = Color3.new(0, 0, 0)
            nameLabel.Visible = false
            
            local distanceLabel = Drawing.new("Text")
            distanceLabel.Size = 16
            distanceLabel.Center = true
            distanceLabel.Outline = true
            distanceLabel.Font = 3
            distanceLabel.Color = Color3.fromRGB(255, 177, 177)
            distanceLabel.OutlineColor = Color3.new(0, 0, 0)
            distanceLabel.Visible = false
            
            _G.CorpseESP[v] = {
                nameLabel = nameLabel,
                distanceLabel = distanceLabel,
            }
            
            currentCount = currentCount + 1
        end
    end
end

if _G.CorpseUpdateConnection then
    _G.CorpseUpdateConnection:Disconnect()
    _G.CorpseUpdateConnection = nil
end

_G.CorpseUpdateConnection = RunService.RenderStepped:Connect(function()
    if ESP.Enabled and allvars.espdead then
        updateCorpseESP()
    end
end)

spawn(function()
    while wait(10) do 
        if ESP.Enabled and allvars.espdead then
            scanForCorpses()
        end
    end
end)

workspace.DescendantAdded:Connect(function(obj)
    if not ESP.Enabled or not allvars.espdead then return end
    
    if obj:IsA("Model") and obj:FindFirstAncestor("DroppedItems") and obj:FindFirstChild("Humanoid") then
        wait(1) 
        
        local maxCorpses = 10
        local currentCount = 0
        for _ in pairs(_G.CorpseESP) do currentCount = currentCount + 1 end
        
        if currentCount < maxCorpses and not _G.CorpseESP[obj] and obj:FindFirstChild("Head") then
            scanForCorpses() 
        end
    end
end)

sections.ESPMain:Toggle({
    Name = "ESP Exide",
    Default = false,
    Callback = function(value)
        allvars.espextract = value
        
        if value == false then
            pcall(function()
                for _, drawing in pairs(_G.ExtractESP or {}) do
                    if drawing.nameLabel then 
                        drawing.nameLabel.Visible = false
                        drawing.nameLabel:Remove()
                    end
                    if drawing.distanceLabel then 
                        drawing.distanceLabel.Visible = false 
                        drawing.distanceLabel:Remove()
                    end
                end
                _G.ExtractESP = {}
            end)
        end
    end
}, "ESPExtract")

if not _G.ExtractESP then _G.ExtractESP = {} end
if not _G.ExtractUpdateConnection then _G.ExtractUpdateConnection = nil end

local function updateExtractESP()
    if not ESP.Enabled or not allvars.espextract then return end

    for extract, info in pairs(_G.ExtractESP) do
        if not extract or not extract.Parent then
            if info.nameLabel then 
                info.nameLabel.Visible = false
                info.nameLabel:Remove()
            end
            if info.distanceLabel then 
                info.distanceLabel.Visible = false
                info.distanceLabel:Remove()
            end
            _G.ExtractESP[extract] = nil
        else
            local character = localplayer.Character
            
            if character and character:FindFirstChild("HumanoidRootPart") then
                local distance = (character.HumanoidRootPart.Position - extract.Position).Magnitude

                if distance <= ESP.MaxDistance then
                    local onScreen, screenPos = pcall(function() 
                        return wcamera:WorldToViewportPoint(extract.Position) 
                    end)
                    
                    if onScreen and screenPos and screenPos.Z > 0 then
                        if info.nameLabel then
                            info.nameLabel.Position = Vector2.new(screenPos.X, screenPos.Y - 20)
                            info.nameLabel.Visible = true
                        end
                        
                        if info.distanceLabel then
                            local dist = math.floor(distance * 0.3336) 
                            info.distanceLabel.Text = dist .. "M"
                            info.distanceLabel.Position = Vector2.new(screenPos.X, screenPos.Y)
                            info.distanceLabel.Visible = true
                        end
                    else
                        if info.nameLabel then info.nameLabel.Visible = false end
                        if info.distanceLabel then info.distanceLabel.Visible = false end
                    end
                else
                    if info.nameLabel then info.nameLabel.Visible = false end
                    if info.distanceLabel then info.distanceLabel.Visible = false end
                end
            end
        end
    end
end

local function scanForExtracts()
    if not ESP.Enabled or not allvars.espextract then return end
    if not localplayer.Character then return end
    
    local exitLocations = workspace:FindFirstChild("NoCollision")
    if not exitLocations then return end
    
    exitLocations = exitLocations:FindFirstChild("ExitLocations")
    if not exitLocations then return end
    
    for _, extract in pairs(exitLocations:GetChildren()) do

        if not _G.ExtractESP[extract] then
            local nameLabel = Drawing.new("Text")
            nameLabel.Text = extract.Name .. ""
            nameLabel.Size = 18
            nameLabel.Center = true
            nameLabel.Outline = true
            nameLabel.Font = 3
            nameLabel.Color = Color3.fromRGB(0, 255, 0)
            nameLabel.OutlineColor = Color3.new(0, 0, 0)
            nameLabel.Visible = false
            
            local distanceLabel = Drawing.new("Text")
            distanceLabel.Size = 16
            distanceLabel.Center = true
            distanceLabel.Outline = true
            distanceLabel.Font = 3
            distanceLabel.Color = Color3.fromRGB(0, 255, 0)
            distanceLabel.OutlineColor = Color3.new(0, 0, 0)
            distanceLabel.Visible = false
            
            _G.ExtractESP[extract] = {
                nameLabel = nameLabel,
                distanceLabel = distanceLabel,
            }
        end
    end
end

if _G.ExtractUpdateConnection then
    _G.ExtractUpdateConnection:Disconnect()
    _G.ExtractUpdateConnection = nil
end

_G.ExtractUpdateConnection = RunService.RenderStepped:Connect(function()
    if ESP.Enabled and allvars.espextract then
        updateExtractESP()
    end
end)

spawn(function()
    while wait(10) do 
        if ESP.Enabled and allvars.espextract then
            scanForExtracts()
        end
    end
end)

if ESP.Enabled and allvars.espextract then
    scanForExtracts()
end

Window:Notify({
    Title = "Oblivion Loaded!",
    Description = "menu loaded successfully!",
    Lifetime = 5
})
