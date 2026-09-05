MODULE_URL = "https://raw.githubusercontent.com/jeuwiw36/Neji_Hub_Rewrite/refs/heads/main/module.lua"

ok, CoreOrError = pcall(function()
    return loadstring(game:HttpGet(MODULE_URL))()
end)
if not ok then
    warn("NejiHub module failed to load: " .. tostring(CoreOrError))
    return
end
NejiHubCore = CoreOrError

url = "https://i.ibb.co/pjfy1w8W/nejia.png"
fileName = "NejiHub_image#1.png"

imageData = game:HttpGet(url)
writefile(fileName, imageData)
assetPath = getcustomasset(fileName)

redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Library/refs/heads/main/redz-V5-remake/main.luau"))()
Window = redzlib:MakeWindow({
    Title = "Neji Hub ",
    SubTitle = "by @jeuwiw36",
    SaveFolder = "Nejihub.json"
})

Minimizer = Window:NewMinimizer({
  KeyCode = Enum.KeyCode.LeftControl
})

MobileButton = Minimizer:CreateMobileMinimizer({
  Image = assetPath,
  BackgroundColor3 = Color3.fromRGB(0, 255, 254)
})

Tabs = {
    Info = Window:MakeTab({ Title = "Tab Info And Status", Icon = "Info" }),
    Main = Window:MakeTab({ Title = "Tab Farming", Icon = "rbxassetid://7733960981" }),
    Settings = Window:MakeTab({ Title = "Tab Setting", Icon = "rbxassetid://7734053495" }),
    Fish = Window:MakeTab({ Title = "Tab Fishing", Icon = "rbxassetid://127664059821666" }),
    Quests = Window:MakeTab({ Title = "Tab Quest And Item", Icon = "rbxassetid://13075622619" }),
    SeaEvent = Window:MakeTab({ Title = "Tab Sea Event", Icon = "waves" }),
    Race = Window:MakeTab({ Title = "Tab Mirage And Race", Icon = "rbxassetid://11162889532" }),
    Prehistoric = Window:MakeTab({ Title = "Tab Volcano Event", Icon = "tent" }),
    Esp = Window:MakeTab({ Title = "Tab Stats And Esp", Icon = "rbxassetid://7040410130" }),
    Raids = Window:MakeTab({ Title = "Tab Fruit And Raid", Icon = "rbxassetid://11155986081" }),
    Combat = Window:MakeTab({ Title = "Tab Local Player", Icon = "rbxassetid://13075651575" }),
    Travel = Window:MakeTab({ Title = "Tab Teleport", Icon = "locate" }),
    Shop = Window:MakeTab({ Title = "Tab Shopping", Icon = "rbxassetid://6031265976" }),
    Misc = Window:MakeTab({ Title = "Tab Miscellaneous", Icon = "rbxassetid://10709783577" })
}

Tabs.Info:AddSection("Information")

Tabs.Info:AddDiscordInvite({
	Title = "Neji hub | Community",
	Description = "A community for Neji Hub Users - official scripts, updates, and suport in one place.",
	Banner = assetPath, 
	Logo = assetPath,
	Invite = "https://discord.gg/qAWuRsYx4B",
	Members = 36, 
	Online = 67, 
})
Tabs.Info:AddSection("Status Server")

TimeZone = Tabs.Info:AddParagraph("Time Zone", "")





GameTime = Tabs.Info:AddParagraph("Game Time", "")





MirageCheck = Tabs.Info:AddParagraph("Mirage Island", "Status: ")

previousMirageStatus = ""


KitsuneCheck = Tabs.Info:AddParagraph("Kitsune Island", "Status: ")

previousKitsuneStatus = ""


PrehistoricCheck = Tabs.Info:AddParagraph("Prehistoric Island", "Status: ")

previousPrehistoricStatus = ""


FrozenCheck = Tabs.Info:AddParagraph("Frozen Dimension", "Status: ")

previousFrozenStatus = ""


CakePrinceStatus = Tabs.Info:AddParagraph("Cake Prince", "")



RipIndraCheck = Tabs.Info:AddParagraph("Rip Indra", "Status: ")

previousRipStatus = ""


DoughKingCheck = Tabs.Info:AddParagraph("Dough King", "Status: ")

previousDoughStatus = ""


FullMoonCheck = Tabs.Info:AddParagraph("Full Moon", "")



LegendarySwordCheck = Tabs.Info:AddParagraph("Legendary Sword", "Status: ")



BoneCount = Tabs.Info:AddParagraph("Bone", "")


RFSubmarineWorkerSpeak = replicated.Modules.Net["RF/SubmarineWorkerSpeak"]
WeaponDropdown = Tabs.Main:AddDropdown({
    Name = "Select Weapon",
    Options = {"Melee","Sword","Blox Fruit","Gun"},
    Default = "Melee",
    Callback = function(Value) return ModuleWeaponDropdown(Value) end})



Tabs.Main:AddDropdown({
    Name = "UI Scale",
    Options = {"Small", "Normal", "Big"},
    Default = "Normal",
    Callback = function(Value) return ModuleUI2(Value) end
})

Tabs.Main:AddSection("Farming")

FarmLevel = Tabs.Main:AddToggle({
    Name = "Auto Farm Level",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleFarmLevel(Value) end
})


ClosetMons = Tabs.Main:AddToggle({
Name = "Auto Farm Nearest", 
Description = "", 
Default = false, 
Callback = function(Value) return ModuleClosetMons(Value) end})

FactoryRaids = Tabs.Main:AddToggle({
Name = "Auto Factory Raid", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFactoryRaids(Value) end})


CastleRaids = Tabs.Main:AddToggle({
Name = "Auto Pirate Raid", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleCastleRaids(Value) end})





Ecto = Tabs.Main:AddToggle({
Name = "Auto Farm Ectoplasm", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleEcto(Value) end})


Tabs.Main:AddSection("Chest")

ChestTW = Tabs.Main:AddToggle({
Name = "Auto Farm Chest", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW(Value) end})


ChestBP = Tabs.Main:AddToggle({
    Name = "Auto Chest Bypass", 
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleChestBP(Value) end
})

StopI = Tabs.Main:AddToggle({
Name = "Stop Items", 
Description = "", 
Default = true,
Callback = function(Value) return ModuleWeaponDropdown0(Value) end})



Tabs.Main:AddSection("Collect Berry")

Berry = Tabs.Main:AddToggle({
Name = "Auto Farm Berry", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown1(Value) end})




BerryH = Tabs.Main:AddToggle({
Name = "Auto Farm Berry + Hop", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown2(Value) end})



Tabs.Main:AddSection("Farm Mob")
if World1 then
    Tabs.Main:AddDropdown({
        Name = "Select Mob",
        Default = Bandit,
        Options = {
            "Bandit", "Monkey", "Gorilla", "Pirate", "Brute",
            "Desert Bandit", "Desert Officer", "Snow Bandit", "Snowman",
            "Chief Petty Officer", "Sky Bandit", "Dark Master", "Toga Warrior",
            "Gladiator", "Military Soldier", "Military Spy",
            "Fishman Warrior", "Fishman Commando",
            "God's Guard", "Shanda", "Royal Squad", "Royal Soldier",
            "Galley Pirate", "Galley Captain",
        },
        Callback = function(Value) return ModuleWeaponDropdown3(Value) end
    })
end
if World2 then
    Tabs.Main:AddDropdown({
        Name = "Select Mob",
        Default = Raider,
        Options = {
            "Raider", "Mercenary", "Swan Pirate", "Factory Staff",
            "Marine Lieutenant", "Marine Captain", "Zombie", "Vampire",
            "Snow Trooper", "Winter Warrior", "Lab Subordinate",
            "Horned Warrior", "Magma Ninja", "Lava Pirate",
            "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer",
            "Arctic Warrior", "Snow Lurker", "Sea Soldier", "Water Fighter",
        },
        Callback = function(Value) return ModuleWeaponDropdown4(Value) end
    })
end
if World3 then
    Tabs.Main:AddDropdown({
        Name = "Select Mob",
        Options = {
            "Pirate Millionaire", "Dragon Crew Warrior", "Dragon Crew Archer",
            "Female Islander", "Giant Islander", "Marine Commodore",
            "Marine Rear Admiral", "Fishman Raider", "Fishman Captain",
            "Forest Pirate", "Mythological Pirate", "Jungle Pirate",
            "Musketeer Pirate", "Reborn Skeleton", "Living Zombie",
            "Demonic Soul", "Posessed Mummy", "Peanut Scout",
            "Peanut President", "Ice Cream Chef", "Ice Cream Commander",
            "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker",
            "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief",
            "Candy Rebel", "Candy Pirate", "Snow Demon", "Isle Outlaw",
            "Island Boy", "Sun-kissed Warrior", "Isle Champion",
        },
        Callback = function(Value) return ModuleWeaponDropdown5(Value) end
    })
end
Tabs.Main:AddToggle({
    Name = "Auto Kill Mob",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown6(Value) end
})


Tabs.Main:AddSection("Farm All Island")

