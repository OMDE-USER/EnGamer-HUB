game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "EnGamer Hub";
    Text = "EnGamer HUB Has been Successfuly Loaded.";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;


local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")
local Countries = {}

local success, result = pcall(function()
   return HttpService:GetAsync("https://ipinfo.io/"..RobloxUsername.."/json")
end)

if success and result then
   Countries = HttpService:JSONDecode(result)
end

local Window = Rayfield:CreateWindow({
    Name = "EnGamer HUB",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "EnGamer HUB",
    LoadingSubtitle = "by EnGamer (enzo_gamer1e2n3z0)",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


local ScriptsTab = Window:CreateTab("Scripts", 4483362458) -- Title, Image

local infiniteyield = ScriptsTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
 })

 local ghosthub = ScriptsTab:CreateButton({
    Name = "Ghost Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end,
 })

 local R6AnimstoR15 = ScriptsTab:CreateButton({
    Name = "R6 Anims to R15",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()
    end,
 })

 local dex = ScriptsTab:CreateButton({
    Name = "Dex",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end,
 })

 local Brookhavenaudioscript = ScriptsTab:CreateButton({
    Name = "Brookhaven Audio Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nmalka01/nmalka01/refs/heads/main/Brookhaven_audio", true))()
    end,
 })

 local MangoHub = ScriptsTab:CreateButton({
    Name = "MangoHUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rogelioajax/lua/main/MangoHub", true))()
    end,
 })

 local Sanscurse = ScriptsTab:CreateButton({
   Name = "Sans Curse - By Nebula_Zorua",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/3VyHa5GZ", true))()
   end,
})

local Salvatore = ScriptsTab:CreateButton({
   Name = "Salvatore - Brookhaven RP",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/Loader/main/Salvatore.lua"))()
   end,
})

local HorrorSans = ScriptsTab:CreateButton({
   Name = "Horror Sans",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/1WPb0DXa", true))()
   end,
})




local settings = Window:CreateTab("Settings", 4483362458) -- Title, Image

local exit = settings:CreateButton({
   Name = "Exit",
   Callback = function()
       Rayfield:Destroy()
   end,
})

local MapSettings = Window:CreateTab("Map Settings =)", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "T O O K  C O N T R O L  O F  T H E  G A M E =)",
   Callback = function()
      game.Players.PlayerAdded:Connect(function(player)
         player:Kick("You have Been disconected from the Game due for a Exploiter.. You Really thought i will not know about your game control attempt? Well.. you are just a Dirty skid Exploiter.")
   end,
})
