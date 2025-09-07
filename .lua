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

local player = game.Players.LocalPlayer
 
local playerGui = player.PlayerGui
 
local hotbar = playerGui:FindFirstChild("Hotbar")
 
local backpack = hotbar:FindFirstChild("Backpack")
 
local hotbarFrame = backpack:FindFirstChild("Hotbar")
 
local baseButton = hotbarFrame:FindFirstChild("1").Base
 
local ToolName = baseButton.ToolName
 
 
ToolName.Text = "노짱 강력펀치"
 
 
local player = game.Players.LocalPlayer
 
local playerGui = player.PlayerGui
 
local hotbar = playerGui:FindFirstChild("Hotbar")
 
local backpack = hotbar:FindFirstChild("Backpack")
 
local hotbarFrame = backpack:FindFirstChild("Hotbar")
 
local baseButton = hotbarFrame:FindFirstChild("2").Base
 
local ToolName = baseButton.ToolName
 
 
ToolName.Text = "노짱 연속펀치"
 
 
local player = game.Players.LocalPlayer
 
local playerGui = player.PlayerGui
 
local hotbar = playerGui:FindFirstChild("Hotbar")
 
local backpack = hotbar:FindFirstChild("Backpack")
 
local hotbarFrame = backpack:FindFirstChild("Hotbar")
 
local baseButton = hotbarFrame:FindFirstChild("3").Base
 
local ToolName = baseButton.ToolName
 
 
ToolName.Text = "노짱 밀기"
 
 
local player = game.Players.LocalPlayer
 
local playerGui = player.PlayerGui
 
local hotbar = playerGui:FindFirstChild("Hotbar")
 
local backpack = hotbar:FindFirstChild("Backpack")
 
local hotbarFrame = backpack:FindFirstChild("Hotbar")
 
local baseButton = hotbarFrame:FindFirstChild("4").Base
 
local ToolName = baseButton.ToolName
 
 
ToolName.Text = "노짱 어퍼컷"
 
 
local Players = game:GetService("Players")
 
local player = Players.LocalPlayer
 
local playerGui = player:WaitForChild("PlayerGui")
 
 
local function findGuiAndSetText()
 
    local screenGui = playerGui:FindFirstChild("ScreenGui")
 
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
 
 
playerGui.DescendantAdded:Connect(findGuiAndSetText)
 
findGuiAndSetText()
 
--[[Animations]]
 
--[[Move 1]]
 
local animationId = 10468665991
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://16139108718"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0.8
 
 
Anim:Play()
 
Anim:AdjustSpeed(0.1)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(1)
 
 
    end
 
end
 
--[[END OF MOVE 1 ANIM]]
 
--[[Move 2]]
 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animationId = 10466974800

local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

        local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")

        -- 현재 재생 중인 모든 애니메이션 정지
        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        -- 새 애니메이션 생성 및 재생
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://16945550029"
        local Anim = Humanoid:LoadAnimation(AnimAnim)

        local startTime = 0.1
        Anim.TimePosition = startTime

        Anim:Play()
        Anim:AdjustSpeed(2)

        -- 1.5초 뒤에 멈추도록
        task.delay(1.5, function()
            Anim:Stop()
        end)
    end
end

-- 이벤트 연결
humanoid.AnimationPlayed:Connect(onAnimationPlayed)

 
--[[END OF MOVE 2 ANIM]]
 
--[[Move 3]]
 
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 10471336737
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://16139108718"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0.15
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(0.5)
 
 
delay(0.5, function()
 
    Anim:Stop()
 
end)
 
 
    end
 
end
 
--[[END OF MOVE 3 ANIM]]
 
--[[Move 4]]
 
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 12510170988
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://16944265635"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 2.9
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(2)
 
 
    end
 
end
 
--[[END OF MOVE 4 ANIM]]
 
--[[Wall combo]]
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
local animationId = 16310343179
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://134494086123052"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0.05
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(2.8)
 
 
    end
 
end
 
--[[END OF WALL COMBO ANIM]]
 
--[[Ult Activation]]
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 16734584478
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://15121659862"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(0.38)
 
    end
 
end
--[[END OF ULT ACTIVATION ANIM]]
 
--[[Uppercut]]
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 10503381238
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://14900168720"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 1.3
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(1)
 
 
    end
 
end
 
--[[END OF UPPERCUT ANIM]]
 
--[[4th m1]]
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local animationId = 13294471966
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://18897648446"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 3.78

 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(1)
 
 
    end
 
end
 
--[[4th m1]
 
--[[Punch anims]]
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local Players = game:GetService("Players")
 
local player = Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local animationIdsToStop = {
 
    [17859015788] = true, --downslam finisher
 
    [17889080495] = true, --punch1
 
    [17464644182] = true, --punch2
 
    [16737255386] = true, --punch3
 
    [10469643643] = true, --punch4
 
}
 
 
local replacementAnimations = {
 
    ["10469493270"] = "rbxassetid://17889458563", --punch1
 
    ["17464644182"] = "rbxassetid://75547590335774", --punch2
 
    ["16737255386"] = "rbxassetid://13071982935", --punch3
 
    ["10469643643"] = "rbxassetid://14374357351", --punch4
 
    ["17859015788"] = "rbxassetid://12684185971", --downslam finisher

    ["17889080495"] = "rbxassetid://14374357351", -- ult move
    
    ["11365563255"] = "rbxassetid://13073745835", -- ult move
    
    ["12983333733"] = "rbxassetid://12832505612", -- ult move
    
    ["13927612951"] = "rbxassetid://15121659862", -- ult move
 
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
 
       
 
        local replacementAnimationId = replacementAnimations[tostring(animationId)]
 
        if replacementAnimationId then
 
            playReplacementAnimation(animationId)
 
        end
 
    end
 
end
 
 
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 
 
local function onBodyVelocityAdded(bodyVelocity)
 
    if bodyVelocity:IsA("BodyVelocity") then
 
        bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)
 
    end
 
end
 
 
character.DescendantAdded:Connect(onBodyVelocityAdded)
 
 
for _, descendant in pairs(character:GetDescendants()) do
 
    onBodyVelocityAdded(descendant)
 
end
 
 
player.CharacterAdded:Connect(function(newCharacter)
 
    character = newCharacter
 
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 
    character.DescendantAdded:Connect(onBodyVelocityAdded)
 
   
 
    for _, descendant in pairs(character:GetDescendants()) do
 
        onBodyVelocityAdded(descendant)
 
    end
 
end) 
 
--[[Adding Quote or Message when Executed]]
 
local player = game.Players.LocalPlayer
repeat wait() until player.Character
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
-- Messages to send
local messages = {"Made by No_1 노짱모션"}
 
local function sendMessage(text)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end
 
for _, message in ipairs(messages) do
    sendMessage(message)
end
 
--[[END OF QUOTES]]
 
--[[Execute Anims (Animations when you execute script]]
 
local ContentProvider = game:GetService("ContentProvider")
local RunService = game:GetService("RunService")