Sea1_Islands = {
    ["Pirates"] = {
        CFrame = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929),
        Mobs = {"Bandit"}
    },

    ["Marine"] = {
        CFrame = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929),
        Mobs = {"Trainee"}
    },

    ["Jungle"] = {
        CFrame = CFrame.new(-1600, 36, 150),
        Mobs = {"Monkey", "Gorilla"}
    },

    ["Pirate Village"] = {
        CFrame = CFrame.new(-1100, 4, 3850),
        Mobs = {"Pirate", "Brute"}
    },

    ["Desert"] = {
        CFrame = CFrame.new(1090, 7, 4370),
        Mobs = {"Desert Bandit", "Desert Officer"}
    },

    ["Frozen Village"] = {
        CFrame = CFrame.new(1200, 28, -1500),
        Mobs = {"Snow Bandit", "Snowman"}
    },

    ["Marine Fortress"] = {
        CFrame = CFrame.new(-4500, 20, 4250),
        Mobs = {"Chief Petty Officer"}
    },

    ["Skylands Lower"] = {
        CFrame = CFrame.new(-5000, 700, -2500),
        Mobs = {"Sky Bandit", "Dark Master"}
    },

    ["Prison"] = {
        CFrame = CFrame.new(4875, 6, 735),
        Mobs = {"Prisoner", "Dangerous Prisoner"}
    },

    ["Colosseum"] = {
        CFrame = CFrame.new(-1500, 60, -290),
        Mobs = {"Toga Warrior", "Gladiator"}
    },

    ["Magma Village"] = {
        CFrame = CFrame.new(-5200, 8, 8400),
        Mobs = {"Military Soldier", "Military Spy"}
    },

    ["Underwater City"] = {
        CFrame = CFrame.new(61160, 5, 1819),
        Mobs = {"Fishman Warrior", "Fishman Commando"}
    },

    ["Skylands Upper"] = {
        CFrame = CFrame.new(-7880, 5545, -380),
        Mobs = {"Shanda", "Royal Squad", "Royal Soldier"}
    }
}


Sea2_Islands = {

    ["Kingdom of Rose"] = {
        CFrame = CFrame.new(-321, 73, 297),
        Mobs = {
            "Raider",
            "Mercenary",
            "Swan Pirate",
            "Factory Staff"
        }
    },

    ["Green Zone"] = {
        CFrame = CFrame.new(-2447, 73, -3211),
        Mobs = {
            "Marine Lieutenant",
            "Marine Captain"
        }
    },

    ["Graveyard Island"] = {
        CFrame = CFrame.new(-9515, 142, 5536),
        Mobs = {
            "Zombie",
            "Vampire"
        }
    },

    ["Snow Mountain"] = {
        CFrame = CFrame.new(561, 401, -5306),
        Mobs = {
            "Snow Trooper",
            "Winter Warrior"
        }
    },

    ["Hot and Cold (Cold)"] = {
        CFrame = CFrame.new(-6026, 15, -5062),
        Mobs = {
            "Lab Subordinate",
            "Horned Warrior"
        }
    },

    ["Hot and Cold (Hot)"] = {
        CFrame = CFrame.new(-5478, 15, -5240),
        Mobs = {
            "Magma Ninja",
            "Lava Pirate"
        }
    },

    ["Cursed Ship"] = {
        CFrame = CFrame.new(902, 126, 33071),
        Mobs = {
            "Ship Deckhand",
            "Ship Engineer",
            "Ship Steward",
            "Ship Officer"
        }
    },

    ["Ice Castle"] = {
        CFrame = CFrame.new(6137, 294, -6747),
        Mobs = {
            "Arctic Warrior",
            "Snow Lurker"
        }
    },

    ["Forgotten Island"] = {
        CFrame = CFrame.new(-3043, 238, -10191),
        Mobs = {
            "Sea Soldier",
            "Water Fighter"
        }
    }
}


Sea3_Islands = {

    ["Port Town"] = {
        CFrame = CFrame.new(-290, 44, 5450),
        Mobs = {
            "Pirate Millionaire",
            "Pistol Billionaire"
        }
    },

    ["Hydra Island"] = {
        CFrame = CFrame.new(5228, 604, 345),
        Mobs = {
            "Dragon Crew Warrior",
            "Dragon Crew Archer",
            "Female Islander",
            "Giant Islander",
            "Training Dummy"
        }
    },

    ["Great Tree"] = {
        CFrame = CFrame.new(2682, 1682, -7190),
        Mobs = {
            "Marine Commodore",
            "Marine Rear Admiral"
        }
    },

    ["Floating Turtle"] = {
        CFrame = CFrame.new(-12000, 331, -8500),
        Mobs = {
            "Forest Pirate",
            "Mythological Pirate",
            "Jungle Pirate",
            "Musketeer Pirate",
            "Fishman Raider",
            "Fishman Captain"
        }
    },

    ["Haunted Castle"] = {
        CFrame = CFrame.new(-9515, 142, 5536),
        Mobs = {
            "Reborn Skeleton",
            "Living Zombie",
            "Demonic Soul",
            "Posessed Mummy"
        }
    },

    ["Sea of Treats"] = {
        CFrame = CFrame.new(-1145, 13, -14450),
        Mobs = {
            "Peanut Scout",
            "Peanut President",
            "Ice Cream Commander",
            "Cookie Crafter",
            "Cake Guard",
            "Baking Staff",
            "Head Baker",
            "Cocoa Warrior",
            "Chocolate Bar Battler",
            "Sweet Thief",
            "Candy Rebel"
        }
    },

    ["Tiki Outpost"] = {
        CFrame = CFrame.new(-16200, 90, -17300),
        Mobs = {
            "Isle Outlaw",
            "Island Boy",
            "Sun-kissed Warrior",
            "Isle Champion"
        }
    },

    ["Submerged Island"] = {
        CFrame = CFrame.new(-3200, -10, -10000),
        Mobs = {
            "Reef Bandit",
            "Coral Pirate",
            "Sea Chanter",
            "Ocean Prophet",
            "High Disciple",
            "Grand Devotee"
        }
    }
}


if World1 then
    Tabs.Main:AddDropdown({
        Name = "Select Island",
        Options = {"Pirates", "Marine", "Jungle", "Pirate Village", "Desert", "Frozen Village", "Marine Fortress", "Skylands Lower", "Prison", "Colosseum", "Magma Village", "Underwater City", "Skylands Upper"},
        Callback = function(Value) return ModuleWeaponDropdown7(Value) end
    })
end

if World2 then
    Tabs.Main:AddDropdown({
        Name = "Select Island",
        Options = {"Kingdom of Rose", "Green Zone", "Graveyard Island", "Snow Mountain", "Hot and Cold (Cold)", "Hot and Cold (Hot)", "Cursed Ship", "Ice Castle", "Forgotten Island"},
        Callback = function(Value) return ModuleWeaponDropdown8(Value) end
    })
end

if World3 then
    Tabs.Main:AddDropdown({
        Name = "Select Island",
        Options = {"Port Town", "Hydra Island", "Great Tree", "Floating Turtle", "Haunted Castle", "Sea of Treats", "Tiki Outpost", "Submerged Island"},
        Callback = function(Value) return ModuleWeaponDropdown9(Value) end
    })
end
IslandData = nil
if World1 then
    IslandData = Sea1_Islands
elseif World2 then
    IslandData = Sea2_Islands
elseif World3 then
    IslandData = Sea3_Islands
end
Tabs.Main:AddToggle({
    Name = "Auto Farm All Island",
    Default = false,
    Callback = function(Value) return ModuleUI20(Value) end
})




Tabs.Main:AddSection("Farm Elite Hunter")

Process = Tabs.Main:AddParagraph("Elites Process", "")


EliteHunter = Tabs.Main:AddParagraph("Elite Spawn", "Status: ")


EliteQ = Tabs.Main:AddToggle({
    Name = "Auto Farm Elite",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI21(Value) end})



EliteH = Tabs.Main:AddToggle({
	Name = "Auto Farm Elite + Hop",
	Description = "",
	Default = false,
	Callback = function(Value) return ModuleUI22(Value) end})







Tabs.Main:AddSection("Farm Rip Indra")

Tabs.Main:AddToggle({
Name = "Auto Attack Rip Indra", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI23(Value) end})


Tabs.Main:AddToggle({
Name = "Auto Unlocked Haki", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI24(Value) end})
;
;
;


Tabs.Main:AddSection("Farming Cake")
MobKilled = Tabs.Main:AddParagraph("Cake Princes", "")


Cake = Tabs.Main:AddToggle({
    Name = "Auto Farm Cake Prince",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI25(Value) end
})

-- ========== HÀM TELEPORT DỰ PHÒNG ==========

_G._tp = _G._tp or teleport

-- ========== HÀM TWEEN VÀ CHỜ HOÀN TẤT ==========


-- ========== VÒNG LẶP CHÍNH ==========


CakeQ = Tabs.Main:AddToggle({
Name = "Accept Quests", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI26(Value) end
})


CakeSM = Tabs.Main:AddToggle({
    Name = "Auto Summon Cake Prince",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI27(Value) end})




Tabs.Main:AddToggle({
    Name = "Auto Dough King [Fully]",
    Default = false,
    Callback = function(Value) return ModuleUI28(Value) end
})


Tabs.Main:AddToggle({
    Name = "Auto Farm Dough King",
    Default = false,
    Callback = function(Value) return ModuleUI29(Value) end
})


Tabs.Main:AddToggle({
    Name = "Auto Farm Dough King + Hop",
    Default = false,
    Callback = function(Value) return ModuleFarmLevel0(Value) end
})







Tabs.Main:AddSection("Farming Bone")

CheckingBone = Tabs.Main:AddParagraph("Bones", "")


Tabs.Main:AddToggle({
    Name = "Auto Farm Bone",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleFarmLevel1(Value) end
})



BoneQ = Tabs.Main:AddToggle({
Name = "Accept Quests", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel2(Value) end
})        



