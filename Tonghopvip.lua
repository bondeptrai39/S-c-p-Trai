-- Check Executor 
local executor = getexecutorname() or identifyexecutor()

if executor then
    local supportedExecutors = {
        "Velocity",
        "Wave",
        "Arceus",
        "Swift",
        "AWP",
        "Macsploit",
        "Delta",
        "Fluxus",
        "CodeX",
        "Krnl",
        "Trigon",
        "Evon",
        "Cryptic",
        "SynapeX",
        "Potassium",
        "Argon",
        "Xeno",
        "Nezur",
        "Revelix",
        "Cubix",
        "Solara",
        "Dynamic",
        "Nebula",
        "Ronix",
        "Atlantis",
        "JJsploit",
        "Frostware" -- thêm vào thì tùy ae
    }

    local isExecutorSupported = false
    for _, name in ipairs(supportedExecutors) do
        if string.find(executor, name) then
            isExecutorSupported = true
            break
        end
    end

    if isExecutorSupported then
        print("Supported Executor!")
    else
        game.Players.LocalPlayer:Kick("Not supported TNG Skid executor!") -- kick nếu exec ko support
    end
end

repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer

print("Whitelist success!")
wait(.5)
game.StarterGui:SetCore("SendNotification", {
     Title = "Đức Anh Android ";
     Text = "Loading";
     Icon = "";
     Duration = "2";
})

wait(.1)


----------------------------------------ToogleUi----------------------------------------

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")  
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.1, 0.1)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0, 20, 0.1, -6)  
Frame.Size = UDim2.new(0, 50, 0, 50)
Frame.Name = "dut dit"

ImageLabel.Parent = Frame
ImageLabel.Name = "Banana Test"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 40, 0, 40)
ImageLabel.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 1
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Image = "http://www.roblox.com/asset/?id= 111387880294313" -- Thay 5009915795 Bằng ảnh của anh em

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame

TextButton.Name = "TextButton"
TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
TextButton.BackgroundTransparency = 1
TextButton.BorderSizePixel = 1
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)
TextButton.Text = ""
TextButton.Font = Enum.Font.SourceSans
TextButton.TextSize = 8
TextButton.TextTransparency = 0

local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local zoomedIn = false
local originalSize = UDim2.new(0, 40, 0, 40)
local zoomedSize = UDim2.new(0, 30, 0, 30)
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local faded = false
local fadeInTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0.25})
local fadeOutTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0})

TextButton.MouseButton1Down:Connect(function()

    if zoomedIn then
        TweenService:Create(ImageLabel, tweenInfo, {Size = originalSize}):Play()
    else
        TweenService:Create(ImageLabel, tweenInfo, {Size = zoomedSize}):Play()
    end
    zoomedIn = not zoomedIn

    if faded then
        fadeOutTween:Play()
    else
        fadeInTween:Play()
    end
    faded = not faded

    VirtualInputManager:SendKeyEvent(true, "LeftControl", false, game)
end)

print("Loading Main Ui")
wait(.1)
game.StarterGui:SetCore("SendNotification", {
     Title = "Lonely Hub";
     Text = "Loading Main Ui";
     Icon = "";
     Duration = "2";
})
wait(.1)

----------------------------------------Fluent----------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Đức Anh Android ",
    SubTitle = "by đức Anh Android ",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
