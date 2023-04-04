-- Loading Script --
local delay = 0
repeat wait() wait(delay) until game:IsLoaded()

-- Library, API [Thư Viện, API] --

local AzunerLib = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local AzunerLibrary = loadstring(game:HttpGet(AzunerLib .. 'Library.lua'))()
local AzunerThemes = loadstring(game:HttpGet(AzunerLib .. 'addons/ThemeManager.lua'))()
local AzunerSaveManager = loadstring(game:HttpGet(AzunerLib .. 'addons/SaveManager.lua'))()

-- Main Windown [Cữa Sổ Chính] --

local Window = AzunerLibrary:CreateWindow({

	Accent = 'White',
    Title = 'Azuner | Blox Fruits | ',
    Center = true, 
    AutoShow = true,
})

-- Tabs [Tabs] --

local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'), 
	['Automatics'] = Window:AddTab('Automatics'),
	['Combat'] = Window:AddTab('Combat'),
	['Travel'] = Window:AddTab('Travel'),
	['Raid'] = Window:AddTab('Raid'),
	['Shop'] = Window:AddTab('Shop'),
	['SettingUI'] = Window:AddTab('Miss'),
	
}

-- [GroupBox Start] --

-- GroupBox.Main --

local AutoFarmGroupBox = Tabs.Main:AddLeftGroupbox('AutoFarm')
local MasteryGroupBox = Tabs.Main:AddLeftGroupbox('Mastery')
local OtherMainGroupBox = Tabs.Main:AddLeftGroupbox('Other')
local SettingGroupBox = Tabs.Main:AddRightGroupbox('Settings')
local BossesGroupBox = Tabs.Main:AddRightGroupbox('Bosses')
local MissGroupBox = Tabs.Main:AddRightGroupbox('Miss')

-- GroupBox.Automatics --

local MaterialGroupBox = Tabs.Automatics:AddLeftGroupbox('Material')
local OtherAutomaticsGroupBox = Tabs.Automatics:AddLeftGroupbox('Other')
local FightingStlyeGroupBox = Tabs.Automatics:AddRightGroupbox('FightingStlye')
local OtherAutomaticsGroupBox2 = Tabs.Automatics:AddRightGroupbox('Other')
local ItemsUnlockGroupBox = Tabs.Automatics:AddRightGroupbox('Items/Unlock')
local ETCGroupBox = Tabs.Automatics:AddRightGroupbox('ETC')

-- GroupBox.Combat --

local AimbotGroupBox = Tabs.Combat:AddLeftGroupbox('Aimbot')
local ESPPlayerGroupBox = Tabs.Combat:AddLeftGroupbox('[ESP Player]')
local LocalGroupBox = Tabs.Combat:AddLeftGroupbox('Local')
local BuffGroupBox = Tabs.Combat:AddRightGroupbox('Buff')

-- GroupBox.Travel --

local TravelGroupBox = Tabs.Travel:AddLeftGroupbox('Travel')
local TravelGroupBox2 = Tabs.Travel:AddRightGroupbox('')

-- GroupBox.Raid --

local AutoRaidGroupBox = Tabs.Raid:AddLeftGroupbox('Auto Raid')
local StatsGroupBox = Tabs.Raid:AddRightGroupbox('Stats')
local StatusGroupBox = Tabs.Raid:AddRightGroupbox('Status')

-- GroupBox.Shop --

local AbilitiesGroupBox = Tabs.Shop:AddLeftGroupbox('Abilities')
local FragmentsGroupBox = Tabs.Shop:AddLeftGroupbox('Fragments')
local FightingStlye2GroupBox = Tabs.Shop:AddLeftGroupbox('Fighting Stlye')
local GunGroupBox = Tabs.Shop:AddRightGroupbox('Gun')
local SwordGroupBox = Tabs.Shop:AddRightGroupbox('Sword')

-- GroupBox.SettingUI --

local SettingUI = Tabs.SettingUI:AddLeftGroupbox('UI')
SettingUI:AddButton('Unload', function() Library:Unload() end)
SettingUI:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })
AzunerLibrary.ToggleKeybind = Options.MenuKeybind
AzunerThemes:SetLibrary(Library)
AzunerSaveManager:SetLibrary(Library)
AzunerSaveManager:IgnoreThemeSettings()
AzunerSaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
AzunerThemes:SetFolder('MyScriptHub')
AzunerSaveManager:SetFolder('MyScriptHub/specific-game')
AzunerSaveManager:BuildConfigSection(Tabs['SettingUI'])
AzunerThemes:ApplyToTab(Tabs['SettingUI'])
local WebhooksGroupBoxs = Tabs.SettingUI:AddRightGroupbox('Webhooks')


