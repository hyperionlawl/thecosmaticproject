--[[
 ██████╗ ██████╗ ███████╗███╗   ███╗ ██████╗
██╔════╝██╔═══██╗██╔════╝████╗ ████║██╔═══██╗
██║     ██║   ██║███████╗██╔████╔██║██║   ██║
██║     ██║   ██║╚════██║██║╚██╔╝██║██║   ██║
╚██████╗╚██████╔╝███████║██║ ╚═╝ ██║╚██████╔╝
 ╚═════╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝ ╚═════╝
We unparallelled.
]]
-- Loadstring for UNC API
wait(2)
local v0=Instance.new("ScreenGui");v0.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui");local v2=Instance.new("TextLabel");v2.Text="Cosmo Graphical User Interface Test";v2.Size=UDim2.new(1,877 -(282 + 595) ,0,1667 -(1523 + 114) );v2.TextSize=18 + 2 ;v2.TextColor3=Color3.new(1 -0 ,1,1066 -(68 + 997) );v2.BackgroundColor3=Color3.fromRGB(30,1300 -(226 + 1044) ,130 -100 );v2.Parent=v0;local v9=Instance.new("Frame");v9.Size=UDim2.new(0,400,117 -(32 + 85) ,265 + 5 );v9.Position=UDim2.new(0.5 + 0 , -(1157 -(892 + 65)),0.5, -120);v9.BackgroundColor3=Color3.fromRGB(45,45,107 -62 );v9.Parent=v0;local v14=Instance.new("TextBox");v14.Size=UDim2.new(0.8 -0 ,0 -0 ,0.8,350 -(87 + 263) );v14.Position=UDim2.new(0.1,180 -(67 + 113) ,0.1 + 0 ,0 -0 );v14.MultiLine=true;v14.TextWrapped=true;v14.Text="Enter a script in this textbox (supports multi lines.)";v14.TextColor3=Color3.new(1,1 + 0 ,3 -2 );v14.BackgroundColor3=Color3.fromRGB(992 -(802 + 150) ,107 -67 ,72 -32 );v14.Parent=v9;local v23=Instance.new("TextButton");v23.Text="Execute Code";v23.Size=UDim2.new(0.5 + 0 ,997 -(915 + 82) ,0.1,0 -0 );v23.Position=UDim2.new(0.25 + 0 ,0,0.9 -0 ,1187 -(1069 + 118) );v23.Parent=v9;v23.MouseButton1Click:Connect(function() local v28=v14.Text;executeCode(v28);end);