----------------------------------------Tab----------------------------------------
local Tabs = {
    Client = Window:AddTab({ Title = "Client", Icon = "" }),
    Dev = Window:AddTab({ Title = "Developer", Icon = "" }),
    LP = Window:AddTab({ Title = "Local Player", Icon = "" }),
    BF = Window:AddTab({ Title = "Blox Fruits", Icon = "" }),
    Door = Window:AddTab({ Title = "Door", Icon = "" }),
    BB = Window:AddTab({ Title = "Bladeball", Icon = "" }),
    Fs = Window:AddTab({ Title = "Fisch", Icon = "" }),
    Blr = Window:AddTab({ Title = "Bluelock:Rivals", Icon = "" }),
    Shrimp = Window:AddTab({ Title = "Shrimp Game", Icon = "" }),
    AD = Window:AddTab({ Title = "Anime Defender", Icon = "" }),
    All = Window:AddTab({ Title = "Universal Script", Icon = "" }),
    Paid = Window:AddTab({ Title = "Script Paid", Icon = "" }),
    ST = Window:AddTab({ Title = "Settings", Icon = "" }),
    If = Window:AddTab({ Title = "Info", Icon = "" }),
}
----------------------------------------Client----------------------------------------
print("Client Tab Loading")
wait(1)
    Tabs.Client:AddButton({
        Title = "SynapseX",
        Description = "Can Run Script But Use Your Executor's Api",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip2012/ScriptBloxFruit/refs/heads/main/SynapsexUi.lua"))()
        end
    })
    
    Tabs.Client:AddButton({
        Title = "ArceusX",
        Description = "Can Run Script But Use Your Executor's Api",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
        end
    })
    
    Tabs.Client:AddButton({
        Title = "KRNL",
        Description = "Can Run Script But Use Your Executor's Api",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip2012/Lonely-Hub/refs/heads/main/KRNL%20UI%20Remake.lua.txt"))()
        end
    })
    
----------------------------------------Dev----------------------------------------
print("Dev Tab Loading")
wait(1)
Tabs.Dev:AddButton({
        Title = "Infinite Yield",
        Description = "Command",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })
    
Tabs.Dev:AddButton({
        Title = "Dark Dex",
        Description = "Show Game File",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })
  
Tabs.Dev:AddButton({
        Title = "Simple Spy",
        Description = "Help u create own script or other",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
        end
    })