Tabs.Main:AddToggle({
Name = "Auto Soul Reaper", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel3(Value) end})

RanBone = Tabs.Main:AddToggle({
Name = "Auto Random Bones", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel4(Value) end})

Lucky = Tabs.Main:AddToggle({
Name = "Auto Try Luck Gravestone", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel5(Value) end})

Pray = Tabs.Main:AddToggle({
Name = "Auto Pray Gravestone", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel6(Value) end})



Tabs.Main:AddSection("Tyrant of the Skies")

TyrantStatus = Tabs.Main:AddParagraph("Boss Spawn", "")

EyeStatus = Tabs.Main:AddParagraph("Check Status Eyes", "")





FarmTyrant = Tabs.Main:AddToggle({
Name = "Auto Farm Boss TOTS", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel7(Value) end})



FarmPhaBinh = Tabs.Main:AddToggle({
Name = "Auto Summon Boss", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel8(Value) end})





PhaBinhPoints = {
    CFrame.new(-16332.5263671875, 158.07200622558594, 1440.324951171875),
    CFrame.new(-16288.609375, 158.16700744628906, 1470.3680419921875),
    CFrame.new(-16245.412109375, 158.43699645996094, 1463.365966796875),
    CFrame.new(-16212.46875, 158.16700744628906, 1466.343994140625),
    CFrame.new(-16211.9462890625, 158.07200622558594, 1322.39794921875),
    CFrame.new(-16260.921875, 154.92100524902344, 1323.615966796875),
    CFrame.new(-16297.0595703125, 159.322998046875, 1317.2239990234375),
    CFrame.new(-16335.0966796875, 159.33399963378906, 1324.885986328125),
}




Tabs.Main:AddSection("Farm Material")

Test = Tabs.Main:AddDropdown({
Name = "Choose Material",
		Description = "",
		Options = MaterialList,
		Callback = function(Value) return ModuleFarmLevel9(Value) end
		})
Toggle = Tabs.Main:AddToggle({
Name = "Auto Farm Materials", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleClosetMons0(Value) end})



Tabs.Main:AddSection("Farm Boss")

		BossDropdown = Tabs.Main:AddDropdown({
		Name = "Select Boss",
		Description = "",
		Options = BossList,
		Callback = function(value) return ModuleClosetMons1(value) end
		})

FarmBoss = Tabs.Main:AddToggle({
    Name = "Auto Farm Boss",
    Description = "",
    Default = false,
    Callback = function(value) return ModuleClosetMons2(value) end
})


BossQ = Tabs.Main:AddToggle({
    Name = "Accept Quests",
    Description = "",
    Default = true,
    Callback = function(Value) return ModuleClosetMons3(Value) end
})

FarmAllBoss = Tabs.Main:AddToggle({
   Name = "Auto Farm All Boss",
    Default = false,
Callback = function(Value) return ModuleClosetMons4(Value) end})



Tabs.Main:AddSection("Farming Mastery")
posMastery = {"Cake","Bone"}
Mastery_Config = Tabs.Main:AddDropdown({
Name = "Choose Island",
		Description = "",
		Options = posMastery,
		Default = Bone,
		Callback = function(Value) return ModuleClosetMons5(Value) end})
MasteryFruits = Tabs.Main:AddToggle({
Name = "Auto Mastery Fruits", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleClosetMons6(Value) end})


MasteryGun = Tabs.Main:AddToggle({
Name = "Auto Mastery Gun", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleClosetMons7(Value) end})

