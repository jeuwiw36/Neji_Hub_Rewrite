local BoneFarm = {}

local BRING_INTERVAL = 0.5
local lastBringTime = 0

local BONE_MOBS = {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Possessed Mummy"}
local QUEST_POS = CFrame.new(-9516.99316, 172.01718, 6078.46533)
local STAND_POS = CFrame.new(-9495.68066, 453.58624, 5977.34863)

local MOB_POSITIONS = {
    ["Reborn Skeleton"] = Vector3.new(-8755.28, 142.42, 5977.86),
    ["Demonic Soul"]    = Vector3.new(-9512.19, 172.42, 6180.58),
    ["Living Zombie"]   = Vector3.new(-10110.87, 138.94, 5977.52),
    ["Possessed Mummy"] = Vector3.new(-9564.89, 85.10, 6220.95)
}

local function IsBoneMob(mobName)
    for _, name in ipairs(BONE_MOBS) do
        if name == mobName then return true end
    end
    return false
end

local function HandleQuest(player, root, questUI)
    if _G.AcceptQuestB and questUI and not questUI.Visible then
        _tp(QUEST_POS)
        while _G.AutoFarm_Bone and (QUEST_POS.Position - root.Position).Magnitude > 50 do
            task.wait(0.2)
        end
        
        if (QUEST_POS.Position - root.Position).Magnitude <= 15 then
            local questData = {
                {"StartQuest","HauntedQuest2",2},
                {"StartQuest","HauntedQuest2",1},
                {"StartQuest","HauntedQuest1",1},
                {"StartQuest","HauntedQuest1",2}
            }
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(questData[math.random(1, #questData)]))
        end
        return true
    end
    return false
end

local function HandleBringMob(targetMob, enemies)
    local currentTime = tick()
    if currentTime - lastBringTime < BRING_INTERVAL then return end

    local mobName = targetMob.Name
    local bringPos = MOB_POSITIONS[mobName]
    
    if bringPos and enemies then
        local count = 0
        for _, v in ipairs(enemies:GetChildren()) do
            if v.Name == mobName and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                v.HumanoidRootPart.CFrame = CFrame.new(bringPos)
                count = count + 1
                task.wait()
            end
        end
        if count > 0 then
            lastBringTime = currentTime
        end
    end
end

local function FindNearestBoneMob(root, enemies)
    local targetMob = nil
    local minDist = math.huge
    
    if enemies then
        for _, v in ipairs(enemies:GetChildren()) do
            if IsBoneMob(v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                local dist = (v.HumanoidRootPart.Position - root.Position).Magnitude
                if dist < minDist then
                    minDist = dist
                    targetMob = v
                end
            end
        end
    end
    return targetMob
end
function BoneFarm.Start()
    if BoneFarm.IsRunning then return end
    BoneFarm.IsRunning = true

    spawn(function()
        while task.wait(0.3) do
            if _G.AutoFarm_Bone then
                pcall(function()
                    local player = game.Players.LocalPlayer
                    local char = player.Character
                    local root = char and char:FindFirstChild("HumanoidRootPart")
                    if not root or char.Humanoid.Health <= 0 then return end
                    
                    local questUI = player.PlayerGui:FindFirstChild("Main") and player.PlayerGui.Main:FindFirstChild("Quest")
                    
                    if HandleQuest(player, root, questUI) then return end
                    
                    local enemies = workspace:FindFirstChild("Enemies")
                    local targetMob = FindNearestBoneMob(root, enemies)
                    
                    if targetMob then
                        HandleBringMob(targetMob, enemies)
                        
                        local flyHeight = (targetMob.Name == "Possessed Mummy") and 50 or 20
                        if targetMob.Name == "Possessed Mummy" then
                            _tp(CFrame.new(-9564.89, 85.10, 6220.95) * CFrame.new(0, flyHeight, 0))
                        else
                            _tp(targetMob.HumanoidRootPart.CFrame * CFrame.new(0, flyHeight, 0))
                        end
                        
                        repeat 
                            task.wait()
                            getgenv().OnFarm = true
                            shouldTween = true
                            
                            if targetMob.Name == "Possessed Mummy" and targetMob.HumanoidRootPart.Position.Y < 50 then
                                targetMob.HumanoidRootPart.CFrame = CFrame.new(MOB_POSITIONS["Possessed Mummy"])
                            end
                            
                            Attack.Kill(targetMob, true)
                        until not _G.AutoFarm_Bone or not targetMob.Parent or targetMob.Humanoid.Health <= 0
                    else
                        _tp(STAND_POS)
                        lastBringTime = 0
                        while _G.AutoFarm_Bone and not workspace.Enemies:FindFirstChildOfClass("Model") and (STAND_POS.Position - root.Position).Magnitude > 50 do
                            task.wait(0.2)
                        end
                    end
                end)
            end
        end
    end)
end

return BoneFarm