----------------------------------------LP----------------------------------------
print("Loading Local Player Tab")
wait(1)
Tabs.LP:AddButton(
        {
            Title = "Infinite Jump",
            Description = "",
            Callback = function()
                local InfiniteJumpEnabled = true
                game:GetService("UserInputService").JumpRequest:connect(
                    function()
                        if InfiniteJumpEnabled then
                            game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass "Humanoid":ChangeState(
                                "Jumping"
                            )
                        end
                    end
                )
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "Anti Afk",
            Description = "Anti Afk/Idle",
            Callback = function()
                local VirtualUser = game:GetService("VirtualUser")

                game:GetService("Players").LocalPlayer.Idled:Connect(
                    function()
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                    end
                )
            end
        }
    )

    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local noClipEnabled = false
    local noClipConnection = nil

    local function EnableNoClip()
        noClipEnabled = true
        noClipConnection =
            RunService.Stepped:Connect(
            function()
                for _, part in pairs(Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        )
    end

    local function DisableNoClip()
        noClipEnabled = false
        if noClipConnection then
            noClipConnection:Disconnect()
            noClipConnection = nil
        end
    end

    -- Nút bật NoClip
    Tabs.LP:AddButton(
        {
            Title = "Enable NoClip",
            Description = "",
            Callback = function()
                EnableNoClip()
            end
        }
    )

    -- Nút tắt NoClip
    Tabs.LP:AddButton(
        {
            Title = "Disable NoClip",
            Description = "",
            Callback = function()
                DisableNoClip()
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "No FOG",
            Description = "delete fog",
            Callback = function()
                local function removeFog()
                    local lighting = game:GetService("Lighting")
                    lighting.FogEnd = 1e10
                    lighting.FogStart = 1e10
                    lighting.FogColor = Color3.new(1, 1, 1)
                end

                removeFog()
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "Full Bright",
            Description = "",
            Callback = function()
                game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(removeFog)
                game:GetService("Lighting"):GetPropertyChangedSignal("FogStart"):Connect(removeFog)
                game:GetService("Lighting"):GetPropertyChangedSignal("FogColor"):Connect(removeFog)

                game:GetService("Lighting").Changed:Connect(removeFog)

                local Light = game:GetService("Lighting")

                function dofullbright()
                    Light.Ambient = Color3.new(1, 1, 1)
                    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
                    Light.ColorShift_Top = Color3.new(1, 1, 1)
                end

                dofullbright()

                Light.LightingChanged:Connect(dofullbright)
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "Super Fix Lag",
            Description = "",
            Callback = function()
                local Lighting = game:GetService("Lighting")
                local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer
                local Workspace = game:GetService("Workspace")

                local function CanChangeColor(obj)
                    return obj:IsA("BasePart") and obj:IsDescendantOf(Workspace) and
                        not obj:IsDescendantOf(LocalPlayer.Character)
                end

                local function MakeStone(obj)
                    if CanChangeColor(obj) then
                        pcall(
                            function()
                                obj.Color = Color3.fromRGB(115, 115, 115)
                                obj.Material = Enum.Material.SmoothPlastic
                                obj.Reflectance = 0
                            end
                        )
                    end
                end

                for _, obj in pairs(Workspace:GetDescendants()) do
                    MakeStone(obj)
                end

                Workspace.DescendantAdded:Connect(
                    function(obj)
                        task.wait(0.1) -- Giảm độ trễ để tránh giảm hiệu suất quá mức
                        MakeStone(obj)
                    end
                )

                local function RemoveUnnecessaryEffects(obj)
                    pcall(
                        function()
                            if
                                obj:IsA("ParticleEmitter") or obj:IsA("Beam") or obj:IsA("Trail") or obj:IsA("Fire") or
                                    obj:IsA("Smoke") or
                                    obj:IsA("Sparkles") or
                                    obj:IsA("Explosion") or
                                    obj:IsA("Highlight") or
                                    obj:IsA("Decal") or
                                    obj:IsA("Texture") or
                                    obj:IsA("PointLight") or
                                    obj:IsA("SurfaceLight") or
                                    obj:IsA("SpotLight")
                             then
                                obj:Destroy()
                            end
                        end
                    )
                end

                for _, obj in pairs(Workspace:GetDescendants()) do
                    RemoveUnnecessaryEffects(obj)
                end

                Workspace.DescendantAdded:Connect(
                    function(obj)
                        task.wait(0.1) -- Tối ưu độ trễ
                        RemoveUnnecessaryEffects(obj)
                    end
                )

                pcall(
                    function()
                        Lighting.GlobalShadows = false
                        Lighting.Brightness = 2
                        Lighting.Ambient = Color3.new(1, 1, 1)
                        Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
                        Lighting.FogEnd = 1000000
                        Lighting.Technology = Enum.Technology.Compatibility

                        local sky = Lighting:FindFirstChild("Sky")
                        if sky then
                            sky:Destroy()
                        end
                    end
                )

                local function ResetCharacterAppearance(character)
                    pcall(
                        function()
                            for _, obj in pairs(character:GetChildren()) do
                                if obj:IsA("Shirt") or obj:IsA("Pants") or obj:IsA("ShirtGraphic") then
                                    obj:Destroy()
                                end
                                if obj:IsA("BodyColors") then
                                    obj:Destroy()
                                end
                            end

                            for _, part in pairs(character:GetChildren()) do
                                if part:IsA("BasePart") then
                                    part.Color = Color3.fromRGB(163, 162, 165) -- Màu mặc định
                                end
                            end
                        end
                    )
                end

                if LocalPlayer.Character then
                    ResetCharacterAppearance(LocalPlayer.Character)
                end

                LocalPlayer.CharacterAdded:Connect(
                    function(character)
                        task.wait(1)
                        ResetCharacterAppearance(character)
                    end
                )

                local function RemoveEnemyClothes()
                    if Workspace:FindFirstChild("Enemies") then
                        for _, enemy in pairs(Workspace.Enemies:GetChildren()) do
                            ResetCharacterAppearance(enemy)
                        end
                    end
                end

                RemoveEnemyClothes()

                if Workspace:FindFirstChild("Enemies") then
                    Workspace.Enemies.ChildAdded:Connect(
                        function(enemy)
                            task.wait(1)
                            ResetCharacterAppearance(enemy)
                        end
                    )
                end

                warn("Fix Lag Completed!")
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "AntiLag 90%",
            Description = "NoKey",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
            end
        }
    )
----------------------------------------BF----------------------------------------
print("Loading Script Tab")
wait(1)
print("Loading BF Script")
wait(.1)
-- Toàn script cũ tự thêm script của b vào
Tabs.BF:AddParagraph({
        Title = "Blox Fruits",
        Content = "Script Support BloxFruits Scroll Down For More"
    })
wait(5)
Tabs.BF:AddButton({
        Title = "Redz Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
        end
    })
    
    -- redz old
    
    Tabs.BF:AddButton({
        Title = "Vxeze Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/Skidlamcho.txt"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Angry Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/angry5/ec20347a74aa4e46c71b15b6093eeaf5/raw/Angery.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Tsuo Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
        end
    })
Tabs.BF:AddButton({
        Title = "Teddy HOP",
        Description = "HOP SV and NoKey",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
        end
    })
    
Tabs.BF:AddButton({
        Title = "Auto Bounty Sera Hub",
        Description = "Have Key",
        Callback = function()
            getgenv().config = {
    ["Use Race"] = {
        ["V4"] = true,
        ["V3"] = true
    },
    ["BypassTp"] = false,
    ["Info Screen"] = true,
    ["SafeHealth"] = 4000,
    ["Webhooks"] = {
        ["Toggle Webhook"] = true,
        ["Link Webhook"] = ""
    },
    ["White Screen"] = false,
    ["SkipFruit"] = {
        "Portal-Portal"
    },
    ["Skip Race V4 User"] = true,
    ["Team"] = "Pirates",
    ["MaxBountyHunt"] = 30000000,
    ["MinBountyHunt"] = 0,
    ["MainSkillToggle"] = {
        ["Sword"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.2
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.2
                }
            },
            ["Delay"] = 1
        },
        ["Blox Fruit"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 2
                },
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["F"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["V"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                }
            },
            ["Delay"] = 2
        },
        ["Melee"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 2.5
                }
            },
            ["Delay"] = 1.75
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                },
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0
                }
            },
            ["Delay"] = 1
        }
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/LumosSera/Serra/refs/heads/main/Bounty.lua"))()
        end
    })
    
