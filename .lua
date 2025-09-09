local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://133952144902631"
sound.Volume = 0
sound.Looped = false
sound.PlaybackSpeed = 0.21
sound.Parent = workspace
sound:Play()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()

local animationIdA = 136370737633649
local animationIdB = 15957361339 
local startTimeA = 2.5
local durationA = 0.715

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "T"

tool.Activated:Connect(function()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoid then
        local animator = humanoid:FindFirstChildOfClass("Animator")
        if not animator then
            animator = Instance.new("Animator")
            animator.Parent = humanoid
        end

        local animationA = Instance.new("Animation")
        animationA.AnimationId = "rbxassetid://" .. animationIdA
        local trackA = animator:LoadAnimation(animationA)
        trackA:Play()
        trackA.TimePosition = startTimeA

        task.delay(durationA, function()
            trackA:Stop()

            local animationB = Instance.new("Animation")
            animationB.AnimationId = "rbxassetid://" .. animationIdB
            local trackB = animator:LoadAnimation(animationB)
            trackB:Play()

            local pos = mouse.Hit.Position + Vector3.new(0, 2.5, 0)
            character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(pos)
        end)
    else
        warn("Humanoid not found in character.")
    end
end)

tool.Parent = LocalPlayer:WaitForChild("Backpack")

-- Hotbar 텍스트 설정
local function setHotbarText(index, text)
    local playerGui = LocalPlayer:WaitForChild("PlayerGui")
    local hotbar = playerGui:FindFirstChild("Hotbar")
    if not hotbar then return end
    local backpack = hotbar:FindFirstChild("Backpack")
    if not backpack then return end
    local hotbarFrame = backpack:FindFirstChild("Hotbar")
    if not hotbarFrame then return end
    local baseButton = hotbarFrame:FindFirstChild(tostring(index))
    if baseButton and baseButton:FindFirstChild("Base") and baseButton.Base:FindFirstChild("ToolName") then
        baseButton.Base.ToolName.Text = text
    end
end

setHotbarText(1, "노짱 강력펀치")
setHotbarText(2, "노짱 연속펀치")
setHotbarText(3, "노짱 밀기")
setHotbarText(4, "노짱 어퍼컷")

-- 화면 메시지 설정
local function findGuiAndSetText()
    local screenGui = LocalPlayer.PlayerGui:FindFirstChild("ScreenGui")
    if screenGui then
        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then
            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
            if textLabel then
                textLabel.Text = "노알라가 되."
            end
        end
    end
end

LocalPlayer.PlayerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()

--[[Animations]]--

local humanoid = LocalPlayer.Character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

-- Move 1
do
    local animationId = 10468665991
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. tostring(animationId) then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://140164642047188"
            local Anim = animator:LoadAnimation(AnimAnim)
            local startTime = 6.5
            Anim:Play()
            Anim.TimePosition = startTime
            Anim:AdjustSpeed(1.2)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Move 2
do
    local animationId = 10466974800
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://16945550029"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim.TimePosition = 0.1
            Anim:Play()
            Anim:AdjustSpeed(2)
            task.delay(1.5, function() Anim:Stop() end)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Move 3
do
    local animationId = 10471336737
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://16139108718"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.TimePosition = 0.15
            Anim:AdjustSpeed(0.5)
            delay(0.5, function() Anim:Stop() end)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Move 4
do
    local animationId = 12510170988
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://16944265635"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.TimePosition = 2.9
            Anim:AdjustSpeed(2)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Wall combo
do
    local animationId = 16310343179
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://134494086123052"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.TimePosition = 0.05
            Anim:AdjustSpeed(2.8)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Ult Activation
do
    local animationId = 12447707844
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://15957366251"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.TimePosition = 0
            Anim:AdjustSpeed(0.38)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Uppercut
do
    local animationId = 10503381238
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://14900168720"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.TimePosition = 1.3
            Anim:AdjustSpeed(1)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- 4th m1
do
    local animationId = 13294471966
    local function onAnimationPlayed(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = "rbxassetid://18897648446"
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.TimePosition = 3.78
            Anim:AdjustSpeed(1)
        end
    end
    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Punch anims replacement logic
do
    local animationIdsToStop = {
        [17859015788] = true,
        [17889080495] = true,
        [17464644182] = true,
        [16737255386] = true,
        [10469643643] = true,
    }

    local replacementAnimations = {
        ["10469493270"] = "rbxassetid://17889458563",
        ["17464644182"] = "rbxassetid://75547590335774",
        ["16737255386"] = "rbxassetid://13071982935",
        ["10469643643"] = "rbxassetid://14374357351",
        ["17859015788"] = "rbxassetid://12684185971",
        ["17889080495"] = "rbxassetid://14374357351",
        ["11365563255"] = "rbxassetid://13073745835",
        ["12983333733"] = "rbxassetid://12832505612",
        ["13927612951"] = "rbxassetid://15121659862",
    }

    local queue = {}
    local isAnimating = false

    local function playReplacementAnimation(animationId)
        if isAnimating then
            table.insert(queue, animationId)
            return
        end

        isAnimating = true
        local replacementAnimationId = replacementAnimations[tostring(animationId)]
        if replacementAnimationId then
            local AnimAnim = Instance.new("Animation")
            AnimAnim.AnimationId = replacementAnimationId
            local Anim = humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim.Stopped:Connect(function()
                isAnimating = false
                if #queue > 0 then
                    local nextAnimationId = table.remove(queue, 1)
                    playReplacementAnimation(nextAnimationId)
                end
            end)
        else
            isAnimating = false
        end
    end

    local function stopSpecificAnimations()
        for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
            local animationId = tonumber(track.Animation.AnimationId:match("%d+"))
            if animationIdsToStop[animationId] then
                track:Stop()
            end
        end
    end

    local function onAnimationPlayed(animationTrack)
        local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))
        if animationIdsToStop[animationId] then
            stopSpecificAnimations()
            animationTrack:Stop()
            playReplacementAnimation(animationId)
        end
    end

    humanoid.AnimationPlayed:Connect(onAnimationPlayed)
end

-- Chat message
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local messages = {"Made by No_1 노짱모션"}
for _, message in ipairs(messages) do
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end

local ContentProvider = game:GetService("ContentProvider")
local RunService = game:GetService("RunService")
