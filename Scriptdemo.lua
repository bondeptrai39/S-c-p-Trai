loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Ronbon",
         Animation = "By Ronbon premium "
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id= 74707424544690",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
  end
  })
  AddButton(Tab1o, {
     Name = "Min gaming Vienamese",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinXoV"))()
  end
  })
AddButton(Tab2o, {
     Name = "Min gaming English",
    Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinXoE"))() 
  end
  })
  AddButton(Tab2o, {
     Name = "Rubuv3",
    Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RuBuRzVn"))() 
  end
  })
  AddButton(Tab2o, {
     Name = "rubuv4",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bubu2k/Rubutv/refs/heads/main/RuBuV4.lua"))()
  end
  })
  
  