Tabs.BF:AddButton({
        Title = "Cokka Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Hoho Hub V4",
        Description = "Have Key",
        Callback = function()
            _G.HohoVersion = "v4"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end
    })

Tabs.BF:AddButton({
        Title = "Frost Ware Chest",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://frostware.onrender.com/fwchest"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Frost Ware Main",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://frostware.onrender.com/fw"))()
        end
    })
    
    
    Tabs.BF:AddButton({
        Title = "ThunderZ Chest",
        Description = "No Key",
        Callback = function()
        _G.Team = "Marine" -- "Marine" or "Pirate"
_G.MetodeTeleport = "Tween" --"Instant" or "Tween"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/BloxFruit/Chest/AllDevices.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Flow Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))()
        end
    })
    Tabs.BF:AddButton({
        Title = "Forge Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Lion Hub",
        Description = "No Key",
        Callback = function()
           getgenv().Team = "Pirates"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NHMdz/BloxFruit/refs/heads/main/Lion%20Hub.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Volcano Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Hiru Hub(Hicu)",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Dev-Hiru/refs/heads/main/HiruHub.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Astral Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Quantum Onyx Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Relz Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Alchemy Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Blue X Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Kncrypt Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/BloxFruit.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Xero Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
        end
    })
   
   Tabs.BF:AddButton({
        Title = "Rubu Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RubuBF"))()
        end
    })
    
   Tabs.BF:AddButton({
        Title = "Speed X Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Billdev Hub",
        Description = "Have Key,New Hub",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BFKEYSYS"))()
        end
    })
----------------------------------------Doors----------------------------------------
print("loading Doors Script")
wait(1)
Tabs.Door:AddParagraph({
        Title = "Doors",
        Content = "Script Support Doors Scroll Down For More"
    })
    
    Tabs.Door:AddButton({
        Title = "Mspaint V4",
        Description = "Have Key,Copy Web And Join Discord Link To Getkey",
        Callback = function()
            setclipboard("https://mspaint.cc")
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Black King X Bob Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkDoorsKing/Doors/main/Main"))()
        end
    })
    
   Tabs.Door:AddButton({
        Title = "Kolbol Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/awczkDwJ/raw"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Item Giver",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Darli17/Entities/refs/heads/main/Tools"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Kittycat Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CatEnddroid/Kitty-Cats-Doors-Beta/refs/heads/main/hub.lua"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Sensation Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "FFJ Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
        end
    })
    
    
----------------------------------------BB----------------------------------------
 print("Loading BB Script")
 wait(1)