MasterySword = Tabs.Main:AddToggle({
Name = "Auto Mastery All Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleClosetMons8(Value) end})







Tabs.Settings:AddSection("Settings / Configure")

Initialize = Tabs.Settings:AddToggle({
Name = "Fast Attack", 
Description = "", 
Default = true,
Callback = function(Value) return ModuleClosetMons9(Value) end})
Bringmob = Tabs.Settings:AddToggle({
Name = "Bring Mobs", 
Description = "", 
Default = true,
Callback = function(Value) return ModuleFactoryRaids0(Value) end})
Tabs.Settings:AddToggle({
    Name = "Auto Hop Server with time",
    Default = false,
    Callback = function(Value) return ModuleFactoryRaids1(Value) end
})

Spawn(function()
    while Wait(1) do
        if _G.AutoHopServer then
            pcall(function()
                if not _G.HopTimer then
                    _G.HopTimer = tick()
                end

                if tick() - _G.HopTimer >= _G.HopDelay then
                    _G.HopTimer = tick()

                    if syn and syn.queue_on_teleport then
                        syn.queue_on_teleport(
                            "loadstring(game:HttpGet('https://pastefy.app/iiFOhcot/raw'))()"
                        )
                    end

                    game:GetService("TeleportService")
                        :Teleport(game.PlaceId, game.Players.LocalPlayer)
                end
            end)
        end
    end
end)
Tabs.Settings:AddSlider({
    Name = "Hop Delay (Minutes)",
    Min = 5,
    Max = 120,
    Default = 30,
    Increment = 1,
    Callback = function(Value) return ModuleFactoryRaids2(Value) end
})
Tabs.Settings:AddToggle({
    Name = "Auto Set Spawn Point",
    Default = false,
    Callback = function(Value) return ModuleFactoryRaids3(Value) end
})
BusuAura = Tabs.Settings:AddToggle({
Name = "Auto Turn on Buso", 
Description = "", 
Default = true,
Callback = function(Value) return ModuleFactoryRaids4(Value) end})

Tabs.Settings:AddToggle({
    Name = "Auto Haki Observation",
    Default = false,
    Callback = function(Value) return ModuleFactoryRaids5(Value) end
})

RaceV3Aura = Tabs.Settings:AddToggle({
Name = "Auto Turn on Race V3", 
Description = "", 
Default = false,
Flag = "AutoTurnonRaceV3",
Callback = function(Value) return ModuleFactoryRaids6(Value) end})

RaceV4Aura = Tabs.Settings:AddToggle({
Name = "Auto Turn on Race V4", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFactoryRaids7(Value) end})


RandomAround = Tabs.Settings:AddToggle({
Name = "Auto Turn on Spin  xyz", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFactoryRaids8(Value) end})
SafeModes = Tabs.Settings:AddToggle({
Name = "Safe Mode", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFactoryRaids9(Value) end})


DisableHitVFX = Tabs.Settings:AddToggle({
    Name = "Remove Hit VFX",
    Description = "Removes slash and sword visual effects for better visibility",
    Default = false,
    Callback = function(Value) return ModuleCastleRaids0(Value) end
})

HitEffects = {"SlashHit", "CurvedRing", "SwordSlash", "SlashTail"}


RmvVFX = Tabs.Settings:AddToggle({
Name = "Remove Death & Respawned VFX", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleCastleRaids1(Value) end})
	
DisblesNotify = Tabs.Settings:AddToggle({
Name = "Disable Notify", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleCastleRaids2(Value) end})
      

Tabs.Settings:AddToggle({
    Name = "Anti AFK",
    Default = true,
    Callback = function(Value) return ModuleCastleRaids3(Value) end
})

Tabs.Settings:AddToggle({
    Name = "Auto Anti - Admin Join Server",
    Description = "",
    Default = true,
    Callback = function(Value) return ModuleCastleRaids4(Value) end
})


Tabs.Settings:AddToggle({
    Name = "No Clip",
    Default = false,
    Callback = function(Value) return ModuleCastleRaids5(Value) end
})


Tabs.Esp:AddSection("Stats Upgrade")

StatusSelect = Tabs.Esp:AddSlider({
Name = "Stats Value",
Description = "",
Default = 10,
Min = 0,
Max = 1000,
Rounding = 1, 
Callback = function(Value) return ModuleCastleRaids6(Value) end})

StatsUpg = Tabs.Esp:AddToggle({
Name = "Auto Melee", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleCastleRaids7(Value) end})


StatsUpg = Tabs.Esp:AddToggle({
Name = "Auto Swords", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleCastleRaids8(Value) end})

StatsUpg = Tabs.Esp:AddToggle({
Name = "Auto Gun", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleCastleRaids9(Value) end})

StatsUpg = Tabs.Esp:AddToggle({
Name = "Auto Blox Fruit", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleEcto0(Value) end})

StatsUpg = Tabs.Esp:AddToggle({
Name = "Auto Defense", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleEcto1(Value) end})


Tabs.Fish:AddSection("Fishing")

Tabs.Fish:AddDropdown({
    Name = "Select Fishing Rod",
    Description = "",
    Options = {"Fishing Rod", "Gold Rod", "Shark Rod", "Shell Rod", "Treasure Rod"},
    Default = "Fishing Rod",
    Callback = function(Value) return ModuleEcto2(Value) end
})

BaitDropdown = Tabs.Fish:AddDropdown({
    Name = "Select Bait",
    Description = "",
    Options = {"Basic Bait", "Kelp Bait", "Good Bait", "Abyssal Bait", "Frozen Bait", "Epic Bait", "Carnivore Bait"},
    Default = "Basic Bait",
    Callback = function(Value) return ModuleEcto3(Value) end
})

BuyBaitToggle = Tabs.Fish:AddToggle({
    Name = "Auto Buy Bait",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleEcto4(Value) end
})







FishingToggle = Tabs.Fish:AddToggle({
    Name = "Auto Fishing",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleEcto5(Value) end
})

Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
Workspace = game:GetService("Workspace")
ReplicatedStorage = game:GetService("ReplicatedStorage")
FishReplicated = ReplicatedStorage:WaitForChild("FishReplicated")
FishingRequest = FishReplicated:WaitForChild("FishingRequest")
Config = require(FishReplicated.FishingClient.Config)
GetWaterHeight = require(ReplicatedStorage.Util.GetWaterHeightAtLocation)
MaxDistance = Config.Rod.MaxLaunchDistance




FishingQ = Tabs.Fish:AddToggle({
Name = "Auto Quest Fishing", 
Description = "",
Default = false,
Callback = function(Value) return ModuleEcto6(Value) end})


Players3 = game:GetService("Players")
LocalPlayer3 = Players3.LocalPlayer
ReplicatedStorage3 = game:GetService("ReplicatedStorage")
RFJobsRemoteFunction3 = ReplicatedStorage3.Modules.Net:WaitForChild("RF/JobsRemoteFunction")






QuestToggle = Tabs.Fish:AddToggle({
    Name = "Auto Complete Quest",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleEcto7(Value) end
})





SellFishToggle = Tabs.Fish:AddToggle({
    Name = "Auto Sell Fish",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleEcto8(Value) end
})





SpamSkillZ = Tabs.Fish:AddToggle({
Name = "Auto Spam Skill Z", 
Description = "",
Default = false,
Callback = function(Value) return ModuleEcto9(Value) end})


ReplicatedStorage4 = game:GetService("ReplicatedStorage")
RFJobToolAbilities4 = ReplicatedStorage4.Modules.Net:WaitForChild("RF/JobToolAbilities")



TravelDress = Tabs.Quests:AddToggle({
Name = "Auto Quest Sea 2", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW0(Value) end})

Zou = Tabs.Quests:AddToggle({
Name = "Auto Quest Sea 3", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW1(Value) end})





Tabs.Quests:AddSection("Tushita + Yama")

Q = Tabs.Quests:AddToggle({
Name = "Auto Tushita Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW2(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Yama Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW3(Value) end})


Tabs.Quests:AddSection("Skull Guitars / Misc")
CheckSoul = Tabs.Quests:AddParagraph("Skull Guitar Quests", "")

Tabs.Quests:AddToggle({
Name = "Auto Skull Guitar", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW4(Value) end})





Tabs.Quests:AddToggle({
Name = "Auto Farm Material Skull Guitar", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW5(Value) end})


Tabs.Quests:AddSection("Cursed Dual Katana")
CheckCDK = Tabs.Quests:AddParagraph("Number Cursed dual katana quests", "Quest Numbers :")

Q = Tabs.Quests:AddToggle({
Name = "Auto Get CDK [ Last Quest ]", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW6(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Yama CDK", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW7(Value) end})



Q = Tabs.Quests:AddToggle({
Name = "Auto Tushita CDK", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestTW8(Value) end})

Tabs.Quests:AddSection("True Triple Katana Sword")
Tabs.Quests:AddButton({
Name = "Buy Legendary Sword",
Description = "",
Callback = function() return ModuleChestTW9() end})
Tabs.Quests:AddButton({
Name = "Buy True Triple Katana Sword", 
Description = "",
Callback = function() return ModuleChestBP0() end})
Q = Tabs.Quests:AddToggle({
Name = "Tween to Legendary Sword Dealer", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP1(Value) end})


Tabs.Quests:AddSection("Pole / God Enal's")
Q = Tabs.Quests:AddToggle({
Name = "Auto Pole V1", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP2(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Pole V2 [Beta]", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP3(Value) end})

Tabs.Quests:AddToggle({
Name = "Auto Saw Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP4(Value) end})


Q = Tabs.Quests:AddToggle({
Name = "Auto Saber Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP5(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Cybrog", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP6(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Usoap's Hat", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP7(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Bisento V2", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP8(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Warden Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleChestBP9(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Marine Coat", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown00(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Swan Coat", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown01(Value) end})


Tabs.Quests:AddSection("Rengoku Sword")
Q = Tabs.Quests:AddToggle({
Name = "Auto Rengoku Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown02(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Key Rengoku", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown03(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Dragon Trident", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown04(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Long Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown05(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Black Spikey", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown06(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Dark Blade V3", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown07(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Midnight Blade", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown08(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Darkbeard", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown09(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Unlocked DonSwan", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown10(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Swan Glasses", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown11(Value) end})


Tabs.Quests:AddSection("Cavender + Twin Hooks + Bigmom")
Q = Tabs.Quests:AddToggle({
Name = "Auto Bigmom", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown12(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Canvendish Sword", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown13(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Twin Hooks", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown14(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Serpent Bow", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown15(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Lei Accessory", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown16(Value) end})


Tabs.Quests:AddSection("Buso/Aura Colours")
Q = Tabs.Quests:AddToggle({
Name = "Auto Teleport Barista Cousin", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown17(Value) end})

Tabs.Quests:AddButton({
Name = "Buy Buso Colors", 
Description = "",
Callback = function() return ModuleWeaponDropdown18() end})
Q = Tabs.Quests:AddToggle({
Name = "Auto Rainbow Colors", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown19(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Accept Rainbow Quest Faster", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown20(Value) end})

Tabs.Quests:AddSection("Instinct / Observation")
Q = Tabs.Quests:AddToggle({
Name = "Auto Farm Observation", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown21(Value) end})
    

Q = Tabs.Quests:AddToggle({
Name = "Auto Observation V2", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown22(Value) end})




Bartilo = Tabs.Quests:AddToggle({
Name = "Auto Done Bartilo Quest", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown23(Value) end})

CitizenQ = Tabs.Quests:AddToggle({
Name = "Auto Done Citizen Quest", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown24(Value) end})

Q = Tabs.Quests:AddToggle({
Name = "Auto Training Dummy", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown25(Value) end})







Tabs.Quests:AddSection("Fighting Melee Styles")
SuperHuman = Tabs.Quests:AddToggle({
Name = "Auto Superhuman", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown26(Value) end})

DeathStep = Tabs.Quests:AddToggle({
Name = "Auto DeathStep", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown27(Value) end})

SharkManV2 = Tabs.Quests:AddToggle({
Name = "Auto Sharkman Karate", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown28(Value) end})

ElectricClaw = Tabs.Quests:AddToggle({
Name = "Auto ElectricClaw", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown29(Value) end})

DragonTalon = Tabs.Quests:AddToggle({
Name = "Auto DragonTalon", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown30(Value) end})

Godhuman = Tabs.Quests:AddToggle({
Name = "Auto Godhuman", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown31(Value) end})

SanguineArt = Tabs.Quests:AddToggle({
Name = "Auto SanguineArt", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown32(Value) end})




Tabs.Race:AddSection("Mystic Island / Full Moon")
FullMOOn = Tabs.Race:AddParagraph("FullMoon Status", "")
Ismirage = Tabs.Race:AddParagraph("Mirage Island Status", "")


Tabs.Race:AddToggle({
Name = "Auto Find Mirage Island", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown33(Value) end})

Tabs.Race:AddToggle({
    Name = "Esp Mirage Island",
    Description = "",
    Value = false,
    Callback = function(Value) return ModuleWeaponDropdown34(Value) end
})
Tabs.Race:AddToggle({
    Name = "Auto Tween To Mirage Island",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown35(Value) end
})


Tabs.Race:AddToggle({
Name = "Auto Tween To Highest Point", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown36(Value) end})

Tabs.Race:AddToggle({
Name = "Auto Collect Gear", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown37(Value) end})

Tabs.Race:AddToggle({
Name = "Change Transparency can see", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown38(Value) end})

Tabs.Race:AddToggle({
Name = "Auto Tween Advanced Fruit Dealer", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown39(Value) end})

Tabs.Race:AddToggle({
Name = "Auto Collect Mirage Chest", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown40(Value) end})



Tabs.Race:AddButton({
Name = "Talk With Stone", 
Description = "",
Callback = function() return ModuleWeaponDropdown41() end})
Tabs.Race:AddToggle({
Name = "Auto Look At Moon", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown42(Value) end})



Tabs.Race:AddToggle({
    Name = "Look Moon + Auto V3", 
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown43(Value) end
})





Tabs.Race:AddSection("Upgrade Races V2 And V3")
RaceMink = Tabs.Race:AddToggle({
Name = "Auto Upgrade Mink", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown44(Value) end})

RaceHuman = Tabs.Race:AddToggle({
Name = "Auto Upgrade Human", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown45(Value) end})

RaceSky = Tabs.Race:AddToggle({
Name = "Auto Upgrade Angel", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown46(Value) end})

RaceFish = Tabs.Race:AddToggle({
Name = "Auto Upgrade FishMan", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown47(Value) end})



Tabs.Race:AddSection("Trials Quest V4")
CheckTier = Tabs.Race:AddParagraph("Tiers V4 Status", "")

PullLv = Tabs.Race:AddToggle({
Name = "Auto Pull Lever", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown48(Value) end})

Train = Tabs.Race:AddToggle({
Name = "Auto Train V4", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown49(Value) end})


Tabs.Race:AddButton({
    Name = "Teleport to Temple of Time",
    Description = "",
    Callback = function() return ModuleWeaponDropdown50() end
})
Tabs.Race:AddButton({
Name = "Teleport to Ancient One", 
Description = "",
Callback = function() return ModuleWeaponDropdown51() end
})
Tabs.Race:AddButton({
Name = "Teleport to Ancient Clock", 
Description = "",
Callback = function() return ModuleWeaponDropdown52() end
})
Doors = Tabs.Race:AddToggle({
Name = "Auto Teleport to Race Doors", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown53(Value) end})
                   
Trials = Tabs.Race:AddToggle({
Name = "Auto Complete Trial Race", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown54(Value) end})






AutoKill = Tabs.Race:AddToggle({
Name = "Auto Kill Player After Trial", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown55(Value) end})


Tabs.Prehistoric:AddSection("Dojo Quest")
Tabs.Prehistoric:AddButton({
    Title = "Teleport To Dragon Dojo",
    Callback = function() return ModuleWeaponDropdown56() end
})
DojoQ = Tabs.Prehistoric:AddToggle({
Name = "Auto Dojo Trainer", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown57(Value) end})


BlazeEM = Tabs.Prehistoric:AddToggle({
Name = "Auto Dragon Hunter", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown58(Value) end})






Tabs.Prehistoric:AddSection("Drago Trial")

Toggle = Tabs.Prehistoric:AddToggle({
Name = "Tween To Upgrade Droco Trial", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown59(Value) end})

Toggle = Tabs.Prehistoric:AddToggle({
Name = "Auto Drago (V1)", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown60(Value) end})

fireflower = Tabs.Prehistoric:AddToggle({
Name = "Auto Drago (V2)", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown61(Value) end})

Toggle = Tabs.Prehistoric:AddToggle({
Name = "Auto Drago (V3)", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown62(Value) end})

Toggle = Tabs.Prehistoric:AddToggle({
Name = "Auto Relic Drago Trial [Beta]", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown63(Value) end})

Toggle = Tabs.Prehistoric:AddToggle({
Name = "Auto Train Drago v4", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown64(Value) end})

dragoTpVolcano = Tabs.Prehistoric:AddToggle({
Name = "Tween to Drago Trials", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown65(Value) end})

bdrago = Tabs.Prehistoric:AddToggle({
Name = "Swap Drago Race", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown66(Value) end})

UpTalon = Tabs.Prehistoric:AddToggle({
Name = "Upgrade Dragon Talon With Uzoth", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown67(Value) end})


Tabs.Prehistoric:AddSection("Volcanic Crafting")

Tabs.Prehistoric:AddButton({
Name = "Craft Dragonheart", 
Description = "",
Callback = function() return ModuleWeaponDropdown68() end
})

Tabs.Prehistoric:AddButton({
Name = "Craft Dragonstorm", 
Description = "",
Callback = function() return ModuleWeaponDropdown69() end
})

Tabs.Prehistoric:AddButton({
    Name = "Craft Dino Hood",
    Callback = function() return ModuleWeaponDropdown70() end
})

Tabs.Prehistoric:AddButton({
    Name = "Craft T-Rex Skull",
    Callback = function() return ModuleWeaponDropdown71() end
})


Tabs.Prehistoric:AddSection("Prehistoric Island")
Check_Volcano = Tabs.Prehistoric:AddParagraph("Prehistoric Island Status", "")


Tabs.Prehistoric:AddButton({
    Name = "Craft Volcanic Magnet",
    Callback = function() return ModuleWeaponDropdown72() end
})

Tabs.Prehistoric:AddToggle({
    Name = "Craft Volcanic Magnet",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown73(Value) end
})





Tabs.Prehistoric:AddToggle({
    Name = "Auto Find Prehistoric Island",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown74(Value) end
})

targetDestination = nil



Tabs.Prehistoric:AddToggle({
    Name = "Auto Start Prehistoric Event",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown75(Value) end
})





Tabs.Prehistoric:AddToggle({
    Name = "Auto Patch Prehistoric Event",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown76(Value) end
})










Kaura = Tabs.Prehistoric:AddToggle({
    Name = "Kill Aura",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown77(Value) end})

Range = 500
Delay = 2   


Vocan = Tabs.Prehistoric:AddToggle({
Name = "Auto Collect Dino Bones", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown78(Value) end})

Vocan = Tabs.Prehistoric:AddToggle({
Name = "Auto Collect Dragon Eggs", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown79(Value) end})

Toggle = Tabs.Prehistoric:AddToggle({
Name = "Auto Reset When Complete Volcano", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown80(Value) end})


Tabs.SeaEvent:AddSection("Sea Event / Setting Sail")
ListSeaBoat={"Guardian","PirateGrandBrigade","MarineGrandBrigade","PirateBrigade","MarineBrigade","PirateSloop","MarineSloop","Beast Hunter"}
ListSeaZone={"Lv 1","Lv 2","Lv 3","Lv 4","Lv 5","Lv 6","Lv Infinite"}


Tabs.SeaEvent:AddButton({
    Name = "Remove Lighting Effect",
    Callback = function() return ModuleWeaponDropdown81() end
})

Tabs.SeaEvent:AddToggle({
    Name = "Ship Speed Modifier",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown82(Value) end
})
game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().SpeedBoat then
        local plr = game:GetService("Players").LocalPlayer
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            if plr.Character.Humanoid.Sit then
                for _, boat in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                    local seat = boat:FindFirstChildWhichIsA("VehicleSeat")
                    if seat then
                        seat.MaxSpeed = SetSpeedBoat
                    end
                end
            end
        end
    end
end)
Tabs.SeaEvent:AddSlider({
    Name = "Ship Speed",
    Min = 0,
    Max = 1000,
    Increment = 1,
    Default = 300,
    Callback = function(Value) return ModuleWeaponDropdown83(Value) end
})
Tabs.SeaEvent:AddToggle({
    Name = "Auto Press W",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown84(Value) end
})

Tabs.SeaEvent:AddToggle({
    Name = "No Clip Ship",
    Default = false,
    Callback = function(Value) return ModuleWeaponDropdown85(Value) end
})


Tabs.SeaEvent:AddSection("Crafting Items")


Tabs.SeaEvent:AddButton({
Name = "Craft SharkTooth", 
Description = "",
Callback = function() return ModuleWeaponDropdown86() end
})

Tabs.SeaEvent:AddButton({
Name = "Craft TerrorJaw", 
Description = "",
Callback = function() return ModuleWeaponDropdown87() end
})

Tabs.SeaEvent:AddButton({
Name = "Craft SharkAnchor", 
Description = "",
Callback = function() return ModuleWeaponDropdown88() end
})

Tabs.SeaEvent:AddButton({
Name = "Craft LeviathanCrown", 
Description = "",
Callback = function() return ModuleWeaponDropdown89() end
})
 
Tabs.SeaEvent:AddButton({
Name = "Craft LeviathanShield", 
Description = "",
Callback = function() return ModuleWeaponDropdown90() end
})

Tabs.SeaEvent:AddButton({
Name = "Craft LeviathanBoat", 
Description = "",
Callback = function() return ModuleWeaponDropdown91() end
})

Tabs.SeaEvent:AddButton({
Name = "Craft LegendaryScroll", 
Description = "",
Callback = function() return ModuleWeaponDropdown92() end
})

Tabs.SeaEvent:AddButton({
Name = "Craft MythicalScroll", 
Description = "",
Callback = function() return ModuleWeaponDropdown93() end
})
Tabs.SeaEvent:AddSection("Choose Sea Event")

Q = Tabs.SeaEvent:AddDropdown({
    Name = "Select Boats",
	Options = ListSeaBoat,
	Callback = function(Value) return ModuleWeaponDropdown94(Value) end
})
Tabs.SeaEvent:AddButton({
Name = "Buy Boats", 
Description = "",
Callback = function() return ModuleWeaponDropdown95() end})
Q = Tabs.SeaEvent:AddDropdown({
Name = "Select Sea Level",
Options = ListSeaZone,
Callback = function(Value) return ModuleWeaponDropdown96(Value) end})
Q = Tabs.SeaEvent:AddToggle({
Name = "Auto Sail Boat", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown97(Value) end})



Tabs.SeaEvent:AddSection("Entity Sea Event")

Tabs.SeaEvent:AddToggle({
Name = "Auto Shark", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown98(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Piranha", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleWeaponDropdown99(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Terror Shark", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI200(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Fish Crew Member", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI201(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Haunted Crew Member", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI202(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Attack PirateGrandBrigade", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI203(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Attack Fish Boat", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI204(Value) end})

Tabs.SeaEvent:AddToggle({
Name = "Auto Attack Sea Beast", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI205(Value) end})



Tabs.SeaEvent:AddSection("Kitsune Island / Event")
Check_Kitsu = Tabs.SeaEvent:AddParagraph("Kitsune Island Status", "")


Tabs.SeaEvent:AddToggle({
Name = "Auto Find Kitsune Island", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI206(Value) end})


Tabs.SeaEvent:AddToggle({
Name = "Auto Teleport to Shrine Actived", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI207(Value) end})


Tabs.SeaEvent:AddToggle({
Name = "Auto Collect Azure Ember", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI208(Value) end})


Tabs.SeaEvent:AddToggle({
Name = "Auto Trade Azure Ember", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI209(Value) end})


Tabs.SeaEvent:AddButton({
Name = "Trade Items Azure", 
Description = "",
Callback = function() return ModuleUI210() end})

Tabs.SeaEvent:AddButton({
Name = "Talk with kitsune statue", 
Description = "",
Callback = function() return ModuleUI211() end})

Tabs.SeaEvent:AddSection("Frozen Dimension Event")

FloD = Tabs.SeaEvent:AddParagraph("FrozenDimension Status", "")


SPYING = Tabs.SeaEvent:AddParagraph("Spy Status", "")


Tabs.SeaEvent:AddButton({
    Name = "Buy Spy",
    Callback = function() return ModuleUI212() end
})


Tabs.SeaEvent:AddToggle({
Name = "Auto Teleport Frozen Dimension", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI213(Value) end})


Tabs.SeaEvent:AddToggle({
Name = "Auto Drive To Hydra Island", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI214(Value) end})


Tabs.SeaEvent:AddToggle({
Name = "Auto Attack Leviathan", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI215(Value) end})


Tabs.Esp:AddSection("Esp")



Number = math.random(1, 1000000)


plr = game:GetService('Players').LocalPlayer
replicated = game:GetService("ReplicatedStorage")
TeamSelf = plr.Team



































Tabs.Esp:AddToggle({
    Name = "Esp Berry",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI216(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Player",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI217(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Chest",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI218(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Fruit",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI219(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Island",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI220(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Flower",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI221(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Legendary Sword",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI222(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Haki Color",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI223(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Gear",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI224(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp SeaEvent Island",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI225(Value) end
})

Tabs.Esp:AddToggle({
    Name = "Esp Advanced Dealer",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI226(Value) end
})

Tabs.Raids:AddSection("Fruits Options")





stockParagraph = Tabs.Raids:AddParagraph("Stock Fruit", "Loading...")



pcall(function()
    stockParagraph:SetDesc(getFruitStock())
end)


RandomFF = Tabs.Raids:AddToggle({
Name = "Auto Random Fruit", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI227(Value) end})

DropF = Tabs.Raids:AddToggle({
Name = "Auto Drop Fruit", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI228(Value) end})

StoredF = Tabs.Raids:AddToggle({
Name = "Auto Store Fruit", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI229(Value) end})

TwF = Tabs.Raids:AddToggle({
Name = "Auto Tween to Fruit", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI230(Value) end})

BringF = Tabs.Raids:AddToggle({
Name = "Auto Collect Fruit", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI231(Value) end})


Tabs.Raids:AddDropdown({
    Name = "Select Fruit Shop",
    Options = {
        "Rocket-Rocket", "Spin-Spin", "Blade-Blade", "Spring-Spring",
        "Bomb-Bomb", "Smoke-Smoke", "Spike-Spike", "Flame-Flame",
        "Ice-Ice", "Sand-Sand", "Dark-Dark", "Eagle-Eagle",
        "Diamond-Diamond", "Light-Light", "Rubber-Rubber", "Ghost-Ghost",
        "Magma-Magma", "Quake-Quake", "Buddha-Buddha", "Love-Love",
        "Creation-Creation", "Spider-Spider", "Sound-Sound", "Phoenix-Phoenix",
        "Portal-Portal", "Lightning-Lightning", "Pain-Pain", "Blizzard-Blizzard",
        "Gravity-Gravity", "T-Rex-T-Rex", "Mammoth-Mammoth", "Dough-Dough",
        "Shadow-Shadow", "Venom-Venom", "Gas-Gas", "Control-Control",
        "Spirit-Spirit", "Leopard-Leopard", "Yeti-Yeti", "Kitsune-Kitsune",
        "Dragon-Dragon"
    },
    Callback = function(Value) return ModuleUI232(Value) end
})
Tabs.Raids:AddToggle({
    Name = "Auto Buy Fruit Shop",
    Default = false,
    Callback = function(Value) return ModuleUI233(Value) end
})


Tabs.Raids:AddSection("Dungeon Event / Raiding")
DungeonTables = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human","Sand","Phoenix","Dough"}
Q = Tabs.Raids:AddDropdown({
Name = "Select Chip",
Description = "",
Options = DungeonTables,
Callback = function(Value) return ModuleUI234(Value) end})
Q = Tabs.Raids:AddToggle({
Name = "Auto Select Dungeon Chip", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI235(Value) end})
Tabs.Raids:AddToggle({
    Name = "Get Fruit In Inventory Below 1M",
    Default = false,
    Callback = function(Value) return ModuleUI236(Value) end
})

Tabs.Raids:AddButton({
Name = "Buy Dungeon Chips [Beli]", 
Description = "",
Callback = function() return ModuleUI237() end})
Tabs.Raids:AddButton({
Name = "Buy Dungeon Chips [Devil Fruit]", 
Description = "", 
Callback = function() return ModuleUI238() end})


AutoChipBeli = Tabs.Raids:AddToggle({
    Name = "Auto Buy Chip [Beli]",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI239(Value) end
})




AutoChipFruit = Tabs.Raids:AddToggle({
    Name = "Auto Buy Chip [Devil Fruit]",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI240(Value) end
})




StartR = Tabs.Raids:AddToggle({
    Name = "Auto Start Raid",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI241(Value) end
})

-- Kiểm tra người chơi ở World3
if game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
    -- Chỉ chạy khi _G.Auto_StartRaid được bật
    local isAtPosition = false
    
    task.spawn(function()
        while task.wait(0.5) do
            if not _G.Auto_StartRaid then 
                isAtPosition = false -- Reset khi tắt
                continue 
            end
            
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            local targetPos = Vector3.new(-5034.111328125, 315.29510498046875, -2947.7265625)
            
            -- Kiểm tra nếu đã ở vị trí mục tiêu
            if char and char:FindFirstChild("HumanoidRootPart") then
                local currentPos = char.HumanoidRootPart.Position
                local distance = (currentPos - targetPos).Magnitude
                
                -- Nếu chưa đến vị trí hoặc chưa từng tween thì thực hiện tween
                if distance > 10 or not isAtPosition then
                    -- Gọi requestEntrance vào khu vực raid
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, 0.914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
                    
                    -- Tween đến vị trí chỉ định
                    if char and char:FindFirstChild("HumanoidRootPart") then
                        local tweenService = game:GetService("TweenService")
                        local targetCFrame = CFrame.new(-5034.111328125, 315.29510498046875, -2947.7265625)
                        local tweenInfo = TweenInfo.new(
                            2, -- Thời gian tween (giây)
                            Enum.EasingStyle.Linear,
                            Enum.EasingDirection.Out
                        )
                        local tween = tweenService:Create(char.HumanoidRootPart, tweenInfo, {CFrame = targetCFrame})
                        tween:Play()
                        tween.Completed:Wait()
                    end
                    
                    isAtPosition = true -- Đánh dấu đã đến vị trí
                end
            end
            
            -- Bắt đầu chạy code raid tự động
            while task.wait(Sec) do
                if not _G.Auto_StartRaid then 
                    isAtPosition = false -- Reset khi tắt
                    break 
                end

                pcall(function()
                    local plr = game.Players.LocalPlayer
                    local gui = plr:FindFirstChild("PlayerGui")
                    local main = gui and gui:FindFirstChild("Main")
                    local top = main and main:FindFirstChild("TopHUDList")

                    if not top or top.RaidTimer.Visible then return end

                    if not GetBP("Special Microchip") then return end

                    if World2 then
                        local btn = workspace.Map.CircleIsland.RaidSummon2.Button.Main
                        if btn then
                            if btn:FindFirstChild("ProximityPrompt") then
                                fireproximityprompt(btn.ProximityPrompt)
                            elseif btn:FindFirstChild("ClickDetector") then
                                fireclickdetector(btn.ClickDetector)
                            end
                        end
                    end

                    if World3 then
                        local btn = workspace.Map["Boat Castle"].RaidSummon2.Button.Main
                        if btn then
                            if btn:FindFirstChild("ProximityPrompt") then
                                fireproximityprompt(btn.ProximityPrompt)
                            elseif btn:FindFirstChild("ClickDetector") then
                                fireclickdetector(btn.ClickDetector)
                            end
                        end
                    end
                end)
            end
        end
    end)
end

Raiding = Tabs.Raids:AddToggle({
    Name = "Auto Raid + Next Island",
    Description = "Tự động raid và di chuyển đảo kèm Aura Kill (chỉ Island 4 & 5)",
    Default = false,
    Callback = function(Value) return ModuleUI242(Value) end
})

if _G.AuraRadius == nil then
    _G.AuraRadius = 5000
end

if _G.KillCount == nil then
    _G.KillCount = 0
end

if _G.AuraKill == nil then
    _G.AuraKill = false
end

auraIslands = {"Island 4", "Island 5"}
locations = workspace["_WorldOrigin"].Locations






Tabs.Raids:AddToggle({
Name = "Auto Awakening", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI243(Value) end})
	

Tabs.Raids:AddToggle({
    Name = "Auto Teleport To Lab",
    Default = false,
    Callback = function(Value) return ModuleUI244(Value) end
})

Tabs.Raids:AddSection("Items Law/Order Sword")

Tabs.Raids:AddButton({
Name = "Buy Microchip Law", 
Description = "",
Callback = function() return ModuleUI245() end})
Tabs.Raids:AddButton({
Name = "Start Law Raids", 
Description = "",
Callback = function() return ModuleUI246() end})

Tabs.Raids:AddToggle({
    Name = "Auto Buy Microchip Law", 
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI247(Value) end
})



Tabs.Raids:AddToggle({
    Name = "Auto Start Law Raids", 
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI248(Value) end
})



Tabs.Raids:AddToggle({
Name = "Auto Kill Law", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI249(Value) end})


Tabs.Raids:AddSection("Raids Dungeons")

plr = game.Players.LocalPlayer



Tabs.Raids:AddToggle({
    Name = "Auto Farm Dungeon",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI250(Value) end
})

FARM_RANGE = 5000




Tabs.Raids:AddToggle({
    Name = "TP Exit (1)",
    Default = false,
    Callback = function(v) return ModuleUI251(v) end
})


tp1Done = false





Tabs.Raids:AddToggle({
    Name = "TP Exit (2)",
    Default = false,
    Callback = function(v) return ModuleUI252(v) end
})

tp2Done = false



Tabs.Raids:AddToggle({
    Name = "TP Exit (3)",
    Default = false,
    Callback = function(v) return ModuleUI253(v) end
})

tp3Done = false





Tabs.Raids:AddToggle({
    Name = "TP Exit (4)",
    Default = false,
    Callback = function(v) return ModuleUI254(v) end
})

tp4Done = false









Tabs.Combat:AddSection("Combat / AimBot")

__indexPlayer = Tabs.Combat:AddParagraph("All Players On Server", "")



__AimBotTurn = Tabs.Combat:AddParagraph("Aimbot Status", "")






PlrList = {}   
for _, v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(PlrList, v.Name)
end

Tabs.Combat:AddDropdown({
    Name = "Select Players",
    Description = "",
    Options = PlrList,
    Callback = function(Value) return ModuleUI255(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Teleport To Select Players",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI256(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Spectate Select Players",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI257(Value) end
})

Tabs.Combat:AddDropdown({
    Name = "Select Aim Method",
    Description = "",
    Options = {"Aim Player","Nearest Aim"},
    Callback = function(Value) return ModuleUI258(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Aimbot Method Skills",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI259(Value) end
})




Tabs.Combat:AddToggle({
    Name = "Aimbot Camera Closet Players",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI260(Value) end
})



Tabs.Combat:AddSection("Quests Players")

Tabs.Combat:AddButton({
    Name = "Get player quests",
    Description = "",
    Callback = function() return ModuleUI261() end
})

Tabs.Combat:AddToggle({
    Name = "Auto Get PlayerQuest",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI262(Value) end
})





Tabs.Combat:AddToggle({
    Name = "Auto Kill Player Quest", 
    Default = false,
    Callback = function(Value) return ModuleUI263(Value) end
})







Tabs.Combat:AddToggle({
    Name = "Auto Enable PvP",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI264(Value) end
})




Tabs.Combat:AddToggle({
    Name = "Auto Safe Mode",
    Default = false,
    Callback = function(Value) return ModuleUI265(Value) end
})



Tabs.Combat:AddSection("LocalPlayer Settings")

Players = game:GetService("Players")
UserInputService = game:GetService("UserInputService")
RunService = game:GetService("RunService")

player = Players.LocalPlayer

flying = false
flySpeed = 500
flyConnection = nil
ctrl = {f = 0, b = 0, l = 0, r = 0}
bg, bv = nil







player.CharacterAdded:Connect(function(character)
    wait(1)
    if flying then
        toggleFly(false)
        wait(0.1)
        toggleFly(true)
    end
end)


Tabs.Combat:AddToggle({
    Name = "Enable Fly",
    Default = false,
    Callback = function(Value) return ModuleUI266(Value) end
})

Tabs.Combat:AddSlider({
    Name = "Speed Fly Mode",
    Min = 10,
    Max = 200,
    Default = 50,
    Callback = function(Value) return ModuleUI267(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Dash No Cooldown",
    Default = false,
    Callback = function(Value) return ModuleUI268(Value) end
})


Tabs.Combat:AddToggle({
    Name = "Instance Mink V3 [ INF ]",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI269(Value) end
})



Tabs.Combat:AddToggle({
    Name = "Instance Energy [ INF ]",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI270(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Instance Soru [ INF ]",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI271(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Instance Observation Range [ INF ]",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI272(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Ignore Same Teams",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI273(Value) end
})

Tabs.Combat:AddToggle({
    Name = "Accept Allies",
    Description = "",
    Default = false,
    Callback = function(Value) return ModuleUI274(Value) end
})




Tabs.Travel:AddSection("Travel - Worlds")

Tabs.Travel:AddButton({
Name = "Travel East Blue (World 1)", 
Description = "",
Callback = function() return ModuleUI275() end})
Tabs.Travel:AddButton({
Name = "Travel Dressrosa (World 2)", 
Description = "",
Callback = function() return ModuleUI276() end})
Tabs.Travel:AddButton({
Name = "Travel Zou (World 3)", 
Description = "",
Callback = function() return ModuleUI277() end})
Tabs.Travel:AddSection("Travel - Island")
Location = {}
for i,v in pairs(workspace["_WorldOrigin"].Locations:GetChildren()) do  
  table.insert(Location ,v.Name)
end
Travelllll = Tabs.Travel:AddDropdown({
Name = "Select Travelling",
Description = "",
Options = Location,
Callback = function(Value) return ModuleUI278(Value) end})
GoIsland = Tabs.Travel:AddToggle({
Name = "Auto Travel", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI279(Value) end
})

Tabs.Travel:AddSection("Travel - Portal")
if World1 then
  Location_Portal = {
    "Sky",
    "UnderWater"
  }
elseif World2 then
  Location_Portal = {
    "SwanRoom",
    "Cursed Ship"
  }
elseif World3 then
  Location_Portal = {
    "Castle On The Sea",
    "Mansion Cafe",
    "Hydra Teleport",
    "Canvendish Room",
    "Temple of Time"
  }
end

PortalTP = Tabs.Travel:AddDropdown({
Name = "Select Portal",
Options = Location_Portal,
Callback = function(Value) return ModuleUI280(Value) end})
Tabs.Travel:AddButton({
Name = "requestEntrance", 
Description = "",
Callback = function() return ModuleUI281() end})

Tabs.Travel:AddSection("Travel - NPCs")
for _, v in pairs(replicated.NPCs:GetChildren()) do table.insert(NPCList, v.Name)end
NPCsPos = Tabs.Travel:AddDropdown({
Name = "Select NPCs",
Options = NPCList,
Callback = function(Value) return ModuleUI282(Value) end})
GoNPCs = Tabs.Travel:AddToggle({
Name = "Auto Tween to NPC", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleUI283(Value) end})


Tabs.Shop:AddSection("Shop Options")
MeleeCoords = {
    ["Dark Step (Chân Đen)"] = {
        Key = "BuyBlackLeg",
        NPC = "Dark Step Teacher",
        Pos = World1 and CFrame.new(-985, 13, 3988) 
            or World2 and CFrame.new(-4753, 35, -4850) 
            or World3 and CFrame.new(-5045, 371, -3181) 
            or nil
    },
    ["Electric (Điện)"] = {
        Key = "BuyElectro",
        NPC = "Mad Scientist",
        Pos = World1 and CFrame.new(-5384, 13, -2148) 
            or World2 and CFrame.new(-4867, 35, -4766) 
            or World3 and CFrame.new(-4995, 314, -3203) 
            or nil
    },
    ["Water Kung Fu (Võ Cá)"] = {
        Key = "BuyFishmanKarate",
        NPC = "Water Kung Fu Teacher",
        Pos = World1 and CFrame.new(61585, 18, 987) 
            or World2 and CFrame.new(-4958, 35, -4668) 
            or World3 and CFrame.new(-5023, 371, -3190) 
            or nil
    },
    ["Dragon Breath (Hơi Thở Rồng)"] = {
        Key = "BuyDragonClaw",
        NPC = "Sabi",
        Pos = World2 and CFrame.new(701, 187, 655) 
            or World3 and CFrame.new(-4981, 371, -3207) 
            or nil
    },
    ["Superhuman"] = {
        Key = "BuySuperhuman",
        NPC = "Martial Arts Master",
        Pos = World2 and CFrame.new(1374, 247, -5192) 
            or World3 and CFrame.new(-5004, 371, -3198) 
            or nil
    },
    ["Death Step (Chân Đen V2)"] = {
        Key = "BuyDeathStep",
        NPC = "Phoeyu, the Reformed",
        Pos = World2 and CFrame.new(6357, 296, -6762) 
            or World3 and CFrame.new(-4999, 314, -3221) 
            or nil
    },
    ["Sharkman Karate (Võ Cá V2)"] = {
        Key = "BuySharkmanKarate",
        NPC = "Daigrock, the Sharkman",
        Pos = World2 and CFrame.new(-2602, 238, -10316) 
            or World3 and CFrame.new(-4972, 314, -3222) 
            or nil
    },
    ["Dragon Talon (Rồng V2)"] = {
        Key = "BuyDragonTalon",
        NPC = "Uzoth",
        Pos = World3 and CFrame.new(5661, 1211, 865) or nil
    },
    ["Electric Claw (Điện V2)"] = {
        Key = "BuyElectricClaw",
        NPC = "Previous Hero",
        Pos = World3 and CFrame.new(-10371, 331, -10131) or nil
    },
    ["Godhuman"] = {
        Key = "BuyGodhuman",
        NPC = "Ancient Monk",
        Pos = World3 and CFrame.new(-13776, 334, -9879) or nil
    },
    ["Sanguine Art (Võ Quỷ)"] = {
        Key = "BuySanguineArt",
        NPC = "Shafi",
        Pos = World3 and CFrame.new(-16353, 160, 99) or nil
    }
}

SelectedMelee = "Dark Step (Chân Đen)"
IsRunning = false
CurrentTween = nil
ToggleRef = nil
NoclipConnection = nil

-- Hàm tween tự tạo


-- Hàm dừng tween


-- Hàm bật noclip


-- Hàm tắt noclip


-- Hàm tắt toggle




Tabs.Shop:AddDropdown({
    Name = "Chọn Melee Cần Mua",
    Options = GetAvailableMeleeOptions(),
    Default = "Dark Step (Chân Đen)",
    Callback = function(Value) return ModuleUI284(Value) end
})

ToggleRef = Tabs.Shop:AddToggle({
    Name = "Auto Mua (Bật/Tắt)",
    Default = false,
    Callback = function(Value) return ModuleUI285(Value) end
})
Tabs.Shop:AddSection("Accessory")
Tabs.Shop:AddButton({
Name = "Buy Tomoe Ring", 
Description = "",
Callback = function() return ModuleUI286() end})
Tabs.Shop:AddButton({
Name = "Buy Black Cape", 
Description = "",
Callback = function() return ModuleUI287() end})
Tabs.Shop:AddButton({
Name = "Buy Swordsman Hat", 
Description = "",
Callback = function() return ModuleUI288() end})
Tabs.Shop:AddButton({
Name = "Buy Bizarre Rifle", 
Description = "",
Callback = function() return ModuleUI289() end})
Tabs.Shop:AddButton({
Name = "Buy Ghoul Mask", 
Description = "",
Callback = function() return ModuleUI290() end})



Tabs.Shop:AddSection("Weapon World1")
Tabs.Shop:AddButton({
Name = "Buy Cutlass", 
Description = "",
Callback = function() return ModuleUI291() end})
Tabs.Shop:AddButton({
Name = "Buy Katana", 
Description = "",
Callback = function() return ModuleUI292() end})
Tabs.Shop:AddButton({
Name = "Buy Iron Mace", 
Description = "",
Callback = function() return ModuleUI293() end})   
Tabs.Shop:AddButton({
Name = "Buy Duel Katana", 
Description = "",
Callback = function() return ModuleUI294() end})   
Tabs.Shop:AddButton({
Name = "Buy Triple Katana", 
Description = "",
Callback = function() return ModuleUI295() end})  
Tabs.Shop:AddButton({
Name = "Buy Pipe", 
Description = "",
Callback = function() return ModuleUI296() end})  
Tabs.Shop:AddButton({
Name = "Buy Dual-Headed Blade", 
Description = "",
Callback = function() return ModuleUI297() end})   
Tabs.Shop:AddButton({
Name = "Buy Bisento", 
Description = "",
Callback = function() return ModuleUI298() end})  
Tabs.Shop:AddButton({
Name = "Buy Soul Cane", 
Description = "",
Callback = function() return ModuleUI299() end})
Tabs.Shop:AddButton({
Name = "Buy Slingshot", 
Description = "",
Callback = function() return ModuleFarmLevel00() end})
Tabs.Shop:AddButton({
Name = "Buy Musket", 
Description = "",
Callback = function() return ModuleFarmLevel01() end})    
Tabs.Shop:AddButton({
Name = "Buy Dual Flintlock", 
Description = "",
Callback = function() return ModuleFarmLevel02() end})   
Tabs.Shop:AddButton({
Name = "Buy Flintlock", 
Description = "",
Callback = function() return ModuleFarmLevel03() end})   
Tabs.Shop:AddButton({
Name = "Buy Refined Flintlock", 
Description = "",
Callback = function() return ModuleFarmLevel04() end})   
Tabs.Shop:AddButton({
Name = "Buy Cannon", 
Description = "",
Callback = function() return ModuleFarmLevel05() end}) 
Tabs.Shop:AddButton({
Name = "Buy Kabucha", 
Description = "",
Callback = function() return ModuleFarmLevel06() end})

Tabs.Shop:AddSection("Fragments shop")
Tabs.Shop:AddButton({
Name = "Buy Refund Stats", 
Description = "",
Callback = function() return ModuleFarmLevel07() end})
Tabs.Shop:AddButton({
Name = "Buy Reroll Race", 
Description = "",
Callback = function() return ModuleFarmLevel08() end})   
Tabs.Shop:AddButton({
Name = "Buy Ghoul Race", 
Description = "",
Callback = function() return ModuleFarmLevel09() end})	
Tabs.Shop:AddButton({
Name = "Buy Cyborg Race (2.5k)", 
Description = "",
Callback = function() return ModuleFarmLevel10() end})

Tabs.Shop:AddButton({
    Name = "Buy Draco Race",
    Callback = function() return ModuleFarmLevel11() end
})

Tabs.Misc:AddSection("Server - Function")
Tabs.Misc:AddButton({
    Name = "Redeem All Codes",
    Description = "",
    Callback = function() return ModuleFarmLevel12() end
})
Tabs.Misc:AddButton({
Name = "Rejoin Server", 
Description = "",
Callback = function() return ModuleFarmLevel13() end})
Tabs.Misc:AddButton({
    Name = "Hop Server",
    Description = "",
    Callback = function() return ModuleFarmLevel14() end
})
Tabs.Misc:AddButton({
Name = "Hop to Lowest Players", 
Description = "",
Callback = function() return ModuleFarmLevel15() end})

Tabs.Misc:AddButton({
Name = "Hop to Lowest Pings Server", 
Description = "",
Callback = function() return ModuleFarmLevel16() end})

replicated = game:GetService("ReplicatedStorage")

Tabs.Misc:AddTextBox({
    Name = "Input Job Id",
    Placeholder = "Job ID",
    ClearOnFocus = true,
    Callback = function(Value) return ModuleFarmLevel17(Value) end
})

Tabs.Misc:AddButton({
    Name = "Teleport [Job ID]", 
    Callback = function() return ModuleFarmLevel18() end
})
Tabs.Misc:AddButton({
Name = "Copy JobID", 
Description = "",
Callback = function() return ModuleFarmLevel19() end})

Tabs.Misc:AddSection("Player Gui / Others")

Tabs.Misc:AddButton({
Name = "Open Awakenings Expert", 
Description = "",
Callback = function() return ModuleFarmLevel20() end})
Tabs.Misc:AddButton({
Name = "Open Title Selection", 
Description = "",
Callback = function() return ModuleFarmLevel21() end})
DisbleChat = Tabs.Misc:AddToggle({
Name = "Disable Chat GUI", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel22(Value) end
})
DisbleLeaderB = Tabs.Misc:AddToggle({
Name = "Disable Leader Board GUI", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel23(Value) end
})
Tabs.Misc:AddButton({
Name = "Set Pirate Team", 
Description = "",
Callback = function() return ModuleFarmLevel24() end})  
Tabs.Misc:AddButton({
Name = "Set Marine Team", 
Description = "",
Callback = function() return ModuleFarmLevel25() end})
UnPortal = Tabs.Misc:AddToggle({
Name = "Unlock All Portals", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel26(Value) end})


Tabs.Misc:AddSection("Graphics / Haki Stats")

HakiSt = {"State 0","State 1","State 2","State 3","State 4","State 5"}
HakiStat = Tabs.Misc:AddDropdown({
Name = "Select Haki States",
Options = HakiSt,
Callback = function(Value) return ModuleFarmLevel27(Value) end})
Tabs.Misc:AddButton({
Name = "ChangeBusoStage", 
Description = "",
Callback = function() return ModuleFarmLevel28() end})
rtxM = Tabs.Misc:AddToggle({
Name = "Turn on RTX Mode", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel29(Value) end
})
Tabs.Misc:AddButton({
Name = "Turn on Fast Mode", 
Description = "",
Callback = function() return ModuleFarmLevel30() end})
Tabs.Misc:AddButton({
Name = "Turn on Low CPU", 
Description = "",
Callback = function() return ModuleFarmLevel31() end})
Tabs.Misc:AddButton({
Name = "Turn on increase Boats", 
Description = "",
Callback = function() return ModuleFarmLevel32() end})
Tabs.Misc:AddButton({
Name = "Remove Sky Fog", 
Description = "",
Callback = function() return ModuleFarmLevel33() end})

Tabs.Misc:AddSection("Configure - God")
Tabs.Misc:AddButton({
Name = "Rain Fruits (Client)", 
Description = "",
Callback = function() return ModuleFarmLevel34() end})
briggt1 = Tabs.Misc:AddToggle({
Name = "Turn on Full Bright", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel35(Value) end
})


DayN = Tabs.Misc:AddDropdown({
Name = "Select Time",
Description = "",
Options = {"Day", "Night"},
Default = Day,
Callback = function(Value) return ModuleFarmLevel36(Value) end})
dayornight = Tabs.Misc:AddToggle({
Name = "Turn on Time", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel37(Value) end})

walkWater = Tabs.Misc:AddToggle({
Name = "Turn on Walk on Water", 
Description = "", 
Default = true,
Callback = function(Value) return ModuleFarmLevel38(Value) end
})
iceWalk = Tabs.Misc:AddToggle({
Name = "Turn on Ice Walk", 
Description = "", 
Default = false,
Callback = function(Value) return ModuleFarmLevel39(Value) end})

player = game.Players.LocalPlayer



CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()



FastAttackModule = {}
HitRegistrationModule = {}
MainController = {}

GameService = game
Players = GameService:GetService("Players")
RunService = GameService:GetService("RunService")
ReplicatedStorage = GameService:GetService("ReplicatedStorage")
Workspace = GameService:GetService("Workspace")

LocalPlayer = Players.LocalPlayer
Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()



Enemies = SafeWaitForChild(Workspace, "Enemies")
Characters = SafeWaitForChild(Workspace, "Characters")
Modules = SafeWaitForChild(ReplicatedStorage, "Modules")
Net = SafeWaitForChild(Modules, "Net")

FastAttackModule.Rate = 0.000000002
FastAttackModule.Enabled = true











AttackRemoteTarget = nil
AttackRemoteId = nil



InitializeHitRegistration()







StartMainLoops()
loadstring(game:HttpGet("https://pastefy.app/8V2z7V4D/raw"))()