--// [GroupBox End]--

-- [Add Toggle: Start] --

-- [Add Toggle: AutoFarm.GroupBox] --

AutoFarmGroupBox:AddToggle('MyToggle', {
    Text = 'AutoFarm [Level]',
    Default = false, 
    Tooltip = 'Auto Farm Level 1 - Max', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Farm changed to:', Value)
    end
})

AutoFarmGroupBox:AddLabel('Quest: ')

AutoFarmGroupBox:AddLabel('Level Quest: ')

AutoFarmGroupBox:AddToggle('MyToggle', {
    Text = 'Accept Quest',
    Default = false, 
    Tooltip = 'Accept Quest while Auto Farm', 
    Callback = function(Value)
        print('[Azuner-Control] Accept Quest changed to:', Value)
    end
})

AutoFarmGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Dressrosa',
    Default = false, 
    Tooltip = 'Dressrosa [stop auto farm at Level 700 and doing quest Detective for permission to go Dressrosa]', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Dressrosa changed to:', Value)
    end
})

AutoFarmGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Zou',
    Default = false, 
    Tooltip = 'Zou [Requirements: have swans room permission, if u not have swan room permission you must have 1 million Price of Fruit in Baclpack or Inventory, stop at Level 1500 and doing killing don swan(if u never killing him) doing admin Quest and Killing Rip Indra for permission to Go Zou]', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Zou changed to:', Value)
    end
})

-- [Add Toggle: AutoMasteryFarm.GroupBox] --

MasteryGroupBox:AddToggle('MyToggle', {
    Text = 'with Mastery Farm',
    Default = false, 
    Tooltip = 'Farm Mastery', 
    Callback = function(Value)
        print('[Azuner-Control] Mastery Farm changed to:', Value)
    end
})

MasteryGroupBox:AddSlider('MySlider', {
    Text = 'Health %',
    Default = 25,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
        print('[Azuner-Control] Health % was changed! New value:', Value)
    end
})

MasteryGroupBox:AddDropdown('MyDropdown', {
   
    Values = { 'Gun', 'Fruits' },
    Default = 1,
    Multi = false,

    Text = 'Mastery For',
    Tooltip = 'Farm Mastery For [Blox Fruits or Gun]', -- Information shown when you hover over the textbox

    Callback = function(Value)
        print('[Azuner-Control] Farm Mastery For [Blox Fruits or Gun] dropdown got changed:', Value)
    end
})

-- [Add Toggle: OtherMainGroupBox.GroupBox] --

OtherMainGroupBox:AddToggle('MyToggle', {
    Text = 'Mob Aura',
    Default = false, 
    Tooltip = 'Kill Around Monster', 
    Callback = function(Value)
        print('[Azuner-Control] Mob Aura changed to:', Value)
    end
})

OtherMainGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Castle Raid',
    Default = false, 
    Tooltip = '', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Castle Raid changed to:', Value)
    end
})

OtherMainGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Citizen Quest',
    Default = false, 
    Tooltip = '', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Citizen Quest changed to:', Value)
    end
})

OtherMainGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Elite Hunter',
    Default = false, 
    Tooltip = '', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Elite Hunter changed to:', Value)
    end
})

OtherMainGroupBox:AddLabel('')

OtherMainGroupBox:AddLabel('Ken Status: Lv.')

OtherMainGroupBox:AddLabel('Delay: 120sec')

OtherMainGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Train Observation',
    Default = false, 
    Tooltip = '', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Train Observation changed to:', Value)
    end
})

OtherMainGroupBox:AddInput('MyTextbox', {
    Default = '120',
    Numeric = true, 
    Finished = false,
    Text = 'Auto Train Observation Delay',
    Tooltip = 'This is a tooltip', 
    Placeholder = 'Placeholder text', 
    Callback = function(Value)
        print('[Azuner-Control] Delay Auto Train Observation updated. Number :', Value)
    end
})

OtherMainGroupBox:AddToggle('MyToggle', {
    Text = 'Auto Train Observation + Rejoin ',
    Default = false, 
    Tooltip = '', 
    Callback = function(Value)
        print('[Azuner-Control] Auto Train Observation + Rejoin changed to:', Value)
    end
})

-- [Add Toggle: AutoMasteryFarm.GroupBox] --

-- [Add Toggle: End] --