Tabs.BB:AddParagraph({
        Title = "Blade Ball",
        Content = "Script Support Blade Ball Scroll Down For More"
    })
    
    Tabs.BB:AddButton({
        Title = "Eminence Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EminenceXLua/Blade-your-Balls/main/BladeBallLoader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Depth Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githu busercontent.com/funhaji/Blade-Ball/refs/heads/main/No-Lag.lua", true))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Beanz Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pid4k/scripts/main/BeanzHub.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Ronix Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/79ab2d3174641622d317f9e234797acb.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "R4mage Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/4R4mpageHub/refs/heads/main/FixedAntiCheat.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Frostware Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Frostware/refs/heads/main/F-R-O-S-T-W-A-R-E%20BY%20FSPLOIT-BLADE%20BALL.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Frostware V1.4 Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Frostware-/refs/heads/main/Bypass.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Lunar Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Akirascripts/Lunar/refs/heads/main/LuanrOnTop"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Pi Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://pi-hub.pages.dev/protected/loader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Astrox Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/AstroX/main/Loader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Nexam Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/CQUqebf5"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "FFJ Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Alchemy Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Zap Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://zaphub.xyz/ExecBB"))()
        end
    })
----------------------------------------Fisch----------------------------------------
print("Loading Fisch Script")
wait(1)
Tabs.Fs:AddParagraph({
        Title = "Fisch",
        Content = "Script Support Fisch Scroll Down For More"
    })
    
Tabs.Fs:AddButton({
        Title = "Speed X Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Zenith Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Mspaint",
        Description = "Have Key,Copy Link Web And Join Discord For Getkey",
        Callback = function()
            setclipboard("https://mspaint.cc")
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Alchemy Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Raito Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Ronix Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e4d72046eb884e9c01333d3e704fc2d7.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Moon X Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cba17b913ee63c7bfdbb9301e2d87c8b.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Y Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/Fisch-YHUB"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Solix Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Forge Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
    })
    
    
----------------------------------------BLR----------------------------------------
print("Loading BLR Tab")
wait(1)
Tabs.Blr:AddParagraph({
        Title = "Blue Lock : Rivals",
        Content = "Script Support BLR Scroll Down For More"
    })
    
Tabs.Blr:AddButton({
        Title = "Sterling Hub",
        Description = "Key:IDK",
        Callback = function()
            local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
local function onErrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("Error detected: " .. errorMessage)
        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/SterlingNew"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Alchemy Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "OMG Hub",
        Description = "NoKey",  
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/UPD-Blue-Lock:-Rivals-OMG-Hub-29091"))()
        end
    })
 Tabs.Blr:AddButton({
        Title = "Tbao Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "BillDev Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BLRTBDKEYSYS"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Nicuse Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://nicuse.xyz/MainHub.lua"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Arbix Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/lbLVUm8Z/raw"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Legend Handless Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LHking123456/ct4gFewpLxRHJ/refs/heads/main/BLRivals"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "NS Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/fo/refs/heads/main/ot"))()
        end
    })
----------------------------------------ShrimpGame----------------------------------------
print("Loading Shrimp Game Script")
wait(.5)
Tabs.Shrimp:AddParagraph({
        Title = "Shrimp Game",
        Content = "Script Support Shrimp Game Scroll Down For More"
    })
Tabs.Shrimp:AddButton({
        Title = "Rip Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/ShrimpGame.lua"))()
        end
    })
    
    Tabs.Shrimp:AddButton({
        Title = "Moon X Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MateoDev2024/MoonX/refs/heads/main/Loader.lua"))()
        end
    })
----------------------------------------AD----------------------------------------
print("Load Anime DF Script")
wait(.5)
Tabs.AD:AddParagraph({
        Title = "Anime DF",
        Content = "Script Support Anime DF Scroll Down For More"
    })
    
Tabs.AD:AddButton({
        Title = "Buang Hub",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()
        end
    })
    
    Tabs.AD:AddButton({
        Title = "Nousigi Hub",
        Description = "Have Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/Nausigi"))()
        end
    })
----------------------------------------AllGame----------------------------------------
print("Loading Universe Script")
wait(1)
Tabs.All:AddParagraph({
        Title = "Universe",
        Content = "Script Support All Games Scroll Down For More"
    })
Tabs.All:AddButton({
        Title = "Unnamed ESP",
        Description = "No Key",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
        end
    })
    
    Tabs.All:AddButton({
        Title = "Aimbot",
        Description = "Make By spdmteam.com/ArceusX Aim",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/refs/heads/main/Arceus%20Aimbot.lua"))()
        end
    })
    
    Tabs.All:AddButton({
        Title = "Mobile Keyboard",
        Description = "Make By Delta Team",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Delta-Scripts/refs/heads/main/MobileKeyboard.txt"))()
        end
    })
    Tabs.All:AddButton({
        Title = "Infinite Yield",
        Description = "Command",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })
    
Tabs.All:AddButton({
        Title = "Dark Dex",
        Description = "Show Game File",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })
 
Tabs.All:AddButton({
        Title = "Simple Spy",
        Description = "Help u create own script or other",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
        end
    })
      
    Tabs.All:AddButton({
        Title = "Executor Check",
        Description = "Press F9 or chat /console to open console!",
        Callback = function()
            print("----------------------------------------UNC----------------------------------------")
            wait(.1)
            loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/UNC%20test?raw=true"))()
            wait(.1)
            print("----------------------------------------Level Exectr----------------------------------------")
            wait(.1)
            printidentity()
            print("----------------------------------------Executor Name Checker----------------------------------------")
            wait(.1)
            print(identifyexecutor())
        end
    })
----------------------------------------ScriptHub----------------------------------------
print("Loading Script Hub")
wait(.1)
Tabs.ScrH:AddParagraph({
        Title = "Script Hub And Get Executor",
        Content = "So Cool,Click the Button to Copy"
    })
    
    Tabs.ScrH:AddButton({
        Title = "Script Blox",
        Description = "https://scriptblox.com",
        Callback = function()
            setclipboard("https://scriptblox.com")
        end
    })
    
    Tabs.ScrH:AddButton({
        Title = "Script Pastebin",
        Description = "https://scriptpastebin.com",
        Callback = function()
            setclipboard("https://scriptpastebin.com")
        end
    })

    Tabs.ScrH:AddButton({
        Title = "We Are Dev",
        Description = "https://wearedev.net",
        Callback = function()
            setclipboard("https://wearedev.net")
        end
    })
----------------------------------------ScrP----------------------------------------
print("Loading Script Paid Tab")
wait(.5)
Tabs.SP:AddParagraph({
        Title = "Script Paid",
        Content = "Ko free đâu:)) mua đê"
    })
    
    Tabs.SP:AddButton({
        Title = "Shyun.shop",
        Description = "For Vietnamese People Only.Nhanh-Gọn-Cụt Tay",
        Callback = function()
            setclipboard("https://shyun.shop")
        end
    })
    
Tabs.SP:AddButton({
        Title = "Yukstore.com",
        Description = "For Vietnamese People Only",
        Callback = function()
            setclipboard("https://yukstore.com")
        end
    })
----------------------------------------Info----------------------------------------
print("Loading Server Tab")
wait(.5)
print("Loading Info Tab")
wait(.1)
Tabs.If:AddParagraph({
        Title = "Player",
        Content = "Thank "..game.Players.LocalPlayer.Name.." for use script!"
    })

    Tabs.If:AddParagraph({
        Title = "Đức Anh Android ",
        Content = "Script được làm bởi Đức Anh Android "
    })
    
    Tabs.If:AddParagraph({
        Title = "Other Info",
        Content = "Souce được share bởi tao"
    })
    
    Tabs.If:AddParagraph({
        Title = "My Social",
        Content = "Social t dùng"
    })
    
    Tabs.If:AddButton({
        Title = "Youtube",
        Description = "",
        Callback = function()
            setclipboard("ducanhbon")
        end
    })
        
    Tabs.If:AddButton({
        Title = "Discord",
        Description = "",
        Callback = function()
            setclipboard("đéo có")
        end
    })
 
    wait(.1)

----------------------------------------LoadedNotify----------------------------------------
    game.StarterGui:SetCore("SendNotification", {
     Title = "Đức Anh Android ";
     Text = "Loaded!";
     Icon = "";
     Duration = "2";
})
wait(.1) 
print("Loaded!")
wait(.1)
warn("Cali Con Cặc, cali tuổi cái lồn")