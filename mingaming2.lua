--[[

From: Noguchi Hyuga
- Website: iamkhnah.github.io/noguchihyuga/index.html 
- Facebook Founder: fb.com/p.khnah.itonltz
- Discord Server: https://discord.gg/836PgY82J4

--// Lưu Ý:
- Không Được Share Hay Crack Mã Nguồn Này Cho Ai!
- Chúng Tôi Không Nhận Hỗ Trợ Những Mã Nguồn Miễn Phí, Xin Đừng Bảo Vì Sao.
- Nếu Bạn Edit Source Và Up Web Share Nhớ Obfuscate Script. Nếu Bạn Có Tiền Thì Sử Dụng: Lura.Ph, Luarmor.Net | Nếu Bạn Không Có Tiền Thì Dùng: luaobfuscate.com, MoonSec, 77Fuscate,... Nhé!

]]--


if  not LPH_OBFUSCATED then
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end
spawn(function()
	for v610, v611 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
		if ((v611.Name == "Death") or (v611.Name == "Spawn")) then
			v611:Destroy();
		end
	end
end);
spawn(function()
	for v612, v613 in pairs(game:GetDescendants()) do
		if (v613:IsA("ParticleEmitter") or v613:IsA("Trail")) then
			v613.Lifetime = NumberRange.new(0);
		elseif v613:IsA("Explosion") then
			v613.BlastPressure = 1;
			v613.BlastRadius = 1;
		elseif (v613:IsA("Fire") or v613:IsA("SpotLight") or v613:IsA("Smoke")) then
			v613.Enabled = false;
		end
	end
end);
local v0 = game:GetService("UserInputService");
local v1 = game:GetService("TweenService");
local function v2(v103, v104)
	local v105 = nil;
	local v106 = nil;
	local v107 = nil;
	local v108 = nil;
	local function v109(v614)
		local v615 = v614.Position - v107 ;
		local v616 = UDim2.new(v108.X.Scale, v108.X.Offset + v615.X , v108.Y.Scale, v108.Y.Offset + v615.Y );
		local v617 = v1:Create(v104, TweenInfo.new(0.1), {
			Position = v616
		});
		v617:Play();
	end
	v103.InputBegan:Connect(function(v618)
		if ((v618.UserInputType == Enum.UserInputType.MouseButton1) or (v618.UserInputType == Enum.UserInputType.Touch)) then
			v105 = true;
			v107 = v618.Position;
			v108 = v104.Position;
			v618.Changed:Connect(function()
				if (v618.UserInputState == Enum.UserInputState.End) then
					v105 = false;
				end
			end);
		end
	end);
	v103.InputChanged:Connect(function(v619)
		if ((v619.UserInputType == Enum.UserInputType.MouseMovement) or (v619.UserInputType == Enum.UserInputType.Touch)) then
			v106 = v619;
		end
	end);
	v0.InputChanged:Connect(function(v620)
		if ((v620 == v106) and v105) then
			v109(v620);
		end
	end);
end
local v3 = {};
v3.Window = function(v110, v111)
	local v112 = {};
	local v113 = false;
	local v114 = false;
	local v115 = "";
	local v111 = v111 or Enum.KeyCode.RightControl ;
	local v116 = string.gsub(tostring(v111), "Enum.KeyCode.", "");
	local v117 = Instance.new("ScreenGui");
	v117.Name = "Anchor";
	v117.Parent = game.CoreGui;
	v117.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local v123 = Instance.new("Frame");
	v123.Name = "Main";
	v123.Parent = v117;
	v123.ClipsDescendants = true;
	v123.AnchorPoint = Vector2.new(0.5, 0.5);
	v123.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v123.BackgroundTransparency = 0.3;
	v123.Position = UDim2.new(0.5, 0, 0.5, 0);
	v123.Size = UDim2.new(0, 0, 0, 0);
	v123:TweenSize(UDim2.new(0, 656, 0, 400), "Out", "Quad", 0, true);
	v123:TweenSize(UDim2.new(0, 656, 0, 350), "Out", "Quad", 0, true);
	v123:TweenSize(UDim2.new(0, 555, 0, 352), "Out", "Quad", 0, true);
	local v132 = Instance.new("UIStroke");
	v132.Name = "BtnStroke";
	v132.Parent = v123;
	v132.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	v132.Color = Color3.fromRGB(0, 205, 0);
	v132.LineJoinMode = Enum.LineJoinMode.Round;
	v132.Thickness = 1.7;
	v132.Transparency = 0.5;
	v132.Enabled = true;
	v132.Archivable = true;
	local v144 = Instance.new("UICorner");
	v144.Parent = Page;
	local v146 = Instance.new("ImageLabel");
	v146.Name = "Page";
	v146.Parent = v123;
	v146.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v146.BackgroundTransparency = 4.1;
	v146.Position = UDim2.new(0.400426834, 0, 0.075000003, 0);
	v146.Size = UDim2.new(0, 263, 0, 325);
	v146.Image = "http://www.roblox.com/asset/?id="   .. tostring(18828384631) ;
	local v154 = Instance.new("UICorner");
	v154.Name = "MCNR";
	v154.Parent = v123;
	local v157 = Instance.new("UICorner");
	v157.Name = "MCNR";
	v157.Parent = BackgroundImage;
	local v160 = Instance.new("UICorner");
	v160.Name = "lol";
	v160.Parent = Dark;
	local v163 = Instance.new("Frame");
	v163.Name = "Top";
	v163.Parent = v123;
	v163.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v163.Size = UDim2.new(0, 556, 0, 30);
	v163.BackgroundTransparency = 1;
	local v169 = Instance.new("UICorner");
	v169.Name = "TCNR";
	v169.Parent = v163;
	v169.CornerRadius = UDim.new(0, 5);
	local v173 = Instance.new("TextLabel");
	v173.Name = "ttittles";
	v173.Parent = v163;
	v173.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v173.BackgroundTransparency = 1;
	v173.Position = UDim2.new(0, 30, 0.05, 0);
	v173.Size = UDim2.new(0, 255, 0.05, 25);
	v173.Font = Enum.Font.SourceSansBold;
	v173.Text = "Min Gaming";
	v173.TextSize = 17;
	v173.TextColor3 = Color3.fromRGB(75, 188, 6);
	v173.TextXAlignment = Enum.TextXAlignment.Left;
	local v187 = Instance.new("TextLabel");
	v187.Name = "patch";
	v187.Parent = v163;
	v187.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v187.BackgroundTransparency = 1;
	v187.Position = UDim2.new(0, 200, 0.05, 0);
	v187.Size = UDim2.new(0, 255, 0.05, 25);
	v187.Font = Enum.Font.SourceSansBold;
	v187.Text = " ";
	v187.TextSize = 17;
	v187.TextColor3 = Color3.fromRGB(43, 43, 43);
	v187.TextXAlignment = Enum.TextXAlignment.Left;
	local v199 = Instance.new("Frame");
	v199.Name = "Tab";
	v199.Parent = v123;
	v199.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v199.Position = UDim2.new(0, 14, 0, 33);
	v199.BackgroundTransparency = 1;
	v199.Size = UDim2.new(0, 138, 0, 307);
	local v132 = Instance.new("UIStroke");
	local v206 = Instance.new("ScrollingFrame");
	v206.Name = "ScrollTab";
	v206.Parent = v199;
	v206.Active = true;
	v206.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v206.Position = UDim2.new(0, 0, 0, 0);
	v206.BackgroundTransparency = 1;
	v206.Size = UDim2.new(0, 138, 0, 307);
	v206.ScrollBarThickness = 0;
	local v215 = Instance.new("UICorner");
	v215.Parent = v199;
	v215.CornerRadius = UDim.new(0, 5);
	local v218 = Instance.new("UIListLayout");
	v218.Name = "PLL";
	v218.Parent = v206;
	v218.SortOrder = Enum.SortOrder.LayoutOrder;
	v218.Padding = UDim.new(0, 2);
	local v224 = Instance.new("UIPadding");
	v224.Name = "PPD";
	v224.Parent = v206;
	local v132 = Instance.new("UIStroke");
	local v146 = Instance.new("Frame");
	v146.Name = "Page";
	v146.Parent = v123;
	v146.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	v146.Position = UDim2.new(0, 162, 0, 33);
	v146.Size = UDim2.new(0, 380, 0, 308);
	v146.BackgroundTransparency = 1;
	local v227 = Instance.new("UICorner");
	v227.Parent = v146;
	v227.CornerRadius = UDim.new(0, 3);
	local v230 = Instance.new("Frame");
	v230.Name = "MainPage";
	v230.Parent = v146;
	v230.ClipsDescendants = true;
	v230.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v230.BackgroundTransparency = 1;
	v230.Size = UDim2.new(0, 380, 0, 307);
	local v237 = Instance.new("Folder");
	v237.Name = "PageList";
	v237.Parent = v230;
	local v240 = Instance.new("UIPageLayout");
	v240.Parent = v237;
	v240.SortOrder = Enum.SortOrder.LayoutOrder;
	v240.EasingDirection = Enum.EasingDirection.InOut;
	v240.EasingStyle = Enum.EasingStyle.Quad;
	v240.FillDirection = Enum.FillDirection.Vertical;
	v240.Padding = UDim.new(0, 10);
	v240.TweenTime = 0;
	v240.GamepadInputEnabled = false;
	v240.ScrollWheelInputEnabled = false;
	v240.TouchInputEnabled = false;
	v2(v163, v123);
	v0.InputBegan:Connect(function(v621)
		if (v621.KeyCode == Enum.KeyCode.RightControl) then
			if (v113 == false) then
				v113 = true;
				v123:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0, true);
			else
				v113 = false;
				v123:TweenSize(UDim2.new(0, 556, 0, 350), "Out", "Quad", 0, true);
			end
		end
	end);
	local v254 = {};
	v254.T = function(v622, v623, v624)
		local v625 = Instance.new("UIStroke");
		local v626 = Instance.new("UICorner");
		local v627 = Instance.new("TextButton");
		local v628 = Instance.new("TextLabel");
		local v629 = Instance.new("UICorner");
		local v630 = Instance.new("TextLabel");
		v627.Parent = v206;
		v627.Name = v623   .. "Server" ;
		v627.Text = "";
		v627.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		v627.BackgroundTransparency = 1;
		v627.Size = UDim2.new(0, 136, 0, 30);
		v627.Font = Enum.Font.SourceSansBold;
		v627.TextColor3 = Color3.fromRGB(255, 255, 255);
		v627.TextSize = 12;
		v627.TextTransparency = 0.9;
		v630.Parent = v627;
		v630.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		v630.BackgroundTransparency = 1;
		v630.Position = UDim2.new(0, 30, 0, 2);
		v630.Size = UDim2.new(0, 100, 0, 25);
		v630.Font = Enum.Font.SourceSansBold;
		v630.Text = v623;
		v630.TextColor3 = Color3.fromRGB(255, 255, 255);
		v630.TextSize = 14.5;
		v630.TextXAlignment = Enum.TextXAlignment.Left;
		local v653 = Instance.new("ImageLabel");
		v653.Name = "LogoIDK";
		v653.Parent = v627;
		v653.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v653.BackgroundTransparency = 1;
		v653.Position = UDim2.new(0, 6, 0, 4.5);
		v653.Size = UDim2.new(0, 20, 0, 20);
		v653.Image = v624;
		v629.CornerRadius = UDim.new(0, 5);
		v629.Parent = v627;
		v626.CornerRadius = UDim.new(0, 5);
		v626.Parent = v627;
		local v665 = Instance.new("ScrollingFrame");
		v665.Name = v623   .. "_Page" ;
		v665.Parent = v237;
		v665.Active = true;
		v665.BackgroundColor3 = Color3.fromRGB(0, 10, 250);
		v665.Position = UDim2.new(0, 0, 0, 0);
		v665.BackgroundTransparency = 1;
		v665.Size = UDim2.new(0, 400, 0, 307);
		v665.ScrollBarThickness = 0;
		local v674 = Instance.new("UICorner");
		v674.Parent = v230;
		v674.CornerRadius = UDim.new(0, 5);
		local v677 = Instance.new("UIPadding");
		local v678 = Instance.new("UIListLayout");
		v677.Parent = v665;
		v678.Padding = UDim.new(0, 3);
		v678.Parent = v665;
		v678.SortOrder = Enum.SortOrder.LayoutOrder;
		local v684 = {};
		function ActivateTab(v902)
			if activeTab then
				activeTab.BackgroundTransparency = 1;
			end
			activeTab = v902;
			activeTab.BackgroundTransparency = 0.8;
			local v904 = string.gsub(v902.Name, "Server", "")   .. "_Page" ;
			for v1459, v1460 in pairs(v237:GetChildren()) do
				if (v1460.Name == v904) then
					v240:JumpTo(v1460);
				end
			end
		end
		for v905, v906 in pairs(v206:GetChildren()) do
			if v906:IsA("TextButton") then
				table.insert(v684, v906);
				v906.MouseButton1Click:Connect(function()
					ActivateTab(v906);
				end);
			end
		end
		if (v114 == false) then
			for v1589, v1590 in ipairs(v684) do
				v1:Create(v1590, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end
			ActivateTab(v684[1]);
			v114 = true;
		end
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				v665.CanvasSize = UDim2.new(0, 0, 0, v678.AbsoluteContentSize.Y + 20 );
				v206.CanvasSize = UDim2.new(0, 0, 0, v218.AbsoluteContentSize.Y + 20 );
			end);
		end);
		local v685 = {};
		v685.Button = function(v907, v908, v909)
			local v910 = Instance.new("Frame");
			local v911 = Instance.new("UICorner");
			local v912 = Instance.new("TextButton");
			local v913 = Instance.new("UICorner");
			local v914 = Instance.new("Frame");
			local v915 = Instance.new("UICorner");
			v910.Name = "Button";
			v910.Parent = v665;
			v910.BackgroundColor3 = Color3.new(0, 0, 0);
			v910.BackgroundTransparency = 1;
			v910.Size = UDim2.new(0, 358, 0, 33);
			v911.CornerRadius = UDim.new(0, 5);
			v911.Parent = v910;
			v912.Name = "TextBtn";
			v912.Parent = v910;
			v912.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v912.BackgroundTransparency = 0.8;
			v912.Position = UDim2.new(0, 0, 0, 0);
			v912.Size = UDim2.new(0, 379, 0, 33);
			v912.AutoButtonColor = false;
			v912.Font = Enum.Font.SourceSansBold;
			v912.Text = "[ "   .. v908   .. " ]" ;
			v912.TextColor3 = Color3.fromRGB(255, 255, 255);
			v912.TextSize = 15;
			v913.CornerRadius = UDim.new(0, 5);
			v913.Parent = v912;
			v914.Name = "Black";
			v914.Parent = v910;
			v914.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v914.BackgroundTransparency = 1;
			v914.BorderSizePixel = 0;
			v914.Position = UDim2.new(0, 0, 0, 0);
			v914.Size = UDim2.new(0, 379, 0, 33);
			v915.CornerRadius = UDim.new(0, 5);
			v915.Parent = v914;
			v912.MouseEnter:Connect(function()
				v1:Create(v914, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.7
				}):Play();
			end);
			v912.MouseLeave:Connect(function()
				v1:Create(v914, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end);
			v912.MouseButton1Click:Connect(function()
				v912.TextSize = 0;
				v1:Create(v912, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextSize = 15
				}):Play();
				v909();
			end);
		end;
		v685.Toggle = function(v946, v947, v948, v949)
			v948 = v948 or false ;
			local v950 = v948;
			_G.Color = Color3.fromRGB(240, 10, 10);
			_G.TrueColor = Color3.fromRGB(0, 0, 0);
			local v951 = Instance.new("UICorner");
			local v952 = Instance.new("UIPadding");
			local v953 = Instance.new("UIStroke");
			local v954 = Instance.new("TextButton");
			local v955 = Instance.new("UICorner");
			local v956 = Instance.new("TextLabel");
			local v957 = Instance.new("TextButton");
			local v958 = Instance.new("UICorner");
			local v959 = Instance.new("Frame");
			local v960 = Instance.new("UICorner");
			local v961 = Instance.new("ImageLabel");
			v954.Name = "Button";
			v954.Parent = v665;
			v954.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v954.BackgroundTransparency = 0.8;
			v954.Size = UDim2.new(0, 379, 0, 46);
			v954.AutoButtonColor = false;
			v954.Font = Enum.Font.SourceSans;
			v954.Text = "";
			v954.TextColor3 = Color3.fromRGB(0, 0, 0);
			v954.TextSize = 11;
			v955.CornerRadius = UDim.new(0, 5);
			v955.Parent = v954;
			v961.Name = "Icon";
			v961.Parent = v954;
			v961.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v961.BackgroundTransparency = 1;
			v961.Position = UDim2.new(0, 5, 0, 8);
			v961.Size = UDim2.new(0, 30, 0, 30);
			v956.Parent = v954;
			v956.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v956.BackgroundTransparency = 1;
			v956.Position = UDim2.new(0, 40, 0, 0);
			v956.Size = UDim2.new(0, 280, 0, 46);
			v956.Font = Enum.Font.SourceSansBold;
			v956.Text = v947;
			v956.TextColor3 = Color3.fromRGB(255, 255, 255);
			v956.TextSize = 15;
			v956.TextXAlignment = Enum.TextXAlignment.Left;
			v957.Name = "ToggleImage";
			v957.Parent = v954;
			v957.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
			v957.BackgroundTransparency = 0.1;
			v957.Position = UDim2.new(0, 320, 0, 13);
			v957.Size = UDim2.new(0, 45, 0, 20);
			v957.Text = "";
			v958.CornerRadius = UDim.new(0, 10);
			v958.Parent = v957;
			v959.Name = "Circle";
			v959.Parent = v957;
			v959.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v959.Position = UDim2.new(0, 2, 0, 2);
			v959.Size = UDim2.new(0, 16, 0, 16);
			v960.CornerRadius = UDim.new(0, 10);
			v960.Parent = v959;
			v957.MouseButton1Click:Connect(function()
				if (v950 == false) then
					v950 = true;
					v953.Color = _G.TrueColor;
					v959:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.1, true);
					v1:Create(v959, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = _G.TrueColor
					}):Play();
				else
					v950 = false;
					v953.Color = _G.Color;
					v959:TweenPosition(UDim2.new(0, 2, 0, 2), "Out", "Sine", 0.1, true);
					v1:Create(v959, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					}):Play();
				end
				pcall(v949, v950);
			end);
			if (v948 == true) then
				v950 = true;
				v953.Color = _G.TrueColor;
				v959:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0, true);
				v1:Create(v959, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = _G.TrueColor
				}):Play();
				pcall(v949, v950);
			end
		end;
		v685.Dropdown = function(v1009, v1010, v1011, v1012)
			local v1013 = false;
			local v1014 = Instance.new("Frame");
			local v1015 = Instance.new("UICorner");
			local v1016 = Instance.new("UICorner");
			local v1017 = Instance.new("UICorner");
			local v1018 = Instance.new("TextLabel");
			local v1019 = Instance.new("ScrollingFrame");
			local v1020 = Instance.new("UIListLayout");
			local v1021 = Instance.new("UIPadding");
			local v1022 = Instance.new("TextButton");
			local v1023 = Instance.new("TextButton");
			local v1024 = Instance.new("ImageLabel");
			local v1025 = Instance.new("UIStroke");
			v1014.Name = "Dropdown";
			v1014.Parent = v665;
			v1014.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1014.BackgroundTransparency = 0.8;
			v1014.ClipsDescendants = true;
			v1014.Size = UDim2.new(0, 379, 0, 38);
			v1015.CornerRadius = UDim.new(0, 3);
			v1015.Parent = v1014;
			local v1034 = Instance.new("ImageLabel");
			v1034.Name = "Icon";
			v1034.Parent = v1014;
			v1034.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1034.BackgroundTransparency = 1;
			v1034.Position = UDim2.new(0, 5, 0, 3);
			v1034.Size = UDim2.new(0, 30, 0, 30);
			v1018.Name = "DropTitle";
			v1018.Parent = v1014;
			v1018.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1018.BackgroundTransparency = 1;
			v1018.Size = UDim2.new(0, 379, 0, 38);
			v1018.Font = Enum.Font.SourceSansBold;
			v1018.Text = v1010;
			v1018.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1018.TextSize = 15;
			v1018.TextXAlignment = Enum.TextXAlignment.Left;
			v1018.Position = UDim2.new(0, 40, 0, 0);
			v1023.Name = "SelectItems";
			v1023.Parent = v1014;
			v1023.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
			v1023.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1023.BackgroundTransparency = 0.1;
			v1023.Position = UDim2.new(0, 220, 0, 34);
			v1023.Size = UDim2.new(0, 155, 0, 30);
			v1023.Font = Enum.Font.SourceSansBold;
			v1023.TextSize = 12;
			v1023.Text = "Chọn..";
			v1023.ClipsDescendants = true;
			v1023.TextXAlignment = Enum.TextXAlignment.Left;
			local v1066 = Instance.new("UIPadding");
			v1066.Parent = v1023;
			v1066.PaddingLeft = UDim.new(0, 15);
			v1066.PaddingRight = UDim.new(0, 15);
			v1023.AnchorPoint = Vector2.new(0, 3);
			v1016.Parent = v1023;
			v1016.CornerRadius = UDim.new(0, 5);
			v1017.Parent = v1019;
			v1017.CornerRadius = UDim.new(0, 5);
			v1019.Name = "DropScroll";
			v1019.Parent = v1014;
			v1019.Active = true;
			v1019.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
			v1019.BackgroundTransparency = 0.1;
			v1019.BorderSizePixel = 0;
			v1019.Position = UDim2.new(0, 2, 0, 40);
			v1019.Size = UDim2.new(0, 375, 0, 100);
			v1019.ScrollBarThickness = 3;
			v1020.Parent = v1019;
			v1020.SortOrder = Enum.SortOrder.LayoutOrder;
			v1020.Padding = UDim.new(0, 5);
			v1021.Parent = v1019;
			v1021.PaddingLeft = UDim.new(0, 5);
			v1021.PaddingTop = UDim.new(0, 10);
			for v1464, v1465 in next, v1011 do
				local v1466 = Instance.new("TextButton");
				v1466.Name = "Item";
				v1466.Parent = v1019;
				v1466.BackgroundColor3 = Color3.fromRGB(46, 56, 56);
				v1466.BackgroundTransparency = 1;
				v1466.Size = UDim2.new(0, 379, 0, 26);
				v1466.Font = Enum.Font.SourceSansBold;
				v1466.Text = tostring(v1465);
				v1466.TextColor3 = Color3.fromRGB(255, 255, 255);
				v1466.TextSize = 12;
				v1466.TextTransparency = 0.5;
				v1466.TextXAlignment = Enum.TextXAlignment.Center;
				v1466.MouseEnter:Connect(function()
					v1:Create(v1466, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1466.MouseLeave:Connect(function()
					v1:Create(v1466, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1466.MouseButton1Click:Connect(function()
					v1013 = false;
					v1014:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
					v1:Create(v1024, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1012(v1466.Text);
					v1023.Text = v1466.Text;
				end);
			end
			v1019.CanvasSize = UDim2.new(0, 0, 0, v1020.AbsoluteContentSize.Y + 10 );
			v1023.MouseButton1Click:Connect(function()
				if (v1013 == false) then
					v1013 = true;
					v1014:TweenSize(UDim2.new(0, 379, 0, 142), "Out", "Quad", 0.1, true);
					v1:Create(v1024, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
				else
					v1013 = false;
					v1014:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
					v1:Create(v1024, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
				end
			end);
			local v1092 = {};
			v1092.Add = function(v1480, v1481)
				local v1482 = Instance.new("TextButton");
				v1482.Name = "Item";
				v1482.Parent = v1019;
				v1482.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				v1482.BackgroundTransparency = 1;
				v1482.Size = UDim2.new(0, 379, 0, 26);
				v1482.Font = Enum.Font.SourceSansBold;
				v1482.Text = tostring(v1481);
				v1482.TextColor3 = Color3.fromRGB(255, 255, 255);
				v1482.TextSize = 13;
				v1482.TextTransparency = 0.5;
				v1482.MouseEnter:Connect(function()
					v1:Create(v1482, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1482.MouseLeave:Connect(function()
					v1:Create(v1482, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1482.MouseButton1Click:Connect(function()
					v1013 = false;
					v1014:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
					v1:Create(v1024, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1012(v1482.Text);
					v1018.Text = v1010   .. ": "   .. v1482.Text ;
				end);
			end;
			v1092.Clear = function(v1494)
				v1018.Text = tostring(v1010)   .. ": " ;
				v1013 = false;
				v1014:TweenSize(UDim2.new(0, 379, 0, 38), "Out", "Quad", 0.1, true);
				v1:Create(v1024, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Rotation = 180
				}):Play();
				for v1595, v1596 in next, v1019:GetChildren() do
					if v1596:IsA("TextButton") then
						v1596:Destroy();
					end
				end
			end;
			return v1092;
		end;
		v685.Textbox = function(v1095, v1096, v1097, v1098)
			local v1099 = Instance.new("Frame");
			local v1100 = Instance.new("UICorner");
			local v1101 = Instance.new("Frame");
			local v1102 = Instance.new("UICorner");
			local v1103 = Instance.new("TextLabel");
			local v1104 = Instance.new("TextButton");
			local v1105 = Instance.new("TextBox");
			local v1106 = Instance.new("UICorner");
			v1099.Name = "Textbox";
			v1099.Parent = v665;
			v1099.BackgroundColor3 = Color3.new(0, 205, 0);
			v1099.BackgroundTransparency = 0.5;
			v1099.Size = UDim2.new(0, 379, 0, 31);
			v1100.CornerRadius = UDim.new(0, 5);
			v1100.Name = "TextboxCorner";
			v1100.Parent = v1099;
			v1101.Name = "Textboxx";
			v1101.Parent = v1099;
			v1101.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
			v1101.Position = UDim2.new(0, 1, 0, 1);
			v1101.Size = UDim2.new(0, 385, 0, 29);
			v1102.CornerRadius = UDim.new(0, 5);
			v1102.Name = "TextboxxCorner";
			v1102.Parent = v1101;
			v1103.Name = "TextboxLabel";
			v1103.Parent = v1099;
			v1103.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
			v1103.BackgroundTransparency = 1;
			v1103.Position = UDim2.new(0, 15, 0, 0);
			v1103.Text = v1096;
			v1103.Size = UDim2.new(0, 145, 0, 31);
			v1103.Font = Enum.Font.SourceSansBold;
			v1103.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1103.TextSize = 16;
			v1103.TextTransparency = 0;
			v1103.TextXAlignment = Enum.TextXAlignment.Left;
			v1104.Name = "txtbtn";
			v1104.Parent = v1099;
			v1104.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1104.BackgroundTransparency = 1;
			v1104.Position = UDim2.new(0, 1, 0, 1);
			v1104.Size = UDim2.new(0, 379, 0, 29);
			v1104.Font = Enum.Font.SourceSans;
			v1104.Text = "";
			v1104.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1104.TextSize = 14;
			v1105.Name = "RealTextbox";
			v1105.Parent = v1099;
			v1105.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1105.BackgroundTransparency = 0;
			v1105.Position = UDim2.new(0, 275, 0, 4);
			v1105.Size = UDim2.new(0, 100, 0, 24);
			v1105.Font = Enum.Font.SourceSansBold;
			v1105.Text = "";
			v1105.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1105.TextSize = 11;
			v1105.TextTransparency = 0;
			v1105.FocusLost:Connect(function()
				v1098(v1105.Text);
				if v1097 then
					v1105.Text = "";
				end
			end);
			v1106.CornerRadius = UDim.new(0, 5);
			v1106.Parent = v1105;
		end;
		v685.Label = function(v1161, v1162)
			local v1163 = Instance.new("TextLabel");
			local v1164 = Instance.new("UIPadding");
			local v1165 = {};
			v1163.Name = "Label";
			v1163.Parent = v665;
			v1163.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1163.BackgroundTransparency = 1;
			v1163.Size = UDim2.new(0, 410, 0, 20);
			v1163.Font = Enum.Font.SourceSansBold;
			v1163.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1163.TextSize = 16;
			v1163.Text = v1162;
			v1163.TextXAlignment = Enum.TextXAlignment.Left;
			v1164.PaddingLeft = UDim.new(0, 15);
			v1164.Parent = v1163;
			v1164.Name = "PaddingLabel";
			v1165.Set = function(v1496, v1497)
				v1163.Text = v1497;
			end;
			return v1165;
		end;
		v685.Label1 = function(v1182, v1183)
			local v1184 = Instance.new("TextLabel");
			local v1185 = Instance.new("UIPadding");
			local v1186 = {};
			v1184.Name = "Label1";
			v1184.Parent = v665;
			v1184.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1184.BackgroundTransparency = 1;
			v1184.Size = UDim2.new(0, 410, 0, 20);
			v1184.Font = Enum.Font.SourceSansBold;
			v1184.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1184.TextSize = 15;
			v1184.Text = v1183;
			v1184.TextXAlignment = Enum.TextXAlignment.Left;
			v1185.PaddingLeft = UDim.new(0, 15);
			v1185.Parent = v1184;
			v1185.Name = "PaddingLabel1";
			v1186.Refresh = function(v1499, v1500)
				v1184.Text = v1500;
			end;
			return v1186;
		end;
		v685.Textbox = function(v1203, v1204, v1205, v1206)
			local v1207 = Instance.new("Frame");
			local v1208 = Instance.new("UICorner");
			local v1209 = Instance.new("Frame");
			local v1210 = Instance.new("UICorner");
			local v1211 = Instance.new("TextLabel");
			local v1212 = Instance.new("TextButton");
			local v1213 = Instance.new("TextBox");
			local v1214 = Instance.new("UICorner");
			v1207.Name = "Textbox";
			v1207.Parent = v665;
			v1207.BackgroundColor3 = Color3.new(0, 205, 0);
			v1207.BackgroundTransparency = 0.5;
			v1207.Size = UDim2.new(0, 379, 0, 31);
			v1208.CornerRadius = UDim.new(0, 5);
			v1208.Name = "TextboxCorner";
			v1208.Parent = v1207;
			v1209.Name = "Textboxx";
			v1209.Parent = v1207;
			v1209.BackgroundColor3 = Color3.fromRGB(45, 45, 45);
			v1209.Position = UDim2.new(0, 1, 0, 1);
			v1209.Size = UDim2.new(0, 385, 0, 29);
			v1210.CornerRadius = UDim.new(0, 3);
			v1210.Name = "TextboxxCorner";
			v1210.Parent = v1209;
			v1211.Name = "TextboxLabel";
			v1211.Parent = v1207;
			v1211.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
			v1211.BackgroundTransparency = 1;
			v1211.Position = UDim2.new(0, 15, 0, 0);
			v1211.Text = v1204;
			v1211.Size = UDim2.new(0, 145, 0, 31);
			v1211.Font = Enum.Font.SourceSansBold;
			v1211.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1211.TextSize = 16;
			v1211.TextTransparency = 0;
			v1211.TextXAlignment = Enum.TextXAlignment.Left;
			v1212.Name = "txtbtn";
			v1212.Parent = v1207;
			v1212.BackgroundColor3 = Color3.fromRGB(240, 10, 10);
			v1212.BackgroundTransparency = 1;
			v1212.Position = UDim2.new(0, 1, 0, 1);
			v1212.Size = UDim2.new(0, 379, 0, 29);
			v1212.Font = Enum.Font.SourceSans;
			v1212.Text = "";
			v1212.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1212.TextSize = 14;
			v1213.Name = "RealTextbox";
			v1213.Parent = v1207;
			v1213.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1213.BackgroundTransparency = 0;
			v1213.Position = UDim2.new(0, 275, 0, 4);
			v1213.Size = UDim2.new(0, 100, 0, 24);
			v1213.Font = Enum.Font.SourceSansBold;
			v1213.Text = "";
			v1213.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1213.TextSize = 11;
			v1213.TextTransparency = 0;
			v1213.FocusLost:Connect(function()
				v1206(v1213.Text);
				if v1205 then
					v1213.Text = "";
				end
			end);
			v1214.CornerRadius = UDim.new(0, 3);
			v1214.Parent = v1213;
		end;
		v685.Label = function(v1269, v1270)
			local v1271 = Instance.new("TextLabel");
			local v1272 = Instance.new("UIPadding");
			local v1273 = {};
			v1271.Name = "Label";
			v1271.Parent = v665;
			v1271.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1271.BackgroundTransparency = 1;
			v1271.Size = UDim2.new(0, 410, 0, 30);
			v1271.Font = Enum.Font.SourceSansBold;
			v1271.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1271.TextSize = 14;
			v1271.Text = v1270;
			v1271.TextXAlignment = Enum.TextXAlignment.Left;
			v1272.PaddingLeft = UDim.new(0, 15);
			v1272.Parent = v1271;
			v1272.Name = "PaddingLabel";
			v1273.Set = function(v1502, v1503)
				v1271.Text = v1503;
			end;
			return v1273;
		end;
		v685.Label1 = function(v1290, v1291)
			local v1292 = Instance.new("TextLabel");
			local v1293 = Instance.new("UIPadding");
			local v1294 = {};
			v1292.Name = "Label1";
			v1292.Parent = v665;
			v1292.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1292.BackgroundTransparency = 1;
			v1292.Size = UDim2.new(0, 410, 0, 20);
			v1292.Font = Enum.Font.SourceSansBold;
			v1292.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1292.TextSize = 15;
			v1292.Text = v1291;
			v1292.RichText = true;
			v1292.TextXAlignment = Enum.TextXAlignment.Left;
			v1293.PaddingLeft = UDim.new(0, 15);
			v1293.Parent = v1292;
			v1293.Name = "PaddingLabel1";
			v1294.Refresh = function(v1505, v1506)
				v1292.Text = v1506;
			end;
			return v1294;
		end;
		v685.Dis = function(v1312, v1313, v1314)
			local v1315 = Instance.new("TextLabel");
			local v1316 = Instance.new("UIPadding");
			local v1317 = {};
			v1315.Name = "Label1";
			v1315.Parent = v665;
			v1315.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1315.BackgroundTransparency = 1;
			v1315.Size = UDim2.new(0, 410, 0, 20);
			v1315.Font = Enum.Font.SourceSansBold;
			v1315.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1315.TextSize = 15;
			v1315.Text = v1313;
			v1315.TextXAlignment = Enum.TextXAlignment.Left;
			Labeld.Name = "Labeld";
			Labeld.Parent = v665;
			Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Labeld.BackgroundTransparency = 1;
			Labeld.Size = UDim2.new(0, 410, 0, 20);
			Labeld.Font = Enum.Font.SourceSansBold;
			Labeld.TextColor3 = Color3.fromRGB(240, 10, 10);
			Labeld.TextSize = 15;
			Labeld.Text = v1314 or "" ;
			Labeld.TextXAlignment = Enum.TextXAlignment.Left;
			v1316.PaddingLeft = UDim.new(0, 15);
			v1316.Parent = v1315;
			v1316.Name = "PaddingLabel1";
			v1317.Refresh = function(v1508, v1509)
				v1315.Text = v1509;
			end;
			return v1317;
		end;
		v685.Seperator = function(v1344, v1345)
			local v1346 = Instance.new("Frame");
			local v1347 = Instance.new("Frame");
			local v1348 = Instance.new("TextLabel");
			local v1349 = Instance.new("Frame");
			v1346.Name = "Seperator";
			v1346.Parent = v665;
			v1346.BackgroundColor3 = Color3.fromRGB(43, 43, 43);
			v1346.BackgroundTransparency = 0.8;
			v1346.Size = UDim2.new(0, 379, 0, 30);
			v1348.Name = "Sep2";
			v1348.Parent = v1346;
			v1348.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1348.BackgroundTransparency = 1;
			v1348.Position = UDim2.new(0, 0, 0, 0);
			v1348.Size = UDim2.new(0, 379, 0, 30);
			v1348.Font = Enum.Font.SourceSansBold;
			v1348.Text = " "   .. v1345   .. " " ;
			v1348.TextColor3 = Color3.fromRGB(255, 255, 255);
			v1348.TextSize = 14;
		end;
		v685.UserAnchor = function(v1366)
		end;
		return v685;
	end;
	return v254;
end;
local v5 = Instance.new("ScreenGui");
local v6 = Instance.new("ImageButton");
local v7 = Instance.new("UICorner");
v5.Name = "ToggleUI";
v5.Parent = game.CoreGui;
v5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v6.Name = "ToggleButton";
v6.Parent = v5;
v6.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v6.BorderSizePixel = 0;
v6.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0);
v6.Size = UDim2.new(0, 53.5, 0, 53.5);
v6.BackgroundTransparency = 1;
v6.Image = "rbxassetid://13717478897";
v6.Draggable = true;
v6.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game);
end);
v7.CornerRadius = UDim.new(0, 15);
v7.Parent = v6;
if (game.PlaceId == 2753915549) then
	World1 = true;
elseif (game.PlaceId == 4442272183) then
	World2 = true;
elseif (game.PlaceId == 7449423635) then
	World3 = true;
end
function CheckQuest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value;
	if World1 then
		if ((MyLevel == 1) or (MyLevel <= 9)) then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059, 17, 1546);
			CFrameMon = CFrame.new(943, 45, 1562);
		elseif ((MyLevel == 10) or (MyLevel <= 14)) then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1524, 50, 37);
		elseif ((MyLevel == 15) or (MyLevel <= 29)) then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1128, 40, -451);
		elseif ((MyLevel == 30) or (MyLevel <= 39)) then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -1262, 40, 3905);
		elseif ((MyLevel == 40) or (MyLevel <= 59)) then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -976, 55, 4304);
		elseif ((MyLevel == 60) or (MyLevel <= 74)) then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(924, 7, 4482);
		elseif ((MyLevel == 75) or (MyLevel <= 89)) then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(1608, 9, 4371);
		elseif ((MyLevel == 90) or (MyLevel <= 99)) then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1362, 120, -1531);
		elseif ((MyLevel == 100) or (MyLevel <= 119)) then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1243, 140, -1437);
		elseif ((MyLevel == 120) or (MyLevel <= 149)) then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new( -5035, 29, 4326);
			CFrameMon = CFrame.new( -4881, 23, 4274);
		elseif ((MyLevel == 150) or (MyLevel <= 174)) then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -4953, 296, -2899);
		elseif ((MyLevel == 175) or (MyLevel <= 189)) then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -5260, 391, -2229);
		elseif ((MyLevel == 190) or (MyLevel <= 209)) then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5099, "-0", 474);
		elseif ((MyLevel == 210) or (MyLevel <= 249)) then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5655, 16, 866);
		elseif ((MyLevel == 250) or (MyLevel <= 274)) then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1820, 51, -2741);
		elseif ((MyLevel == 275) or (MyLevel <= 299)) then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1268, 30, -2996);
		elseif ((MyLevel == 300) or (MyLevel <= 324)) then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5335, 46, 8638);
		elseif ((MyLevel == 325) or (MyLevel <= 374)) then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5803, 86, 8829);
		elseif ((MyLevel == 375) or (MyLevel <= 399)) then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(60998, 50, 1534);
		elseif ((MyLevel == 400) or (MyLevel <= 449)) then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(61866, 55, 1655);
		elseif ((MyLevel == 450) or (MyLevel <= 474)) then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new( -4720, 846, -1951);
			CFrameMon = CFrame.new( -4720, 846, -1951);
		elseif ((MyLevel == 475) or (MyLevel <= 524)) then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new( -7861, 5545, -381);
			CFrameMon = CFrame.new( -7741, 5580, -395);
		elseif ((MyLevel == 525) or (MyLevel <= 549)) then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7727, 5650, -1410);
		elseif ((MyLevel == 550) or (MyLevel <= 624)) then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7894, 5640, -1629);
		elseif ((MyLevel == 625) or (MyLevel <= 649)) then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5391, 70, 4023);
		elseif (MyLevel >= 650) then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5985, 70, 4790);
		end
	elseif World2 then
		if ((MyLevel == 700) or (MyLevel <= 724)) then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -614, 90, 2240);
		elseif ((MyLevel == 725) or (MyLevel <= 774)) then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -867, 110, 1621);
		elseif ((MyLevel == 775) or (MyLevel <= 874)) then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(635, 73, 919);
			CFrameMon = CFrame.new(635, 73, 919);
		elseif ((MyLevel == 875) or (MyLevel <= 899)) then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -2552, 110, -3050);
		elseif ((MyLevel == 900) or (MyLevel <= 949)) then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -1695, 110, -3299);
		elseif ((MyLevel == 950) or (MyLevel <= 974)) then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -5715, 90, -917);
		elseif ((MyLevel == 975) or (MyLevel <= 999)) then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -6027, 50, -1130);
		elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(445, 440, -5175);
		elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(1224, 460, -5332);
		elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -5941, 50, -4322);
		elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -6306, 50, -5752);
		elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -5233, 60, -6227);
		elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -4955, 60, -4836);
		elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(1033, 125, 32909);
		elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(809, 80, 33090);
		elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(838, 160, 33408);
		elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(1238, 220, 33148);
		elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5836, 80, -6257);
		elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5700, 80, -6724);
		elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -2583, 80, -9821);
		elseif (MyLevel >= 1450) then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -3339, 290, -10412);
		end
	elseif World3 then
		if ((MyLevel == 1500) or (MyLevel <= 1524)) then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new( -44, 70, 5623);
		elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new(219, 105, 6018);
		elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(5992, 90, -1581);
		elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
			Mon = "Dragon Crew Archer";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(6472, 370, -151);
		elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4836, 740, 928);
		elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
			Mon = "Giant Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4784, 660, 155);
		elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3156, 120, -7837);
		elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
			Mon = "Marine Rear Admiral";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3205, 120, -6742);
		elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10550, 380, -8574);
		elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10764, 380, -8799);
		elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13335, 380, -7660);
		elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13844, 520, -7016);
		elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -12166, 380, -10375);
		elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -13098, 450, -9831);
		elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -8680, 190, 5852);
		elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -10144, 140, 5932);
		elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9275, 210, 6166);
		elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9442, 60, 6304);
		elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -1870, 100, -10225);
		elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -2005, 100, -10585);
		elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -501, 100, -10883);
		elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -690, 100, -11350);
		elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -2332, 90, -12049);
		elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -1514, 90, -12422);
		elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -1930, 90, -12963);
		elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -2123, 110, -12777);
		elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(110, 80, -12245);
		elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(579, 80, -12413);
		elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new( -68, 80, -12692);
		elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new(17, 80, -12962);
		elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -1371, 70, -14405);
		elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -836, 70, -14326);
		elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16431, 90, -223);
		elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16668, 70, -243);
		elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
			Mon = "Sun-kissed Warrior";
			LevelQuest = 1;
			NameQuest = "TikiQuest2";
			NameMon = "kissed";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16345, 80, 1004);
		elseif ((MyLevel == 2525) or (MyLevel <= 2549)) then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16634, 85, 1106);
		elseif ((MyLevel == 2550) or (MyLevel <= 2574)) then
			Mon = "Serpent Hunter";
			LevelQuest = 1;
			NameQuest = "TikiQuest3";
			NameMon = "Serpent Hunter";
			CFrameQuest = CFrame.new( -16665, 105, 1580);
			CFrameMon = CFrame.new( -16542.4824, 146.675156, 1529.61401, -0.999948919, 1.0729811e-8, 0.0101067368, 1.0128324e-8, 1, -5.9564663e-8, -0.0101067368, -5.9459257e-8, -0.999948919);
		elseif ((MyLevel == 2575) or (MyLevel <= 2600)) then
			Mon = "Skull Slayer";
			LevelQuest = 2;
			NameQuest = "TikiQuest3";
			NameMon = "Skull Slayer";
			CFrameQuest = CFrame.new( -16665, 105, 1580);
			CFrameMon = CFrame.new( -16849.9336, 147.005066, 1640.88354, 0.470148534, 0.491874039, -0.732816696, 1.72165e-8, 0.83030504, 0.55730921, 0.882587314, -0.262018114, 0.390366673);
		end
	end
end
function Hop()
	local v257 = game.PlaceId;
	local v258 = {};
	local v259 = "";
	local v260 = os.date("!*t").hour;
	local v261 = false;
	function TPReturner()
		local v695;
		if (v259 == "") then
			v695 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v257   .. "/servers/Public?sortOrder=Asc&limit=100" ));
		else
			v695 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v257   .. "/servers/Public?sortOrder=Asc&limit=100&cursor="   .. v259 ));
		end
		local v696 = "";
		if (v695.nextPageCursor and (v695.nextPageCursor ~= "null") and (v695.nextPageCursor ~= nil)) then
			v259 = v695.nextPageCursor;
		end
		local v697 = 0;
		for v1367, v1368 in pairs(v695.data) do
			local v1369 = true;
			v696 = tostring(v1368.id);
			if (tonumber(v1368.maxPlayers) > tonumber(v1368.playing)) then
				for v1696, v1697 in pairs(v258) do
					if (v697 ~= 0) then
						if (v696 == tostring(v1697)) then
							v1369 = false;
						end
					elseif (tonumber(v260) ~= tonumber(v1697)) then
						local v2214 = pcall(function()
							v258 = {};
							table.insert(v258, v260);
						end);
					end
					v697 = v697 + 1 ;
				end
				if (v1369 == true) then
					table.insert(v258, v696);
					wait();
					pcall(function()
						wait();
						game:GetService("TeleportService"):TeleportToPlaceInstance(v257, v696, game.Players.LocalPlayer);
					end);
					wait(4);
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner();
				if (v259 ~= "") then
					TPReturner();
				end
			end);
		end
	end
	Teleport();
end
function UpdateIslandESP()
	for v698, v699 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v699.Name ~= "Sea") then
					if  not v699:FindFirstChild("NameEsp") then
						local v2007 = Instance.new("BillboardGui", v699);
						v2007.Name = "NameEsp";
						v2007.ExtentsOffset = Vector3.new(0, 1, 0);
						v2007.Size = UDim2.new(1, 200, 1, 30);
						v2007.Adornee = v699;
						v2007.AlwaysOnTop = true;
						local v2013 = Instance.new("TextLabel", v2007);
						v2013.Font = "GothamBold";
						v2013.FontSize = "Size14";
						v2013.TextWrapped = true;
						v2013.Size = UDim2.new(1, 0, 1, 0);
						v2013.TextYAlignment = "Top";
						v2013.BackgroundTransparency = 1;
						v2013.TextStrokeTransparency = 0.5;
						v2013.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v699['NameEsp'].TextLabel.Text = v699.Name   .. "   \n"   .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v699.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v699:FindFirstChild("NameEsp") then
				v699:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v262)
	return v262 == nil ;
end
local function v24(v263)
	return math.floor(tonumber(v263) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v700, v701 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v701.Character) then
				if ESPPlayer then
					if ( not isnil(v701.Character.Head) and  not v701.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2023 = Instance.new("BillboardGui", v701.Character.Head);
						v2023.Name = "NameEsp"   .. Number ;
						v2023.ExtentsOffset = Vector3.new(0, 1, 0);
						v2023.Size = UDim2.new(1, 200, 1, 30);
						v2023.Adornee = v701.Character.Head;
						v2023.AlwaysOnTop = true;
						local v2030 = Instance.new("TextLabel", v2023);
						v2030.Font = Enum.Font.GothamSemibold;
						v2030.FontSize = "Size14";
						v2030.TextWrapped = true;
						v2030.Text = v701.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v701.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2030.Size = UDim2.new(1, 0, 1, 0);
						v2030.TextYAlignment = "Top";
						v2030.BackgroundTransparency = 1;
						v2030.TextStrokeTransparency = 0.5;
						if (v701.Team == game.Players.LocalPlayer.Team) then
							v2030.TextColor3 = Color3.new(3, 252, 3);
						else
							v2030.TextColor3 = Color3.new(3, 252, 3);
						end
					else
						v701.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v701.Name   .. " | "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v701.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v24((v701.Character.Humanoid.Health * 100) / v701.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v701.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v701.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v702, v703 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v703.Name, "Chest") then
				if ChestESP then
					if string.find(v703.Name, "Chest") then
						if  not v703:FindFirstChild("NameEsp"   .. Number ) then
							local v2348 = Instance.new("BillboardGui", v703);
							v2348.Name = "NameEsp"   .. Number ;
							v2348.ExtentsOffset = Vector3.new(0, 1, 0);
							v2348.Size = UDim2.new(1, 200, 1, 30);
							v2348.Adornee = v703;
							v2348.AlwaysOnTop = true;
							local v2354 = Instance.new("TextLabel", v2348);
							v2354.Font = Enum.Font.GothamSemibold;
							v2354.FontSize = "Size14";
							v2354.TextWrapped = true;
							v2354.Size = UDim2.new(1, 0, 1, 0);
							v2354.TextYAlignment = "Top";
							v2354.BackgroundTransparency = 1;
							v2354.TextStrokeTransparency = 0.5;
							if (v703.Name == "Chest1") then
								v2354.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2354.Text = "Chest 1"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v703.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v703.Name == "Chest2") then
								v2354.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2354.Text = "Chest 2"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v703.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v703.Name == "Chest3") then
								v2354.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2354.Text = "Chest 3"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v703.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v703["NameEsp"   .. Number ].TextLabel.Text = v703.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v703.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v703:FindFirstChild("NameEsp"   .. Number ) then
					v703:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v704, v705 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v705.Name, "Fruit") then
					if  not v705.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2041 = Instance.new("BillboardGui", v705.Handle);
						v2041.Name = "NameEsp"   .. Number ;
						v2041.ExtentsOffset = Vector3.new(0, 1, 0);
						v2041.Size = UDim2.new(1, 200, 1, 30);
						v2041.Adornee = v705.Handle;
						v2041.AlwaysOnTop = true;
						local v2048 = Instance.new("TextLabel", v2041);
						v2048.Font = Enum.Font.GothamSemibold;
						v2048.FontSize = "Size14";
						v2048.TextWrapped = true;
						v2048.Size = UDim2.new(1, 0, 1, 0);
						v2048.TextYAlignment = "Top";
						v2048.BackgroundTransparency = 1;
						v2048.TextStrokeTransparency = 0.5;
						v2048.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2048.Text = v705.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v705.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v705.Handle["NameEsp"   .. Number ].TextLabel.Text = v705.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v705.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v705.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v705.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v706, v707 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v707.Name == "Flower2") or (v707.Name == "Flower1")) then
				if FlowerESP then
					if  not v707:FindFirstChild("NameEsp"   .. Number ) then
						local v2060 = Instance.new("BillboardGui", v707);
						v2060.Name = "NameEsp"   .. Number ;
						v2060.ExtentsOffset = Vector3.new(0, 1, 0);
						v2060.Size = UDim2.new(1, 200, 1, 30);
						v2060.Adornee = v707;
						v2060.AlwaysOnTop = true;
						local v2066 = Instance.new("TextLabel", v2060);
						v2066.Font = Enum.Font.GothamSemibold;
						v2066.FontSize = "Size14";
						v2066.TextWrapped = true;
						v2066.Size = UDim2.new(1, 0, 1, 0);
						v2066.TextYAlignment = "Top";
						v2066.BackgroundTransparency = 1;
						v2066.TextStrokeTransparency = 0.5;
						v2066.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v707.Name == "Flower1") then
							v2066.Text = "Blue Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v707.Position).Magnitude / 3 )   .. " Distance" ;
							v2066.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v707.Name == "Flower2") then
							v2066.Text = "Red Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v707.Position).Magnitude / 3 )   .. " Distance" ;
							v2066.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v707["NameEsp"   .. Number ].TextLabel.Text = v707.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v707.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v707:FindFirstChild("NameEsp"   .. Number ) then
					v707:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v708, v709 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v709:IsA("Tool") then
			if RealFruitESP then
				if  not v709.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1808 = Instance.new("BillboardGui", v709.Handle);
					v1808.Name = "NameEsp"   .. Number ;
					v1808.ExtentsOffset = Vector3.new(0, 1, 0);
					v1808.Size = UDim2.new(1, 200, 1, 30);
					v1808.Adornee = v709.Handle;
					v1808.AlwaysOnTop = true;
					local v1815 = Instance.new("TextLabel", v1808);
					v1815.Font = Enum.Font.GothamSemibold;
					v1815.FontSize = "Size14";
					v1815.TextWrapped = true;
					v1815.Size = UDim2.new(1, 0, 1, 0);
					v1815.TextYAlignment = "Top";
					v1815.BackgroundTransparency = 1;
					v1815.TextStrokeTransparency = 0.5;
					v1815.TextColor3 = Color3.fromRGB(255, 0, 0);
					v1815.Text = v709.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v709.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v709.Handle["NameEsp"   .. Number ].TextLabel.Text = v709.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v709.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v709.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v709.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v710, v711 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v711:IsA("Tool") then
			if RealFruitESP then
				if  not v711.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1827 = Instance.new("BillboardGui", v711.Handle);
					v1827.Name = "NameEsp"   .. Number ;
					v1827.ExtentsOffset = Vector3.new(0, 1, 0);
					v1827.Size = UDim2.new(1, 200, 1, 30);
					v1827.Adornee = v711.Handle;
					v1827.AlwaysOnTop = true;
					local v1834 = Instance.new("TextLabel", v1827);
					v1834.Font = Enum.Font.GothamSemibold;
					v1834.FontSize = "Size14";
					v1834.TextWrapped = true;
					v1834.Size = UDim2.new(1, 0, 1, 0);
					v1834.TextYAlignment = "Top";
					v1834.BackgroundTransparency = 1;
					v1834.TextStrokeTransparency = 0.5;
					v1834.TextColor3 = Color3.fromRGB(255, 174, 0);
					v1834.Text = v711.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v711.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v711.Handle["NameEsp"   .. Number ].TextLabel.Text = v711.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v711.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v711.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v711.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v712, v713 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v713:IsA("Tool") then
			if RealFruitESP then
				if  not v713.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1846 = Instance.new("BillboardGui", v713.Handle);
					v1846.Name = "NameEsp"   .. Number ;
					v1846.ExtentsOffset = Vector3.new(0, 1, 0);
					v1846.Size = UDim2.new(1, 200, 1, 30);
					v1846.Adornee = v713.Handle;
					v1846.AlwaysOnTop = true;
					local v1853 = Instance.new("TextLabel", v1846);
					v1853.Font = Enum.Font.GothamSemibold;
					v1853.FontSize = "Size14";
					v1853.TextWrapped = true;
					v1853.Size = UDim2.new(1, 0, 1, 0);
					v1853.TextYAlignment = "Top";
					v1853.BackgroundTransparency = 1;
					v1853.TextStrokeTransparency = 0.5;
					v1853.TextColor3 = Color3.fromRGB(251, 255, 0);
					v1853.Text = v713.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v713.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v713.Handle["NameEsp"   .. Number ].TextLabel.Text = v713.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v713.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v713.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v713.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandESP()
	for v714, v715 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v715.Name ~= "Sea") then
					if  not v715:FindFirstChild("NameEsp") then
						local v2077 = Instance.new("BillboardGui", v715);
						v2077.Name = "NameEsp";
						v2077.ExtentsOffset = Vector3.new(0, 1, 0);
						v2077.Size = UDim2.new(1, 200, 1, 30);
						v2077.Adornee = v715;
						v2077.AlwaysOnTop = true;
						local v2083 = Instance.new("TextLabel", v2077);
						v2083.Font = "GothamBold";
						v2083.FontSize = "Size14";
						v2083.TextWrapped = true;
						v2083.Size = UDim2.new(1, 0, 1, 0);
						v2083.TextYAlignment = "Top";
						v2083.BackgroundTransparency = 1;
						v2083.TextStrokeTransparency = 0.5;
						v2083.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v715['NameEsp'].TextLabel.Text = v715.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v715.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v715:FindFirstChild("NameEsp") then
				v715:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v264)
	return v264 == nil ;
end
local function v24(v265)
	return math.floor(tonumber(v265) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v716, v717 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v717.Character) then
				if ESPPlayer then
					if ( not isnil(v717.Character.Head) and  not v717.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2093 = Instance.new("BillboardGui", v717.Character.Head);
						v2093.Name = "NameEsp"   .. Number ;
						v2093.ExtentsOffset = Vector3.new(0, 1, 0);
						v2093.Size = UDim2.new(1, 200, 1, 30);
						v2093.Adornee = v717.Character.Head;
						v2093.AlwaysOnTop = true;
						local v2100 = Instance.new("TextLabel", v2093);
						v2100.Font = Enum.Font.GothamSemibold;
						v2100.FontSize = "Size14";
						v2100.TextWrapped = true;
						v2100.Text = v717.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v717.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2100.Size = UDim2.new(1, 0, 1, 0);
						v2100.TextYAlignment = "Top";
						v2100.BackgroundTransparency = 1;
						v2100.TextStrokeTransparency = 0.5;
						if (v717.Team == game.Players.LocalPlayer.Team) then
							v2100.TextColor3 = Color3.new(3, 252, 3);
						else
							v2100.TextColor3 = Color3.new(3, 252, 3);
						end
					else
						v717.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v717.Name   .. " | "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v717.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v24((v717.Character.Humanoid.Health * 100) / v717.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v717.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v717.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v718, v719 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v719.Name, "Chest") then
				if ChestESP then
					if string.find(v719.Name, "Chest") then
						if  not v719:FindFirstChild("NameEsp"   .. Number ) then
							local v2370 = Instance.new("BillboardGui", v719);
							v2370.Name = "NameEsp"   .. Number ;
							v2370.ExtentsOffset = Vector3.new(0, 1, 0);
							v2370.Size = UDim2.new(1, 200, 1, 30);
							v2370.Adornee = v719;
							v2370.AlwaysOnTop = true;
							local v2376 = Instance.new("TextLabel", v2370);
							v2376.Font = Enum.Font.GothamSemibold;
							v2376.FontSize = "Size14";
							v2376.TextWrapped = true;
							v2376.Size = UDim2.new(1, 0, 1, 0);
							v2376.TextYAlignment = "Top";
							v2376.BackgroundTransparency = 1;
							v2376.TextStrokeTransparency = 0.5;
							if (v719.Name == "Chest1") then
								v2376.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2376.Text = "Chest 1"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v719.Name == "Chest2") then
								v2376.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2376.Text = "Chest 2"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v719.Name == "Chest3") then
								v2376.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2376.Text = "Chest 3"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v719["NameEsp"   .. Number ].TextLabel.Text = v719.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v719.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v719:FindFirstChild("NameEsp"   .. Number ) then
					v719:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v720, v721 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v721.Name, "Fruit") then
					if  not v721.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2111 = Instance.new("BillboardGui", v721.Handle);
						v2111.Name = "NameEsp"   .. Number ;
						v2111.ExtentsOffset = Vector3.new(0, 1, 0);
						v2111.Size = UDim2.new(1, 200, 1, 30);
						v2111.Adornee = v721.Handle;
						v2111.AlwaysOnTop = true;
						local v2118 = Instance.new("TextLabel", v2111);
						v2118.Font = Enum.Font.GothamSemibold;
						v2118.FontSize = "Size14";
						v2118.TextWrapped = true;
						v2118.Size = UDim2.new(1, 0, 1, 0);
						v2118.TextYAlignment = "Top";
						v2118.BackgroundTransparency = 1;
						v2118.TextStrokeTransparency = 0.5;
						v2118.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2118.Text = v721.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v721.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v721.Handle["NameEsp"   .. Number ].TextLabel.Text = v721.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v721.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v721.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v721.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v722, v723 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v723.Name == "Flower2") or (v723.Name == "Flower1")) then
				if FlowerESP then
					if  not v723:FindFirstChild("NameEsp"   .. Number ) then
						local v2130 = Instance.new("BillboardGui", v723);
						v2130.Name = "NameEsp"   .. Number ;
						v2130.ExtentsOffset = Vector3.new(0, 1, 0);
						v2130.Size = UDim2.new(1, 200, 1, 30);
						v2130.Adornee = v723;
						v2130.AlwaysOnTop = true;
						local v2136 = Instance.new("TextLabel", v2130);
						v2136.Font = Enum.Font.GothamSemibold;
						v2136.FontSize = "Size14";
						v2136.TextWrapped = true;
						v2136.Size = UDim2.new(1, 0, 1, 0);
						v2136.TextYAlignment = "Top";
						v2136.BackgroundTransparency = 1;
						v2136.TextStrokeTransparency = 0.5;
						v2136.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v723.Name == "Flower1") then
							v2136.Text = "Blue Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v723.Position).Magnitude / 3 )   .. " Distance" ;
							v2136.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v723.Name == "Flower2") then
							v2136.Text = "Red Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v723.Position).Magnitude / 3 )   .. " Distance" ;
							v2136.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v723["NameEsp"   .. Number ].TextLabel.Text = v723.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v723.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v723:FindFirstChild("NameEsp"   .. Number ) then
					v723:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v724, v725 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v725:IsA("Tool") then
			if RealFruitESP then
				if  not v725.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1865 = Instance.new("BillboardGui", v725.Handle);
					v1865.Name = "NameEsp"   .. Number ;
					v1865.ExtentsOffset = Vector3.new(0, 1, 0);
					v1865.Size = UDim2.new(1, 200, 1, 30);
					v1865.Adornee = v725.Handle;
					v1865.AlwaysOnTop = true;
					local v1872 = Instance.new("TextLabel", v1865);
					v1872.Font = Enum.Font.GothamSemibold;
					v1872.FontSize = "Size14";
					v1872.TextWrapped = true;
					v1872.Size = UDim2.new(1, 0, 1, 0);
					v1872.TextYAlignment = "Top";
					v1872.BackgroundTransparency = 1;
					v1872.TextStrokeTransparency = 0.5;
					v1872.TextColor3 = Color3.fromRGB(255, 0, 0);
					v1872.Text = v725.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v725.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v725.Handle["NameEsp"   .. Number ].TextLabel.Text = v725.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v725.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v725.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v725.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v726, v727 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v727:IsA("Tool") then
			if RealFruitESP then
				if  not v727.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1884 = Instance.new("BillboardGui", v727.Handle);
					v1884.Name = "NameEsp"   .. Number ;
					v1884.ExtentsOffset = Vector3.new(0, 1, 0);
					v1884.Size = UDim2.new(1, 200, 1, 30);
					v1884.Adornee = v727.Handle;
					v1884.AlwaysOnTop = true;
					local v1891 = Instance.new("TextLabel", v1884);
					v1891.Font = Enum.Font.GothamSemibold;
					v1891.FontSize = "Size14";
					v1891.TextWrapped = true;
					v1891.Size = UDim2.new(1, 0, 1, 0);
					v1891.TextYAlignment = "Top";
					v1891.BackgroundTransparency = 1;
					v1891.TextStrokeTransparency = 0.5;
					v1891.TextColor3 = Color3.fromRGB(255, 174, 0);
					v1891.Text = v727.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v727.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v727.Handle["NameEsp"   .. Number ].TextLabel.Text = v727.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v727.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v727.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v727.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v728, v729 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v729:IsA("Tool") then
			if RealFruitESP then
				if  not v729.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1903 = Instance.new("BillboardGui", v729.Handle);
					v1903.Name = "NameEsp"   .. Number ;
					v1903.ExtentsOffset = Vector3.new(0, 1, 0);
					v1903.Size = UDim2.new(1, 200, 1, 30);
					v1903.Adornee = v729.Handle;
					v1903.AlwaysOnTop = true;
					local v1910 = Instance.new("TextLabel", v1903);
					v1910.Font = Enum.Font.GothamSemibold;
					v1910.FontSize = "Size14";
					v1910.TextWrapped = true;
					v1910.Size = UDim2.new(1, 0, 1, 0);
					v1910.TextYAlignment = "Top";
					v1910.BackgroundTransparency = 1;
					v1910.TextStrokeTransparency = 0.5;
					v1910.TextColor3 = Color3.fromRGB(251, 255, 0);
					v1910.Text = v729.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v729.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v729.Handle["NameEsp"   .. Number ].TextLabel.Text = v729.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v729.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v729.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v729.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandMirageESP()
	for v730, v731 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if (v731.Name == "Mirage Island") then
					if  not v731:FindFirstChild("NameEsp") then
						local v2147 = Instance.new("BillboardGui", v731);
						v2147.Name = "NameEsp";
						v2147.ExtentsOffset = Vector3.new(0, 1, 0);
						v2147.Size = UDim2.new(1, 200, 1, 30);
						v2147.Adornee = v731;
						v2147.AlwaysOnTop = true;
						local v2153 = Instance.new("TextLabel", v2147);
						v2153.Font = "Code";
						v2153.FontSize = "Size14";
						v2153.TextWrapped = true;
						v2153.Size = UDim2.new(1, 0, 1, 0);
						v2153.TextYAlignment = "Top";
						v2153.BackgroundTransparency = 1;
						v2153.TextStrokeTransparency = 0.5;
						v2153.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v731['NameEsp'].TextLabel.Text = v731.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v731.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v731:FindFirstChild("NameEsp") then
				v731:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateLSDESP()
	for v732, v733 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if (v733.Name == "Legendary Sword Dealer") then
					if  not v733:FindFirstChild("NameEsp") then
						local v2163 = Instance.new("BillboardGui", v733);
						v2163.Name = "NameEsp";
						v2163.ExtentsOffset = Vector3.new(0, 1, 0);
						v2163.Size = UDim2.new(1, 200, 1, 30);
						v2163.Adornee = v733;
						v2163.AlwaysOnTop = true;
						local v2169 = Instance.new("TextLabel", v2163);
						v2169.Font = "Code";
						v2169.FontSize = "Size14";
						v2169.TextWrapped = true;
						v2169.Size = UDim2.new(1, 0, 1, 0);
						v2169.TextYAlignment = "Top";
						v2169.BackgroundTransparency = 1;
						v2169.TextStrokeTransparency = 0.5;
						v2169.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v733['NameEsp'].TextLabel.Text = v733.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v733.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v733:FindFirstChild("NameEsp") then
				v733:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function InfAb()
	if InfAbility then
		if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local v1597 = Instance.new("ParticleEmitter");
			v1597.Acceleration = Vector3.new(0, 0, 0);
			v1597.Archivable = true;
			v1597.Drag = 20;
			v1597.EmissionDirection = Enum.NormalId.Top;
			v1597.Enabled = true;
			v1597.Lifetime = NumberRange.new(0, 0);
			v1597.LightInfluence = 0;
			v1597.LockedToPart = true;
			v1597.Name = "Agility";
			v1597.Rate = 500;
			local v1609 = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(1, 4)
			};
			v1597.Size = NumberSequence.new(v1609);
			v1597.RotSpeed = NumberRange.new(9999, 99999);
			v1597.Rotation = NumberRange.new(0, 0);
			v1597.Speed = NumberRange.new(30, 30);
			v1597.SpreadAngle = Vector2.new(0, 0, 0, 0);
			v1597.Texture = "";
			v1597.VelocityInheritance = 0;
			v1597.ZOffset = 2;
			v1597.Transparency = NumberSequence.new(0);
			v1597.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0));
			v1597.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		end
	elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end
local v25 = game:GetService("Players").LocalPlayer;
local v26 = v25.Character.Energy.Value;
function infinitestam()
	v25.Character.Energy.Changed:connect(function()
		if InfiniteEnergy then
			v25.Character.Energy.Value = v26;
		end
	end);
end
spawn(function()
	pcall(function()
		while wait(0.1) do
			if InfiniteEnergy then
				wait(0.1);
				v26 = v25.Character.Energy.Value;
				infinitestam();
			end
		end
	end);
end);
function NoDodgeCool()
	if nododgecool then
		for v1513, v1514 in next, getgc() do
			if game:GetService("Players").LocalPlayer.Character.Dodge then
				if ((typeof(v1514) == "function") and (getfenv(v1514).script == game:GetService("Players").LocalPlayer.Character.Dodge)) then
					for v2179, v2180 in next, getupvalues(v1514) do
						if (tostring(v2180) == "0.1") then
							repeat
								wait(0.1);
								setupvalue(v1514, v2179, 0);
							until  not nododgecool
						end
					end
				end
			end
		end
	end
end
function fly()
	local v266 = game:GetService("Players").LocalPlayer:GetMouse("");
	localplayer = game:GetService("Players").LocalPlayer;
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart");
	local v268 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	local v269 = 25;
	local v270 = {
		a = false,
		d = false,
		w = false,
		s = false
	};
	local v271;
	local v272;
	local function v273()
		local v734 = Instance.new("BodyPosition", v268);
		local v735 = Instance.new("BodyGyro", v268);
		v734.Name = "EPIXPOS";
		v734.maxForce = Vector3.new(math.huge, math.huge, math.huge);
		v734.position = v268.Position;
		v735.maxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
		v735.CFrame = v268.CFrame;
		repeat
			wait();
			localplayer.Character.Humanoid.PlatformStand = true;
			local v1371 = (v735.CFrame - v735.CFrame.p) + v734.position ;
			if ( not v270.w and  not v270.s and  not v270.a and  not v270.d) then
				speed = 1;
			end
			if v270.w then
				v1371 = v1371 + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v269 ;
			end
			if v270.s then
				v1371 = v1371 - (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v269 ;
			end
			if v270.d then
				v1371 = v1371 * CFrame.new(speed, 0, 0) ;
				speed = speed + v269 ;
			end
			if v270.a then
				v1371 = v1371 * CFrame.new( -speed, 0, 0) ;
				speed = speed + v269 ;
			end
			if (speed > v269) then
				speed = v269;
			end
			v734.position = v1371.p;
			if v270.w then
				v735.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles( -math.rad(speed * 15 ), 0, 0) ;
			elseif v270.s then
				v735.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15 ), 0, 0) ;
			else
				v735.CFrame = workspace.CurrentCamera.CoordinateFrame;
			end
		until  not Fly
		if v735 then
			v735:Destroy();
		end
		if v734 then
			v734:Destroy();
		end
		flying = false;
		localplayer.Character.Humanoid.PlatformStand = false;
		speed = 0;
	end
	v271 = v266.KeyDown:connect(function(v744)
		if ( not v268 or  not v268.Parent) then
			flying = false;
			v271:disconnect();
			v272:disconnect();
			return;
		end
		if (v744 == "w") then
			v270.w = true;
		elseif (v744 == "s") then
			v270.s = true;
		elseif (v744 == "a") then
			v270.a = true;
		elseif (v744 == "d") then
			v270.d = true;
		end
	end);
	v272 = v266.KeyUp:connect(function(v745)
		if (v745 == "w") then
			v270.w = false;
		elseif (v745 == "s") then
			v270.s = false;
		elseif (v745 == "a") then
			v270.a = false;
		elseif (v745 == "d") then
			v270.d = false;
		end
	end);
	v273();
end
function Click()
	game:GetService("VirtualUser"):CaptureController();
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
end
function AutoHaki()
	if  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end
function EquipWeapon(v274)
	if  not Nill then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v274) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v274);
			wait(0.1);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end
	end
end
function BTP(v275)
	pcall(function()
		if (((v275.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) and  not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
			repeat
				wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v275;
				wait(0.05);
				game.Players.LocalPlayer.Character.Head:Destroy();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v275;
			until ((v275.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)
		end
	end);
end
local v27 = false;
function WaitHRP(v276)
	if  not v276 then
		return;
	end
	return v276.Character:WaitForChild("HumanoidRootPart", 9);
end
function CheckNearestTeleporter(v277)
	local v278 = v277.Position;
	local v279 = math.huge;
	local v280 = nil;
	local v281 = game.PlaceId;
	local v282 = {};
	if (v281 == 2753915549) then
		v282 = {
			Sky3 = Vector3.new( -7894, 5547, -380),
			Sky3Exit = Vector3.new( -4607, 874, -1667),
			UnderWater = Vector3.new(61163, 11, 1819),
			UnderwaterExit = Vector3.new(4050, -1, -1814)
		};
	elseif (v281 == 4442272183) then
		v282 = {
			["Swan Mansion"] = Vector3.new( -390, 332, 673),
			["Swan Room"] = Vector3.new(2285, 15, 905),
			["Cursed Ship"] = Vector3.new(923, 126, 32852),
			["Zombie Island"] = Vector3.new( -6509, 83, -133)
		};
	elseif (v281 == 7449423635) then
		v282 = {
			["Floating Turtle"] = Vector3.new( -12462, 375, -7552),
			["Hydra Island"] = Vector3.new(5745, 610, -267),
			Mansion = Vector3.new( -12462, 375, -7552),
			Castle = Vector3.new( -5036, 315, -3179),
			["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
			["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.1476277e-8, -1.9911115e-13, -2.1476277e-8, 1, -3.0510602e-8, 1.984559e-13, 3.0510602e-8, 1),
			["Temple of Time"] = Vector3.new(28286, 14897, 103)
		};
	end
	for v746, v747 in pairs(v282) do
		local v748 = (v747 - v278).Magnitude;
		if (v748 < v279) then
			v279 = v748;
			v280 = v747;
		end
	end
	local v283 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
	if (v279 <= (v278 - v283).Magnitude) then
		return v280;
	end
end
function requestEntrance(v284)
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v284);
	local v285 = game.Players.LocalPlayer.Character.HumanoidRootPart;
	v285.CFrame = v285.CFrame + Vector3.new(0, 50, 0) ;
	task.wait(0.5);
end
local v28 = false;
function topos(v287)
	local v288 = game.Players.LocalPlayer;
	if (v288.Character and (v288.Character.Humanoid.Health > 0) and v288.Character:FindFirstChild("HumanoidRootPart")) then
		if  not v287 then
			return;
		end
		local v1374 = (v287.Position - v288.Character.HumanoidRootPart.Position).Magnitude;
		local v1375 = CheckNearestTeleporter(v287);
		if v1375 then
			requestEntrance(v1375);
		end
		if  not v288.Character:FindFirstChild("PartTele") then
			local v1625 = Instance.new("Part", v288.Character);
			v1625.Size = Vector3.new(10, 1, 10);
			v1625.Name = "PartTele";
			v1625.Anchored = true;
			v1625.Transparency = 1;
			v1625.CanCollide = false;
			v1625.CFrame = WaitHRP(v288).CFrame;
			v1625:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v27 then
					return;
				end
				task.wait();
				if (v288.Character and v288.Character:FindFirstChild("HumanoidRootPart")) then
					local v1924 = v1625.CFrame;
					WaitHRP(v288).CFrame = CFrame.new(v1924.Position.X, v287.Position.Y, v1924.Position.Z);
				end
			end);
		end
		v27 = true;
		if (v28 and (v1374 > distbyp)) then
			bypass(v287);
		end
		local v1376 = getgenv().TweenSpeed;
		if (v1374 <= 250) then
			v1376 = v1376 * 3 ;
		end
		local v1377 = CFrame.new(v287.Position.X, v287.Position.Y, v287.Position.Z);
		local v1378 = game:GetService("TweenService"):Create(v288.Character.PartTele, TweenInfo.new(v1374 / v1376 , Enum.EasingStyle.Linear), {
			CFrame = v287
		});
		v1378:Play();
		v1378.Completed:Connect(function(v1517)
			if (v1517 == Enum.PlaybackState.Completed) then
				if v288.Character:FindFirstChild("PartTele") then
					v288.Character.PartTele:Destroy();
				end
				v27 = false;
			end
		end);
	end
end
function TP1(v289)
	topos(v289);
end
function TP2(v290)
	local v291 = game.Players.LocalPlayer;
	if (v291.Character and (v291.Character.Humanoid.Health > 0) and v291.Character:FindFirstChild("HumanoidRootPart")) then
		local v1379 = (v290.Position - v291.Character.HumanoidRootPart.Position).Magnitude;
		if  not v290 then
			return;
		end
		local v1380 = CheckNearestTeleporter(v290);
		if v1380 then
			requestEntrance(v1380);
		end
		if  not v291.Character:FindFirstChild("PartTele") then
			local v1633 = Instance.new("Part", v291.Character);
			v1633.Size = Vector3.new(10, 1, 10);
			v1633.Name = "PartTele";
			v1633.Anchored = true;
			v1633.Transparency = 1;
			v1633.CanCollide = true;
			v1633.CFrame = WaitHRP(v291).CFrame;
			v1633:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v27 then
					return;
				end
				task.wait();
				if (v291.Character and v291.Character:FindFirstChild("HumanoidRootPart")) then
					WaitHRP(v291).CFrame = v1633.CFrame;
				end
			end);
		end
		v27 = true;
		local v1381 = game:GetService("TweenService"):Create(v291.Character.PartTele, TweenInfo.new(v1379 / 350 , Enum.EasingStyle.Linear), {
			CFrame = v290
		});
		v1381:Play();
		v1381.Completed:Connect(function(v1518)
			if (v1518 == Enum.PlaybackState.Completed) then
				if v291.Character:FindFirstChild("PartTele") then
					v291.Character.PartTele:Destroy();
				end
				v27 = false;
			end
		end);
	end
end
function stopTeleport()
	v27 = false;
	local v292 = game.Players.LocalPlayer;
	if v292.Character:FindFirstChild("PartTele") then
		v292.Character.PartTele:Destroy();
	end
end
spawn(function()
	while task.wait() do
		if  not v27 then
			stopTeleport();
		end
	end
end);
spawn(function()
	local v293 = game.Players.LocalPlayer;
	while task.wait() do
		pcall(function()
			if v293.Character:FindFirstChild("PartTele") then
				if ((v293.Character.HumanoidRootPart.Position - v293.Character.PartTele.Position).Magnitude >= 100) then
					stopTeleport();
				end
			end
		end);
	end
end);
local v29 = game.Players.LocalPlayer;
local function v30(v294)
	local v295 = v294:WaitForChild("Humanoid");
	v295.Died:Connect(function()
		stopTeleport();
	end);
end
v29.CharacterAdded:Connect(v30);
if v29.Character then
	v30(v29.Character);
end
function TPB(v296)
	local v297 = game:service("TweenService");
	local v298 = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - v296.Position).Magnitude / 300 , Enum.EasingStyle.Linear);
	tween = v297:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, v298, {
		CFrame = v296
	});
	tween:Play();
	local v299 = {};
	v299.Stop = function(v749)
		tween:Cancel();
	end;
	return v299;
end
Type = 1;
spawn(function()
	while wait() do
		if (Type == 1) then
			Pos = CFrame.new(0, PosY, -19);
		elseif (Type == 2) then
			Pos = CFrame.new(19, PosY, 0);
		elseif (Type == 3) then
			Pos = CFrame.new(0, PosY, 19);
		elseif (Type == 4) then
			Pos = CFrame.new( -19, PosY, 0);
		end
	end
end);
spawn(function()
	while wait(0.1) do
		Type = 1;
		wait(0.2);
		Type = 2;
		wait(0.2);
		Type = 3;
		wait(0.2);
		Type = 4;
		wait(0.2);
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or FarmBoss or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.Greybeard or _G.pole or _G.saw or _G.FarmNearest or _G.FarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.SegmentLeviathan or _G.AutoLeviathan or _G.FrozenDimension or _G.FKitsune) then
				if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local v1768 = Instance.new("BodyVelocity");
					v1768.Name = "BodyClip";
					v1768.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
					v1768.MaxForce = Vector3.new(100000, 100000, 100000);
					v1768.Velocity = Vector3.new(0, 0, 0);
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.waden or _G.pole or _G.Greybeard or _G.saw or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Kai or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or _G.KillLeviathan or _G.SegmentLeviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.AutoLeviathan or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.FrozenDimension or _G.FKitsune) then
				for v1700, v1701 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v1701:IsA("BasePart") then
						v1701.CanCollide = false;
					end
				end
			end
		end);
	end);
end);
function StopTween(v301)
	if  not v301 then
		_G.StopTween = true;
		wait();
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
		end
		_G.StopTween = false;
		_G.Clip = false;
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
		game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
	end
end
spawn(function()
	pcall(function()
		while wait() do
			for v1519, v1520 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v1520:IsA("Tool") then
					if v1520:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v1520.Name;
					end
				end
			end
		end
	end);
end);
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
PosY = 25;
Kill_At = 28;
_G.FastAttack = true;
if _G.FastAttack then
	local _ENV = (getgenv or getrenv or getfenv)();
	local function v750(v1382, v1383)
		local v1384, v1385 = pcall(function()
			return v1382:WaitForChild(v1383);
		end);
		if ( not v1384 or  not v1385) then
			warn("noooooo: "   .. v1383 );
		end
		return v1385;
	end
	local function v751(v1386, ...)
		local v1387 = v1386;
		for v1521, v1522 in {
			...
		} do
			v1387 = v1387:FindFirstChild(v1522) or v750(v1387, v1522) ;
			if  not v1387 then
				break;
			end
		end
		return v1387;
	end
	local v752 = game:GetService("VirtualInputManager");
	local v753 = game:GetService("CollectionService");
	local v754 = game:GetService("ReplicatedStorage");
	local v755 = game:GetService("TeleportService");
	local v756 = game:GetService("RunService");
	local v757 = game:GetService("Players");
	local v758 = v757.LocalPlayer;
	if  not v758 then
		warn("Không tìm thấy người chơi cục bộ.");
		return;
	end
	local v759 = v750(v754, "Remotes");
	if  not v759 then
		return;
	end
	local v760 = v750(v759, "Validator");
	local v761 = v750(v759, "CommF_");
	local v762 = v750(v759, "CommE");
	local v763 = v750(workspace, "ChestModels");
	local v764 = v750(workspace, "_WorldOrigin");
	local v765 = v750(workspace, "Characters");
	local v766 = v750(workspace, "Enemies");
	local v767 = v750(workspace, "Map");
	local v768 = v750(v764, "EnemySpawns");
	local v769 = v750(v764, "Locations");
	local v770 = v756.RenderStepped;
	local v771 = v756.Heartbeat;
	local v772 = v756.Stepped;
	local v773 = v750(v754, "Modules");
	local v774 = v750(v773, "Net");
	local v775 = sethiddenproperty or function(...)
		return ...;
	end ;
	local v776 = setupvalue or (debug and debug.setupvalue) ;
	local v777 = getupvalue or (debug and debug.getupvalue) ;
	local v778 = {
		AutoClick = true,
		ClickDelay = 0
	};
	local v779 = {};
	v779.FastAttack = (function()
		if _ENV.rz_FastAttack then
			return _ENV.rz_FastAttack;
		end
		local v1388 = {
			Distance = 100,
			attackMobs = true,
			attackPlayers = true,
			Equipped = nil
		};
		local v1389 = v750(v774, "RE/RegisterAttack");
		local v1390 = v750(v774, "RE/RegisterHit");
		local function v1391(v1523)
			return v1523 and v1523:FindFirstChild("Humanoid") and (v1523.Humanoid.Health > 0) ;
		end
		local function v1392(v1524, v1525)
			local v1526 = nil;
			for v1641, v1642 in v1525:GetChildren() do
				local v1643 = v1642:FindFirstChild("Head");
				if (v1643 and v1391(v1642) and (v758:DistanceFromCharacter(v1643.Position) < v1388.Distance)) then
					if (v1642 ~= v758.Character) then
						table.insert(v1524, {
							v1642,
							v1643
						});
						v1526 = v1643;
					end
				end
			end
			return v1526;
		end
		v1388.Attack = function(v1527, v1528, v1529)
			if ( not v1528 or ( #v1529 == 0)) then
				return;
			end
			v1389:FireServer(v778.ClickDelay or 0 );
			v1390:FireServer(v1528, v1529);
		end;
		v1388.AttackNearest = function(v1530)
			local v1531 = {};
			local v1532 = v1392(v1531, v766);
			local v1533 = v1392(v1531, v765);
			if ( #v1531 > 0) then
				v1530:Attack(v1532 or v1533 , v1531);
			else
				task.wait(0);
			end
		end;
		v1388.BladeHits = function(v1534)
			local v1535 = v1391(v758.Character) and v758.Character:FindFirstChildOfClass("Tool") ;
			if (v1535 and (v1535.ToolTip ~= "Gun")) then
				v1534:AttackNearest();
			else
				task.wait(0);
			end
		end;
		task.spawn(function()
			while task.wait(v778.ClickDelay) do
				if v778.AutoClick then
					v1388:BladeHits();
				end
			end
		end);
		_ENV.rz_FastAttack = v1388;
		return v1388;
	end)();
end
local v31 = v3:Window(Enum.KeyCode.RightControl);
local v32 = v31:T("Tab Status", "rbxassetid://10734984606");
local v33 = v31:T("Tab General", "rbxassetid://10723407389");
local v34 = v31:T("Setting Other", "rbxassetid://10734950309");
local v35 = v31:T("Tab Item", "rbxassetid://10734975692");
local v36 = v31:T("Race - Mirage", "rbxassetid://10747372167");
local v37 = v31:T("Tab Event", "rbxassetid://10709783577");
local v38 = v31:T("Tab Player", "rbxassetid://10747373176");
local v39 = v31:T("Tab Visual", "rbxassetid://10723346959");
local v40 = v31:T("Tab Raid", "rbxassetid://10723345749");
local v41 = v31:T("Tab Teleport", "rbxassetid://10723434557");
local v42 = v31:T("Tab Shop", "rbxassetid://10734952479");
local v43 = v31:T("Devil Fruit", "rbxassetid://10709761889");
local v44 = v31:T("Miscellaneous", "rbxassetid://10709782582");
v32:Seperator("Join Discord");
v32:Label("Everyone Goes Into Socialize");
v32:Button("Copy Discord Link", function()
	setclipboard("https://discord.com/invite/hcJ8PHtkfy");
end);
v32:Seperator("Time");
Time = v32:Label("Executer Time");
function UpdateTime()
	local v302 = math.floor(workspace.DistributedGameTime + 0.5 );
	local v303 = math.floor(v302 / (60 ^ 2) ) % 24 ;
	local v304 = math.floor(v302 / (60 ^ 1) ) % 60 ;
	local v305 = math.floor(v302 / (60 ^ 0) ) % 60 ;
	Time:Set("[Sever Time]: Hours: "   .. v303   .. " Min: "   .. v304   .. " Sec: "   .. v305 );
end
spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end
end);
Client = v32:Label("Client");
function UpdateClient()
	local v306 = workspace:GetRealPhysicsFPS();
	Client:Set("[FPS]: "   .. v306 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end
end);
Client1 = v32:Label("Client");
function UpdateClient1()
	local v307 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[PING]: "   .. v307 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end
end);
v32:Seperator("Status Player");
local v45 = v32:Label("Race");
spawn(function()
	while wait() do
		pcall(function()
			v45:Set("Race:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Race.Value );
		end);
	end
end);
local v46 = v32:Label("Beli");
spawn(function()
	while wait() do
		pcall(function()
			v46:Set("Beli:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Beli.Value );
		end);
	end
end);
local v47 = v32:Label("Fragment");
spawn(function()
	while wait() do
		pcall(function()
			v47:Set("Fragments:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Fragments.Value );
		end);
	end
end);
local v48 = v32:Label("Bounty");
spawn(function()
	while wait() do
		pcall(function()
			v48:Set("Bounty / Honor:"   .. " "   .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value );
		end);
	end
end);
local v49 = v32:Label("Devil Fruit");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
				v49:Set("Devil Fruit:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value );
			else
				v49:Set("Not Have Devil Fruit");
			end
		end);
	end
end);
v33:Seperator("Farm Mode");
local v50 = {
	"Melee",
	"Sword",
	"Fruit",
	"Gun"
};
_G.SelectWeapon = "Melee";
v33:Dropdown("Select Weapon", v50, function(v308)
	_G.SelectWeapon = v308;
end);
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.SelectWeapon == "Melee") then
				for v1702, v1703 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v1703.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1703.Name)) then
							_G.SelectWeapon = v1703.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Sword") then
				for v1930, v1931 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v1931.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1931.Name)) then
							_G.SelectWeapon = v1931.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Gun") then
				for v2218, v2219 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2219.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2219.Name)) then
							_G.SelectWeapon = v2219.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Fruit") then
				for v2411, v2412 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2412.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2412.Name)) then
							_G.SelectWeapon = v2412.Name;
						end
					end
				end
			end
		end);
	end
end);
local v51 = {
	"Normal Attack",
	"Fast Attack",
	"Super Attack",
	"Xeter Attack"
};
_G.FastAttackDelay = "Normal Attack";
v33:Dropdown("Fast Attack Delay", v51, function(v309)
	_G.FastAttackDelay = v309;
end);
spawn(function()
	while wait(0.1) do
		if _G.FastAttackDelay then
			pcall(function()
				if (_G.FastAttackDelay == "Normal Attack") then
					_G.FastAttackDelay = 0.13;
				elseif (_G.FastAttackDelay == "Fast Attack") then
					_G.FastAttackDelay = 0.07;
				elseif (_G.FastAttackDelay == "Super Attack") then
					_G.FastAttackDelay = 0.04;
				elseif (_G.FastAttackDelay == "Xeter Attack") then
					_G.FastAttackDelay = 0;
				end
			end);
		end
	end
end);
v33:Seperator("Farming");
v33:Toggle("Auto Farm Level", _G.Farm, function(v310)
	_G.Level = v310;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.Level then
			pcall(function()
				local v1644 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1644, NameMon) then
					StartMagnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnet = false;
					CheckQuest();
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 3500) then
							BTP(CFrameQuest);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 3500) then
							TP1(CFrameQuest);
						end
					else
						TP1(CFrameQuest);
					end
					if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for v2413, v2414 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2414:FindFirstChild("HumanoidRootPart") and v2414:FindFirstChild("Humanoid") and (v2414.Humanoid.Health > 0)) then
								if (v2414.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v2414.HumanoidRootPart.CFrame;
											TP1(v2414.HumanoidRootPart.CFrame * Pos );
											v2414.HumanoidRootPart.CanCollide = false;
											v2414.Humanoid.WalkSpeed = 0;
											v2414.Head.CanCollide = false;
											v2414.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											StartMagnet = true;
										until  not _G.Level or (v2414.Humanoid.Health <= 0) or  not v2414.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										StartMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMagnet = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
if World1 then
	v33:Toggle("Auto Farm Fast (Farm Lv.1-300)", _G.FarmFast, function(v1396)
		_G.Farmfast = v1396;
		StopTween(_G.Farmfast);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						_G.Level = false;
						_G.Farmfast = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		while wait() do
			if (_G.Farmfast and World1) then
				pcall(function()
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7894.6176757813, 5547.1416015625, -380.29119873047));
						for v2220, v2221 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2221.Name == "Shanda") then
								if (v2221:FindFirstChild("Humanoid") and v2221:FindFirstChild("HumanoidRootPart") and (v2221.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2221.HumanoidRootPart.CanCollide = false;
										v2221.Humanoid.WalkSpeed = 0;
										StardMag = true;
										FastMon = v2221.HumanoidRootPart.CFrame;
										v2221.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
										TP1(v2221.HumanoidRootPart.CFrame * Pos );
									until  not _G.Farmfast or  not v2221.Parent or (v2221.Humanoid.Health <= 0)
									StardMag = false;
									TP1(CFrame.new( -7678.48974609375, 5566.40380859375, -497.2156066894531));
									UnEquipWeapon(_G.SelectWeapon);
								end
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
						TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2) );
					end
				end);
			end
		end
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 75) then
						_G.Farmfast = false;
						_G.PlayerHunter = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 200) then
						_G.Level = true;
						_G.PlayerHunter = false;
					end
				end
			end
		end);
	end);
end
v33:Toggle("Auto Kaitun", false, function(v311)
	_G.Level = v311;
	_G.SelectWeapon = "Combat";
	_G.Stats_Kaitun = v311;
	_G.Superhuman = v311;
	_G.SecondSea = v311;
	_G.ThirdSea = v311;
	_G.BuyLegendarySword = v311;
	_G.StoreFruit = v311;
	_G.Random_Auto = v311;
	_G.BuyAllAib = v311;
	_G.BuyAllSword = v311;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.BuyAllSword then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
				if _G.BuyHop then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if _G.BuyAllAib then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
				if _G.HopBuy then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v33:Toggle("Auto Farm Nearest", _G.FarmNearest, function(v312)
	_G.FarmNearest = v312;
	StopTween(_G.FarmNearest);
end);
spawn(function()
	while wait() do
		if _G.FarmNearest then
			for v1645, v1646 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (v1646.Name and v1646:FindFirstChild("Humanoid")) then
					if (v1646.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2415 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2415));
							end
							topos(v1646.HumanoidRootPart.CFrame * Pos );
							v1646.HumanoidRootPart.CanCollide = false;
							Fastattack = true;
							v1646.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							AutoFarmNearestMagnet = true;
							PosMon = v1646.HumanoidRootPart.CFrame;
						until  not _G.FarmNearest or  not v1646.Parent or (v1646.Humanoid.Health <= 0)
						AutoFarmNearestMagnet = false;
						Fastattack = false;
					end
				end
			end
		end
	end
end);
v33:Seperator("Misc Elite");
local v52 = v33:Label("Elite Hunter");
spawn(function()
	while wait() do
		v52:Set("Total Elite Hunter : "   .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") );
	end
end);
local v53 = v33:Label("N/A");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
				v53:Set("Status: Elite Spawn!");
			else
				v53:Set("Status: Elite Not Spawn");
			end
		end);
	end
end);
v33:Toggle("Auto Elite Hunter", _G.Elitehunter, function(v313)
	_G.Elitehunter = v313;
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	StopTween(_G.Elitehunter);
end);
spawn(function()
	while wait() do
		if (_G.Elitehunter and World3) then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban")) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
							for v2416, v2417 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v2417.Name == "Diablo") or (v2417.Name == "Deandre") or (v2417.Name == "Urban")) then
									if (v2417:FindFirstChild("Humanoid") and v2417:FindFirstChild("HumanoidRootPart") and (v2417.Humanoid.Health > 0)) then
										repeat
											wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v2417.HumanoidRootPart.CanCollide = false;
											v2417.Humanoid.WalkSpeed = 0;
											v2417.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2417.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.Elitehunter == false) or (v2417.Humanoid.Health <= 0) or  not v2417.Parent
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				elseif (_G.EliteHunterHop and (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later.")) then
					hop();
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
				end
			end);
		end
	end
end);
v33:Toggle("Auto Elite Hunter Hop", _G.EliteHunterHop, function(v314)
	_G.EliteHunterHop = v314;
end);
v33:Seperator("Chest Farm");
v33:Toggle("Auto Farm Chest", false, function(v315)
	AutoFarmChest = v315;
	StopTween(AutoFarmChest);
end);
spawn(function()
	while wait() do
		if AutoFarmChest then
			local v1536 = game:GetService("Players");
			local v1537 = v1536.LocalPlayer;
			local v1538 = v1537.Character or v1537.CharacterAdded:Wait() ;
			local v1539 = v1538:GetPivot().Position;
			local v1540 = game:GetService("CollectionService");
			local v1541 = v1540:GetTagged("_ChestTagged");
			local v1542, v1543 = math.huge;
			for v1647 = 1, #v1541 do
				local v1648 = v1541[v1647];
				local v1649 = (v1648:GetPivot().Position - v1539).Magnitude;
				if ( not v1648:GetAttribute("IsDisabled") and (v1649 < v1542)) then
					v1542, v1543 = v1649, v1648;
				end
			end
			if v1543 then
				local v1704 = v1543:GetPivot().Position;
				local v1705 = CFrame.new(v1704);
				topos(v1705);
			end
		end
	end
end);
v33:Toggle("Farm Chest Bypass (Anti Reset)", false, function(v316)
	_G.ChestBypass = v316;
end);
spawn(function()
	while wait() do
		if _G.ChestBypass then
			local v1544 = game:GetService("Players");
			local v1545 = v1544.LocalPlayer;
			local v1546 = game:GetService("CollectionService");
			local v1547 = v1545.Character or v1545.CharacterAdded:Wait() ;
			local v1548 = tick();
			while (tick() - v1548) < 4  do
				v1547 = v1545.Character or v1545.CharacterAdded:Wait() ;
				local v1650 = v1547:GetPivot().Position;
				local v1651 = v1546:GetTagged("_ChestTagged");
				local v1652, v1653 = math.huge;
				for v1706 = 1, #v1651 do
					local v1707 = v1651[v1706];
					local v1708 = (v1707:GetPivot().Position - v1650).Magnitude;
					if ( not v1707:GetAttribute("IsDisabled") and (v1708 < v1652)) then
						v1652, v1653 = v1708, v1707;
					end
				end
				if v1653 then
					local v1774 = v1653:GetPivot().Position;
					v1547:PivotTo(CFrame.new(v1774));
					task.wait(0.2);
				else
					break;
				end
			end
			if v1545.Character then
				v1545.Character:BreakJoints();
				v1545.CharacterAdded:Wait();
			end
		end
	end
end);
v33:Toggle("Auto Stop Items", function(v317)
	_G.StopItemsChest = v317;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.StopItemsChest then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness")) then
					_G.ChestBypass = false;
					topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
				end
			end
		end);
	end
end);
v33:Seperator("Pirates Raid");
v33:Toggle("Auto Pirates Raid", _G.Carvender, function(v318)
	_G.RaidPirate = v318;
	StopTween(_G.RaidPirate);
end);
spawn(function()
	while wait() do
		if _G.RaidPirate then
			pcall(function()
				local v1654 = CFrame.new( -5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058e-9, 0.380223751, 3.588102e-8, 1, -1.06665446e-7, -0.380223751, 1.1229711e-7, 0.924894512);
				if ((CFrame.new( -5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
					for v1932, v1933 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (_G.RaidPirate and v1933:FindFirstChild("HumanoidRootPart") and v1933:FindFirstChild("Humanoid") and (v1933.Humanoid.Health > 0)) then
							if ((v1933.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1933.HumanoidRootPart.CanCollide = false;
									v1933.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									topos(v1933.HumanoidRootPart.CFrame * Pos );
								until (v1933.Humanoid.Health <= 0) or  not v1933.Parent or  not _G.RaidPirate
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1654.Position).Magnitude > 3500) then
							BTP(v1654);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1654.Position).Magnitude < 3500) then
							topos(v1654);
						end
					end
				end
			end);
		end
	end
end);
v33:Seperator("Misc Bone");
local v54 = {
	["Reborn Skeleton"] = CFrame.new( -8769.58984, 142.13063, 6055.27637),
	["Living Zombie"] = CFrame.new( -10156.4531, 138.652481, 5964.5752),
	["Demonic Soul"] = CFrame.new( -9525.17188, 172.13063, 6152.30566),
	["Posessed Mummy"] = CFrame.new( -9570.88281, 5.81831884, 6187.86279)
};
spawn(function()
	spawn(function()
		while task.wait(0.1) do
			if BonesBring then
				pcall(function()
					for v1775, v1776 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v1776.Name == "Reborn Skeleton") or (v1776.Name == "Living Zombie") or (v1776.Name == "Demonic Soul") or (v1776.Name == "Posessed Mummy")) then
							local v2181 = v54[v1776.Name];
							if v2181 then
								v1776.HumanoidRootPart.CFrame = v2181;
							end
							v1776.Head.CanCollide = false;
							v1776.Humanoid.Sit = false;
							v1776.Humanoid:ChangeState(14);
							v1776.HumanoidRootPart.CanCollide = false;
							v1776.Humanoid.JumpPower = 0;
							v1776.Humanoid.WalkSpeed = 0;
							if v1776.Humanoid:FindFirstChild("Animator") then
								v1776.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
BoneCheck = v33:Label("Total Bone: N/A");
spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Set("Total Bone: "   .. (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) );
		end);
	end
end);
v33:Toggle("Auto Farm Bone", false, function(v319)
	_G.Bone = v319;
	StopTween(_G.Bone);
end);
v33:Toggle("Accept Quest Bone", true, function(v320)
	_G.QuestBone = v320;
end);
local v55 = CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if (_G.Bone and  not _G.QuestBone and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
					for v1934, v1935 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1935.Name == "Reborn Skeleton") or (v1935.Name == "Living Zombie") or (v1935.Name == "Demonic Soul") or (v1935.Name == "Posessed Mummy")) then
							if (v1935:FindFirstChild("Humanoid") and v1935:FindFirstChild("HumanoidRootPart") and (v1935.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1935.HumanoidRootPart.CanCollide = false;
									v1935.Humanoid.WalkSpeed = 0;
									v1935.Head.CanCollide = false;
									BonesBring = true;
									PosMonBone = v1935.HumanoidRootPart.CFrame;
									topos(v1935.HumanoidRootPart.CFrame * Pos );
								until  not _G.Bone or  not v1935.Parent or (v1935.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v55.Position).Magnitude > 3500) then
							BTP(v55);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v55.Position).Magnitude < 3500) then
							topos(v55);
						end
					else
						topos(v55);
					end
					UnEquipWeapon(_G.SelectWeapon);
					BonesBring = false;
					topos(CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375));
					for v1936, v1937 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v1937.Name == "Reborn Skeleton") then
							topos(v1937.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v1937.Name == "Living Zombie") then
							topos(v1937.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v1937.Name == "Demonic Soul") then
							topos(v1937.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v1937.Name == "Posessed Mummy") then
							topos(v1937.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				end
			end);
		end
	end
end);
local v56 = CFrame.new( -9515.75, 174.8521728515625, 6079.40625);
spawn(function()
	while wait() do
		if (_G.Bone and _G.QuestBone and World3) then
			pcall(function()
				local v1655 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1655, "Demonic Soul") then
					BonesBring = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					BonesBring = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v56.Position).Magnitude > 3500) then
							BTP(v56);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v56.Position).Magnitude < 3500) then
							topos(v56);
						end
					else
						topos(v56);
					end
					if ((v56.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for v2418, v2419 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2419:FindFirstChild("HumanoidRootPart") and v2419:FindFirstChild("Humanoid") and (v2419.Humanoid.Health > 0)) then
								if ((v2419.Name == "Reborn Skeleton") or (v2419.Name == "Living Zombie") or (v2419.Name == "Demonic Soul") or (v2419.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonBone = v2419.HumanoidRootPart.CFrame;
											topos(v2419.HumanoidRootPart.CFrame * Pos );
											v2419.HumanoidRootPart.CanCollide = false;
											v2419.Humanoid.WalkSpeed = 0;
											v2419.Head.CanCollide = false;
											BonesBring = true;
										until  not _G.Bone or (v2419.Humanoid.Health <= 0) or  not v2419.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										BonesBring = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						BonesBring = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
v33:Toggle("Auto Random Surprise", _G.Random_Bone, function(v321)
	_G.Random_Bone = v321;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Random_Bone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
			end
		end
	end);
end);
v33:Toggle("Auto Pray", pry, function(v322)
	_G.Pray = v322;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Pray then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1);
			end
		end
	end);
end);
v33:Toggle("Auto Try Luck", Trylux, function(v323)
	_G.Trylux = v323;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Trylux then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
			end
		end
	end);
end);
v33:Seperator("Dought Boss");
local v57 = {
	["Cookie Crafter"] = CFrame.new( -2333.28052, 37.8239059, -12093.2861),
	["Cake Guard"] = CFrame.new( -1575.56433, 37.8238907, -12416.2529),
	["Baking Staff"] = CFrame.new( -1872.35742, 37.8239517, -12899.4248),
	["Head Baker"] = CFrame.new( -2223.1416, 53.5283203, -12854.752)
};
spawn(function()
	spawn(function()
		while task.wait(0.1) do
			if CakeBring then
				pcall(function()
					for v1777, v1778 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v1778.Name == "Cookie Crafter") or (v1778.Name == "Cake Guard") or (v1778.Name == "Baking Staff") or (v1778.Name == "Head Baker")) then
							local v2187 = v57[v1778.Name];
							if v2187 then
								v1778.HumanoidRootPart.CFrame = v2187;
							end
							v1778.Head.CanCollide = false;
							v1778.Humanoid.Sit = false;
							v1778.Humanoid:ChangeState(14);
							v1778.HumanoidRootPart.CanCollide = false;
							v1778.Humanoid.JumpPower = 0;
							v1778.Humanoid.WalkSpeed = 0;
							if v1778.Humanoid:FindFirstChild("Animator") then
								v1778.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
local v58 = v33:Label("Killed");
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				v58:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				v58:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				v58:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) );
			else
				v58:Set("Boss Is Spawning");
			end
		end);
	end
end);
v33:Toggle("Auto Farm Cake Prince", false, function(v324)
	_G.DoughtBoss = v324;
	StopTween(_G.DoughtBoss);
end);
v33:Toggle("Accept Quest Cake Prince", true, function(v325)
	_G.QuestCake = v325;
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and  not _G.QuestCake) then
			pcall(function()
				local v1656 = CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375);
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v1938, v1939 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1939.Name == "Cake Prince") or (v1939.Name == "Dough King")) then
							if (v1939:FindFirstChild("Humanoid") and v1939:FindFirstChild("HumanoidRootPart") and (v1939.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1939.HumanoidRootPart.CanCollide = false;
									v1939.Humanoid.WalkSpeed = 0;
									topos(v1939.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v1939.Parent or (v1939.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
					for v2420, v2421 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2421.Name == "Cookie Crafter") or (v2421.Name == "Cake Guard") or (v2421.Name == "Baking Staff") or (v2421.Name == "Head Baker")) then
							if (v2421:FindFirstChild("Humanoid") and v2421:FindFirstChild("HumanoidRootPart") and (v2421.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2421.HumanoidRootPart.CanCollide = false;
									v2421.Humanoid.WalkSpeed = 0;
									v2421.Head.CanCollide = false;
									CakeBring = true;
									PosMonDoughtOpenDoor = v2421.HumanoidRootPart.CFrame;
									topos(v2421.HumanoidRootPart.CFrame * Pos );
								until  not _G.DoughtBoss or  not v2421.Parent or (v2421.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1656.Position).Magnitude > 3500) then
							BTP(v1656);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1656.Position).Magnitude < 3500) then
							topos(v1656);
						end
					else
						topos(v1656);
					end
					CakeBring = false;
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and _G.QuestCake and World3) then
			pcall(function()
				local v1657 = CFrame.new( -2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.8030205e-8, 0.288177818, 6.930119e-8, 1, 7.519312e-8, -0.288177818, -5.2032135e-8, 0.957576931);
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v1940, v1941 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1941.Name == "Cake Prince") or (v1941.Name == "Dough King")) then
							if (v1941:FindFirstChild("Humanoid") and v1941:FindFirstChild("HumanoidRootPart") and (v1941.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1941.HumanoidRootPart.CanCollide = false;
									v1941.Humanoid.WalkSpeed = 0;
									topos(v1941.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v1941.Parent or (v1941.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					local v2193 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if  not string.find(v2193, "Cookie Crafter") then
						CakeBring = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
						CakeBring = false;
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1657.Position).Magnitude > 3500) then
								BTP(v1657);
							else
								topos(v1657);
							end
						else
							topos(v1657);
						end
						if ((v1657.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
						end
					elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
							for v2644, v2645 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2645:FindFirstChild("HumanoidRootPart") and v2645:FindFirstChild("Humanoid") and (v2645.Humanoid.Health > 0)) then
									if ((v2645.Name == "Cookie Crafter") or (v2645.Name == "Cake Guard") or (v2645.Name == "Baking Staff") or (v2645.Name == "Head Baker")) then
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
											repeat
												wait();
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												PosMonCake = v2645.HumanoidRootPart.CFrame;
												topos(v2645.HumanoidRootPart.CFrame * Pos );
												v2645.HumanoidRootPart.CanCollide = false;
												v2645.Humanoid.WalkSpeed = 0;
												v2645.Head.CanCollide = false;
												CakeBring = true;
												PosMonDoughtOpenDoor = v2645.HumanoidRootPart.CFrame;
											until  not _G.DoughtBoss or  not v2645.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or (v2645.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
										else
											CakeBring = false;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									end
								end
							end
						else
							CakeBring = false;
							if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
							end
						end
					end
				end
			end);
		end
	end
end);
v33:Toggle("Auto Spawn Cake Prince", false, function(v326)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value);
end);
v33:Toggle("Auto Dough King", _G.doughking, function(v327)
	_G.doughking = v327;
	StopTween(_G.doughking);
end);
v33:Toggle("Auto Dough King Hop", _G.doughkingHop, function(v328)
	_G.doughkingHop = v328;
end);
spawn(function()
	while wait() do
		if (_G.doughking and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for v1942, v1943 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1943.Name == "Dough King") then
							if (v1943:FindFirstChild("Humanoid") and v1943:FindFirstChild("HumanoidRootPart") and (v1943.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1943.HumanoidRootPart.CanCollide = false;
									v1943.Humanoid.WalkSpeed = 0;
									v1943.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1943.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.doughking or  not v1943.Parent or (v1943.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -2662.818603515625, 1062.3480224609375, -11853.6953125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.doughkingHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v33:Seperator("Observation");
v33:Toggle("Auto Farm Observation", _G.Observation, function(v329)
	_G.Observation = v329;
	StopTween(_G.Observation);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observation then
				repeat
					task.wait();
					if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):SetKeyDown("0x65");
						wait(2);
						game:GetService("VirtualUser"):SetKeyUp("0x65");
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
			end
		end);
	end
end);
v33:Toggle("Auto Farm Observation Hop", _G.Observation_Hop, function(v330)
	_G.Observation_Hop = v330;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Observation then
				if (game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000) then
					wait(2);
				elseif World2 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)) + wait(1) ;
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new( -5478.39209, 15.9775667, -5246.9126));
					end
				elseif World1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
					end
				elseif World3 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
					end
				end
			end
		end
	end);
end);
v33:Seperator("Boss");
local v59 = v33:Label("Status : Select Boss");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss)) then
				v59:Set("Status : Spawn!");
			else
				v59:Set("Status : Boss Not Spawn");
			end
		end);
	end
end);
if World1 then
	v33:Dropdown("Select Boss", {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	}, function(v1397)
		_G.SelectBoss = v1397;
	end);
end
if World2 then
	v33:Dropdown("Select Boss", {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	}, function(v1398)
		_G.SelectBoss = v1398;
	end);
end
if World3 then
	v33:Dropdown("Select Boss", {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	}, function(v1399)
		_G.SelectBoss = v1399;
	end);
end
v33:Toggle("Auto Farm Boss", _G.FarmBoss, function(v331)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.FarmBoss = v331;
	StopTween(_G.FarmBoss);
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v1944, v1945 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1945.Name == _G.SelectBoss) then
							if (v1945:FindFirstChild("Humanoid") and v1945:FindFirstChild("HumanoidRootPart") and (v1945.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1945.HumanoidRootPart.CanCollide = false;
									v1945.Humanoid.WalkSpeed = 0;
									v1945.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v1945.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v1945.Parent or (v1945.Humanoid.Health <= 0)
							end
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
					if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500) then
						topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					else
						BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and  not BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v1946, v1947 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1947.Name == _G.SelectBoss) then
							if (v1947:FindFirstChild("Humanoid") and v1947:FindFirstChild("HumanoidRootPart") and (v1947.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1947.HumanoidRootPart.CanCollide = false;
									v1947.Humanoid.WalkSpeed = 0;
									v1947.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v1947.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v1947.Parent or (v1947.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
				end
			end);
		end
	end
end);
v33:Toggle("Auto Farm All Boss", _G.AllBoss, function(v332)
	_G.AllBoss = v332;
	StopTween(_G.AllBoss);
end);
v33:Toggle("Auto Farm All Boss Hop", _G.AllBossHop, function(v333)
	_G.AllBossHop = v333;
end);
spawn(function()
	while wait() do
		if _G.AllBoss then
			pcall(function()
				for v1709, v1710 in pairs(game.ReplicatedStorage:GetChildren()) do
					if ((v1710.Name == "rip_indra") or (v1710.Name == "Ice Admiral") or (v1710.Name == "Saber Expert") or (v1710.Name == "The Saw") or (v1710.Name == "Greybeard") or (v1710.Name == "Mob Leader") or (v1710.Name == "The Gorilla King") or (v1710.Name == "Bobby") or (v1710.Name == "Yeti") or (v1710.Name == "Vice Admiral") or (v1710.Name == "Warden") or (v1710.Name == "Chief Warden") or (v1710.Name == "Swan") or (v1710.Name == "Magma Admiral") or (v1710.Name == "Fishman Lord") or (v1710.Name == "Wysper") or (v1710.Name == "Thunder God") or (v1710.Name == "Cyborg") or (v1710.Name == "Don Swan") or (v1710.Name == "Diamond") or (v1710.Name == "Jeremy") or (v1710.Name == "Fajita") or (v1710.Name == "Smoke Admiral") or (v1710.Name == "Awakened Ice Admiral") or (v1710.Name == "Tide Keeper") or (v1710.Name == "Order") or (v1710.Name == "Darkbeard") or (v1710.Name == "Stone") or (v1710.Name == "Island Empress") or (v1710.Name == "Kilo Admiral") or (v1710.Name == "Captain Elephant") or (v1710.Name == "Beautiful Pirate") or (v1710.Name == "Cake Queen") or (v1710.Name == "rip_indra True Form") or (v1710.Name == "Longma") or (v1710.Name == "Soul Reaper") or (v1710.Name == "Cake Prince") or (v1710.Name == "Dough King")) then
						if ((v1710.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								v1710.Humanoid.WalkSpeed = 0;
								v1710.HumanoidRootPart.CanCollide = false;
								v1710.Head.CanCollide = false;
								v1710.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								topos(v1710.HumanoidRootPart.CFrame * Pos );
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v1710.Humanoid.Health <= 0) or (_G.AllBoss == false) or  not v1710.Parent
						end
					elseif _G.AllBossHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v34:Seperator("Settings Farming");
v34:Toggle("Bypass TP", BypassTP, function(v334)
	BypassTP = v334;
end);
v34:Seperator("Speed Tween");
local v60 = {
	"100",
	"150",
	"250",
	"300",
	"325",
	"350"
};
getgenv().TweenSpeed = "325";
v34:Dropdown("Speed Tween", v60, function(v335)
	getgenv().TweenSpeed = v335;
end);
v34:Button("Stop All Tween", function()
	topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	_G.Clip = false;
end);
v34:Toggle("Bring Mob", true, function(v337)
	_G.BringMonster = v337;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v1711, v1712 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v1712.Name == Mon) and ((Mon == "Factory Staff [Lv. 800]") or (Mon == "Monkey [Lv. 14]") or (Mon == "Dragon Crew Warrior [Lv. 1575]") or (Mon == "Dragon Crew Archer [Lv. 1600]")) and v1712:FindFirstChild("Humanoid") and v1712:FindFirstChild("HumanoidRootPart") and (v1712.Humanoid.Health > 0) and ((v1712.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220)) then
						v1712.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1712.HumanoidRootPart.CFrame = PosMon;
						v1712.Humanoid:ChangeState(14);
						v1712.HumanoidRootPart.CanCollide = false;
						v1712.Head.CanCollide = false;
						if v1712.Humanoid:FindFirstChild("Animator") then
							v1712.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v1712.Name == Mon) and v1712:FindFirstChild("Humanoid") and v1712:FindFirstChild("HumanoidRootPart") and (v1712.Humanoid.Health > 0) and ((v1712.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v1712.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1712.HumanoidRootPart.CFrame = PosMon;
						v1712.Humanoid:ChangeState(14);
						v1712.HumanoidRootPart.CanCollide = false;
						v1712.Head.CanCollide = false;
						if v1712.Humanoid:FindFirstChild("Animator") then
							v1712.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
				end
			end
		end);
	end
end);
local v62 = {
	"Low",
	"Normal",
	"Super Bring"
};
_G.BringMode = "Low";
v34:Dropdown("Bring Mob Mode", v62, function(v338)
	_G.BringMode = v338;
end);
spawn(function()
	while wait(0.1) do
		if _G.BringMode then
			pcall(function()
				if (_G.BringMode == "Low") then
					_G.BringMode = 250;
				elseif (_G.BringMode == "Normal") then
					_G.BringMode = 300;
				elseif (_G.BringMode == "Super Bring") then
					_G.BringMode = 350;
				end
			end);
		end
	end
end);
v34:Toggle("Auto Haki", true, function(v339)
	_G.Haki = v339;
end);
spawn(function()
	while wait(0.1) do
		if _G.Haki then
			if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local v1713 = {
					[1] = "Buso"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1713));
			end
		end
	end
end);
v34:Toggle("Auto Click", false, function(v340)
	_G.Click = v340;
end);
v34:Toggle("Disabled Notifications", false, function(v341)
	_G.Remove_trct = v341;
end);
spawn(function()
	while wait() do
		if _G.Remove_trct then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end
	end
end);
v34:Toggle("Disabled Damage", true, function(v342)
	_G.KobenHeegeen = v342;
end);
spawn(function()
	while wait() do
		if _G.KobenHeegeen then
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false;
		else
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true;
		end
	end
end);
spawn(function()
	while wait() do
		if _G.WhiteScreen then
			for v1658, v1659 in pairs(game.Workspace['_WorldOrigin']:GetChildren()) do
				if ((v1659.Name == "CurvedRing") or (v1659.Name == "SlashHit") or (v1659.Name == "DamageCounter") or (v1659.Name == "SwordSlash") or (v1659.Name == "SlashTail") or (v1659.Name == "Sounds")) then
					v1659:Destroy();
				end
			end
		end
	end
end);
v34:Toggle("White Screen", _G.WhiteScreen, function(v343)
	_G.WhiteScreen = v343;
	if (_G.WhiteScreen == true) then
		game:GetService("RunService"):Set3dRenderingEnabled(false);
	elseif (_G.WhiteScreen == false) then
		game:GetService("RunService"):Set3dRenderingEnabled(true);
	end
end);
v34:Toggle("Invisible Monsters", _G.inv, function(v344)
	_G.inv = v344;
	while wait() do
		if _G.inv then
			pcall(function()
				for v1714, v1715 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1715.ClassName == "MeshPart") then
						v1715.Transparency = 1;
					end
				end
				for v1716, v1717 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1717.Name == "Head") then
						v1717.Transparency = 1;
					end
				end
				for v1718, v1719 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1719.ClassName == "Accessory") then
						v1719.Handle.Transparency = 1;
					end
				end
				for v1720, v1721 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1721.ClassName == "Decal") then
						v1721.Transparency = 1;
					end
				end
			end);
		end
	end
end);
v34:Seperator("Setting Farm Mastery");
v34:Toggle("Skill Z", true, function(v345)
	_G.SkillZ = v345;
end);
v34:Toggle("Skill X", true, function(v346)
	_G.SkillX = v346;
end);
v34:Toggle("Skill C", true, function(v347)
	_G.SkillC = v347;
end);
v34:Toggle("Skill V", true, function(v348)
	_G.SkillV = v348;
end);
if (World1 or World2) then
	v35:Seperator("World");
end
if World1 then
	v35:Toggle("Auto Second Sea", _G.SecondSea, function(v1400)
		_G.SecondSea = v1400;
		StopTween(_G.SecondSea);
	end);
	spawn(function()
		while wait() do
			if _G.SecondSea then
				pcall(function()
					local v1779 = game:GetService("Players").LocalPlayer.Data.Level.Value;
					if ((v1779 >= 700) and World1) then
						if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							local v2396 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(v2396);
								wait();
							until ((v2396.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(1.1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							wait(0.5);
							EquipWeapon("Key");
							repeat
								topos(CFrame.new(1347.7124, 37.3751602, -1325.6488));
								wait();
							until ((Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(0.5);
						elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
								for v2648, v2649 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2649.Name == "Ice Admiral") then
										if ( not v2649.Humanoid.Health <= 0) then
											if (v2649:FindFirstChild("Humanoid") and v2649:FindFirstChild("HumanoidRootPart") and (v2649.Humanoid.Health > 0)) then
												OldCFrameSecond = v2649.HumanoidRootPart.CFrame;
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													v2649.HumanoidRootPart.CanCollide = false;
													v2649.Humanoid.WalkSpeed = 0;
													v2649.Head.CanCollide = false;
													v2649.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
													v2649.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v2649.HumanoidRootPart.CFrame * Pos );
													sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												until  not _G.SecondSea or  not v2649.Parent or (v2649.Humanoid.Health <= 0)
											end
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
										end
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v35:Toggle("Auto Third Sea", _G.ThirdSea, function(v1401)
		_G.ThirdSea = v1401;
		StopTween(_G.ThirdSea);
	end);
	spawn(function()
		while wait() do
			if _G.ThirdSea then
				pcall(function()
					if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
						_G.Level = false;
						if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "General") == 0) then
							topos(CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end
							wait(1.8);
							if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
								for v2527, v2528 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2528.Name == "rip_indra") then
										OldCFrameThird = v2528.HumanoidRootPart.CFrame;
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											topos(v2528.HumanoidRootPart.CFrame * Pos );
											v2528.HumanoidRootPart.CFrame = OldCFrameThird;
											v2528.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											v2528.HumanoidRootPart.CanCollide = false;
											v2528.Humanoid.WalkSpeed = 0;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.ThirdSea == false) or (v2528.Humanoid.Health <= 0) or  not v2528.Parent
									end
								end
							elseif ( not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
								topos(CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016));
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v35:Toggle("Auto Farm Factory", _G.Factory, function(v1402)
		_G.Factory = v1402;
		StopTween(_G.Factory);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Factory then
					if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
						for v2229, v2230 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2230.Name == "Core") and (v2230.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
								until (v2230.Humanoid.Health <= 0) or (_G.Factory == false)
							end
						end
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end
				end
			end);
		end
	end);
end
v35:Seperator("Fighting Style");
v35:Toggle("Auto Superhuman", _G.Superhuman, function(v349)
	_G.Superhuman = v349;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Superhuman then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 150000))) then
					UnEquipWeapon("Combat");
					wait(0.1);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) then
					_G.SelectWeapon = "Superhuman";
				end
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299)) then
						_G.SelectWeapon = "Black Leg";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299)) then
						_G.SelectWeapon = "Electro";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299)) then
						_G.SelectWeapon = "Fishman Karate";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299)) then
						_G.SelectWeapon = "Dragon Claw";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
				end
			end
		end
	end);
end);
v35:Toggle("Auto DeathStep", _G.DeathStep, function(v350)
	_G.DeathStep = v350;
end);
spawn(function()
	while wait() do
		wait();
		if _G.DeathStep then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449)) then
					_G.SelectWeapon = "Black Leg";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end
		end
	end
end);
v35:Toggle("Auto Sharkman Karate", _G.Sharkman, function(v351)
	_G.Sharkman = v351;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Sharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
						topos(CFrame.new( -2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
					else
						Ms = "Tide Keeper";
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for v2529, v2530 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2530.Name == Ms) then
									OldCFrameShark = v2530.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2530.Head.CanCollide = false;
										v2530.Humanoid.WalkSpeed = 0;
										v2530.HumanoidRootPart.CanCollide = false;
										v2530.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2530.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v2530.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until  not v2530.Parent or (v2530.Humanoid.Health <= 0) or (_G.Sharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
								end
							end
						else
							topos(CFrame.new( -3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202));
							wait(3);
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end
			end
		end
	end);
end);
v35:Toggle("Auto Electric Claw", _G.ElectricClaw, function(v352)
	_G.ElectricClaw = v352;
	StopTween(_G.ElectricClaw);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399)) then
						_G.SelectWeapon = "Electro";
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
				end
			end
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						if (_G.Level == false) then
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif (_G.Level == true) then
							_G.Level = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.SelectWeapon = "Electric Claw";
							wait(0.1);
							_G.Level = true;
						end
					end
				end
			end
		end
	end);
end);
v35:Toggle("Auto Dragon Talon", _G.DragonTalon, function(v353)
	_G.DragonTalon = v353;
end);
spawn(function()
	while wait() do
		if _G.DragonTalon then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399)) then
					_G.SelectWeapon = "Dragon Claw";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end
		end
	end
end);
v35:Toggle("Auto GodHuman", _G.God_Human, function(v354)
	_G.God_Human = v354;
end);
spawn(function()
	while task.wait() do
		if _G.God_Human then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400))) then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
							end
						end
					else
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
				end
			end);
		end
	end
end);
v35:Seperator(" Materials ");
if World2 then
	v35:Toggle("Auto Farm Radioactive Material", false, function(v1403)
		Radioactive = v1403;
		StopTween(Radioactive);
	end);
	local v781 = CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait() do
			if (Radioactive and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
						for v2231, v2232 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2232.Name == "Factory Staff") then
								if (v2232:FindFirstChild("Humanoid") and v2232:FindFirstChild("HumanoidRootPart") and (v2232.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2232.HumanoidRootPart.CanCollide = false;
										v2232.Humanoid.WalkSpeed = 0;
										v2232.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2232.HumanoidRootPart.CFrame;
										topos(v2232.HumanoidRootPart.CFrame * Pos );
									until  not Radioactive or  not v2232.Parent or (v2232.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v781.Position).Magnitude > 3500) then
								BTP(v781);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v781.Position).Magnitude < 3500) then
								topos(v781);
							end
						else
							topos(v781);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v35:Toggle("Auto Farm Mystic Droplet", false, function(v1404)
		_G.Makori_gay = v1404;
		StopTween(_G.Makori_gay);
	end);
	local v782 = CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait() do
			if (_G.Makori_gay and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
						for v2233, v2234 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2234.Name == "Water Fighter") then
								if (v2234:FindFirstChild("Humanoid") and v2234:FindFirstChild("HumanoidRootPart") and (v2234.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2234.HumanoidRootPart.CanCollide = false;
										v2234.Humanoid.WalkSpeed = 0;
										v2234.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2234.HumanoidRootPart.CFrame;
										topos(v2234.HumanoidRootPart.CFrame * Pos );
									until  not _G.Makori_gay or  not v2234.Parent or (v2234.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v782.Position).Magnitude > 3500) then
								BTP(v782);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v782.Position).Magnitude < 3500) then
								topos(v782);
							end
						else
							topos(v782);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2) then
	v35:Toggle("Auto Farm Magma Ore", _G.Makori_gay, function(v1405)
		_G.Umm = v1405;
		StopTween(_G.Umm);
	end);
	local v783 = CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait() do
			if (_G.Umm and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
						for v2235, v2236 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2236.Name == "Military Spy") then
								if (v2236:FindFirstChild("Humanoid") and v2236:FindFirstChild("HumanoidRootPart") and (v2236.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2236.HumanoidRootPart.CanCollide = false;
										v2236.Humanoid.WalkSpeed = 0;
										v2236.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2236.HumanoidRootPart.CFrame;
										topos(v2236.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2236.Parent or (v2236.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v783.Position).Magnitude > 3500) then
								BTP(v783);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v783.Position).Magnitude < 3500) then
								topos(v783);
							end
						else
							topos(v783);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v784 = CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait() do
			if (_G.Umm and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
						for v2237, v2238 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2238.Name == "Lava Pirate") then
								if (v2238:FindFirstChild("Humanoid") and v2238:FindFirstChild("HumanoidRootPart") and (v2238.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2238.HumanoidRootPart.CanCollide = false;
										v2238.Humanoid.WalkSpeed = 0;
										v2238.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2238.HumanoidRootPart.CFrame;
										topos(v2238.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2238.Parent or (v2238.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v784.Position).Magnitude > 3500) then
								BTP(v784);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v784.Position).Magnitude < 3500) then
								topos(v784);
							end
						else
							topos(v784);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World1 then
	v35:Toggle("Auto Farm Angel Wings", _G.Makori_gay, function(v1406)
		_G.Wing = v1406;
		StopTween(_G.Wing);
	end);
	local v785 = CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait() do
			if (_G.Wing and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
						for v2239, v2240 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2240.Name == "Royal Soldier") then
								if (v2240:FindFirstChild("Humanoid") and v2240:FindFirstChild("HumanoidRootPart") and (v2240.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2240.HumanoidRootPart.CanCollide = false;
										v2240.Humanoid.WalkSpeed = 0;
										v2240.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2240.HumanoidRootPart.CFrame;
										topos(v2240.HumanoidRootPart.CFrame * Pos );
									until  not _G.Wing or  not v2240.Parent or (v2240.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v785.Position).Magnitude > 3500) then
								BTP(v785);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v785.Position).Magnitude < 3500) then
								topos(v785);
							end
						else
							topos(v785);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2 or World3) then
	v35:Toggle("Auto Farm Leather", _G.Makori_gay, function(v1407)
		_G.Leather = v1407;
		StopTween(_G.Leather);
	end);
	local v786 = CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait() do
			if (_G.Leather and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
						for v2241, v2242 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2242.Name == "Pirate") then
								if (v2242:FindFirstChild("Humanoid") and v2242:FindFirstChild("HumanoidRootPart") and (v2242.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2242.HumanoidRootPart.CanCollide = false;
										v2242.Humanoid.WalkSpeed = 0;
										v2242.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2242.HumanoidRootPart.CFrame;
										topos(v2242.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2242.Parent or (v2242.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v786.Position).Magnitude > 3500) then
								BTP(v786);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v786.Position).Magnitude < 3500) then
								topos(v786);
							end
						else
							topos(v786);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v787 = CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait() do
			if (_G.Leather and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
						for v2243, v2244 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2244.Name == "Marine Captain") then
								if (v2244:FindFirstChild("Humanoid") and v2244:FindFirstChild("HumanoidRootPart") and (v2244.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2244.HumanoidRootPart.CanCollide = false;
										v2244.Humanoid.WalkSpeed = 0;
										v2244.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2244.HumanoidRootPart.CFrame;
										topos(v2244.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2244.Parent or (v2244.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v787.Position).Magnitude > 3500) then
								BTP(v787);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v787.Position).Magnitude < 3500) then
								topos(v787);
							end
						else
							topos(v787);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v788 = CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait() do
			if (_G.Leather and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
						for v2245, v2246 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2246.Name == "Jungle Pirate") then
								if (v2246:FindFirstChild("Humanoid") and v2246:FindFirstChild("HumanoidRootPart") and (v2246.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2246.HumanoidRootPart.CanCollide = false;
										v2246.Humanoid.WalkSpeed = 0;
										v2246.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2246.HumanoidRootPart.CFrame;
										topos(v2246.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2246.Parent or (v2246.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v788.Position).Magnitude > 3500) then
								BTP(v788);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v788.Position).Magnitude < 3500) then
								topos(v788);
							end
						else
							topos(v788);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or world2 or World3) then
	v35:Toggle("Auto Farm Scrap Metal", false, function(v1408)
		Scrap = v1408;
		StopTween(Scrap);
	end);
	local v789 = CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait() do
			if (Scrap and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
						for v2247, v2248 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2248.Name == "Brute") then
								if (v2248:FindFirstChild("Humanoid") and v2248:FindFirstChild("HumanoidRootPart") and (v2248.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2248.HumanoidRootPart.CanCollide = false;
										v2248.Humanoid.WalkSpeed = 0;
										v2248.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2248.HumanoidRootPart.CFrame;
										topos(v2248.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2248.Parent or (v2248.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v789.Position).Magnitude > 3500) then
								BTP(v789);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v789.Position).Magnitude < 3500) then
								topos(v789);
							end
						else
							topos(v789);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v790 = CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait() do
			if (Scrap and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
						for v2249, v2250 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2250.Name == "Mercenary") then
								if (v2250:FindFirstChild("Humanoid") and v2250:FindFirstChild("HumanoidRootPart") and (v2250.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2250.HumanoidRootPart.CanCollide = false;
										v2250.Humanoid.WalkSpeed = 0;
										v2250.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2250.HumanoidRootPart.CFrame;
										topos(v2250.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2250.Parent or (v2250.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v790.Position).Magnitude > 3500) then
								BTP(v790);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v790.Position).Magnitude < 3500) then
								topos(v790);
							end
						else
							topos(v790);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v791 = CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait() do
			if (Scrap and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
						for v2251, v2252 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2252.Name == "Pirate Millionaire") then
								if (v2252:FindFirstChild("Humanoid") and v2252:FindFirstChild("HumanoidRootPart") and (v2252.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2252.HumanoidRootPart.CanCollide = false;
										v2252.Humanoid.WalkSpeed = 0;
										v2252.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2252.HumanoidRootPart.CFrame;
										topos(v2252.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2252.Parent or (v2252.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v791.Position).Magnitude > 3500) then
								BTP(v791);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v791.Position).Magnitude < 3500) then
								topos(v791);
							end
						else
							topos(v791);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Auto Farm Conjured Cocoa", false, function(v1409)
		Cocoafarm = v1409;
		StopTween(Cocoafarm);
	end);
	local v792 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait() do
			if (Cocoafarm and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
						for v2253, v2254 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2254.Name == "Chocolate Bar Battler") then
								if (v2254:FindFirstChild("Humanoid") and v2254:FindFirstChild("HumanoidRootPart") and (v2254.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2254.HumanoidRootPart.CanCollide = false;
										v2254.Humanoid.WalkSpeed = 0;
										v2254.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2254.HumanoidRootPart.CFrame;
										topos(v2254.HumanoidRootPart.CFrame * Pos );
									until  not Cocoafarm or  not v2254.Parent or (v2254.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v792.Position).Magnitude > 3500) then
								BTP(v792);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v792.Position).Magnitude < 3500) then
								topos(v792);
							end
						else
							topos(v792);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Auto Farm Dragon Scale", false, function(v1410)
		Dragon_Scale = v1410;
		StopTween(Dragon_Scale);
	end);
	local v793 = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125);
	spawn(function()
		while wait() do
			if (Dragon_Scale and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
						for v2255, v2256 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2256.Name == "Dragon Crew Warrior") then
								if (v2256:FindFirstChild("Humanoid") and v2256:FindFirstChild("HumanoidRootPart") and (v2256.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2256.HumanoidRootPart.CanCollide = false;
										v2256.Humanoid.WalkSpeed = 0;
										v2256.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2256.HumanoidRootPart.CFrame;
										topos(v2256.HumanoidRootPart.CFrame * Pos );
									until  not Dragon_Scale or  not v2256.Parent or (v2256.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v793.Position).Magnitude > 3500) then
								BTP(v793);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v793.Position).Magnitude < 3500) then
								topos(v793);
							end
						else
							topos(v793);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Auto Farm Gunpowder", false, function(v1411)
		Gunpowder = v1411;
		StopTween(Gunpowder);
	end);
	local v794 = CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait() do
			if (Gunpowder and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
						for v2257, v2258 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2258.Name == "Pistol Billionaire") then
								if (v2258:FindFirstChild("Humanoid") and v2258:FindFirstChild("HumanoidRootPart") and (v2258.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2258.HumanoidRootPart.CanCollide = false;
										v2258.Humanoid.WalkSpeed = 0;
										v2258.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2258.HumanoidRootPart.CFrame;
										topos(v2258.HumanoidRootPart.CFrame * Pos );
									until  not Gunpowder or  not v2258.Parent or (v2258.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v794.Position).Magnitude > 3500) then
								BTP(v794);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v794.Position).Magnitude < 3500) then
								topos(v794);
							end
						else
							topos(v794);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Auto Farm Fish Tail World 3", false, function(v1412)
		Fish = v1412;
		StopTween(Fish);
	end);
	local v795 = CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait() do
			if (Fish and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
						for v2259, v2260 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2260.Name == "Fishman Captain") then
								if (v2260:FindFirstChild("Humanoid") and v2260:FindFirstChild("HumanoidRootPart") and (v2260.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2260.HumanoidRootPart.CanCollide = false;
										v2260.Humanoid.WalkSpeed = 0;
										v2260.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2260.HumanoidRootPart.CFrame;
										topos(v2260.HumanoidRootPart.CFrame * Pos );
									until  not Fish or  not v2260.Parent or (v2260.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v795.Position).Magnitude > 3500) then
								BTP(v795);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v795.Position).Magnitude < 3500) then
								topos(v795);
							end
						else
							topos(v795);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Auto Farm Mini Tusk", false, function(v1413)
		MiniHee = v1413;
		StopTween(MiniHee);
	end);
	local v796 = CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait() do
			if (MiniHee and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
						for v2261, v2262 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2262.Name == "Mythological Pirate") then
								if (v2262:FindFirstChild("Humanoid") and v2262:FindFirstChild("HumanoidRootPart") and (v2262.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2262.HumanoidRootPart.CanCollide = false;
										v2262.Humanoid.WalkSpeed = 0;
										v2262.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2262.HumanoidRootPart.CFrame;
										topos(v2262.HumanoidRootPart.CFrame * Pos );
									until  not MiniHee or  not v2262.Parent or (v2262.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v796.Position).Magnitude > 3500) then
								BTP(v796);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v796.Position).Magnitude < 3500) then
								topos(v796);
							end
						else
							topos(v796);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
v35:Seperator("Advance Dungeon");
v35:Toggle("Auto Phoenix Raid", _G.AdvanceDungeon, function(v355)
	_G.AdvanceDungeon = v355;
	StopTween(_G.AdvanceDungeon);
end);
spawn(function()
	while wait() do
		if _G.AdvanceDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix")) then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					end
				end
			end);
		end
	end
end);
v35:Label("Sea 1");
v35:Seperator("Saw");
v35:Toggle("Auto Sharks saw", _G.doughking, function(v356)
	_G.saw = v356;
	StopTween(_G.saw);
end);
v35:Toggle("Auto Shark Saw Hop", _G.doughkingHop, function(v357)
	_G.sawhop = v357;
end);
local v63 = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094);
spawn(function()
	while wait() do
		if (_G.saw and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
					for v1956, v1957 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1957.Name == "The Saw") then
							if (v1957:FindFirstChild("Humanoid") and v1957:FindFirstChild("HumanoidRootPart") and (v1957.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1957.HumanoidRootPart.CanCollide = false;
									v1957.Humanoid.WalkSpeed = 0;
									v1957.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1957.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.saw or  not v1957.Parent or (v1957.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v63.Position).Magnitude > 3500) then
							BTP(v63);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v63.Position).Magnitude < 3500) then
							topos(v63);
						end
					else
						topos(v63);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094));
					if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 40, 2) );
					elseif _G.sawhop then
						Hop();
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if (_G.FarmSwanGlasses and _G.FarmSwanGlasses_Hop and World2 and  not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]")) then
				Hop();
			end
		end
	end);
end);
v35:Seperator(" Waden Sword ");
v35:Toggle("Auto Waden Sword", _G.waden, function(v358)
	_G.waden = v358;
	StopTween(_G.waden);
end);
v35:Toggle("Auto Waden Sword Hop", _G.wadenhop, function(v359)
	_G.wadenhop = v359;
end);
local v64 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
spawn(function()
	while wait() do
		if (_G.waden and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
					for v1958, v1959 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1959.Name == "Chief Warden") then
							if (v1959:FindFirstChild("Humanoid") and v1959:FindFirstChild("HumanoidRootPart") and (v1959.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1959.HumanoidRootPart.CanCollide = false;
									v1959.Humanoid.WalkSpeed = 0;
									v1959.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1959.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.waden or  not v1959.Parent or (v1959.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 3500) then
							BTP(TridentPos);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 3500) then
							topos(TridentPos);
						end
					else
						topos(TridentPos);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.wadenhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Greybeard");
v35:Toggle("Auto Greybeard", _G.doughking, function(v360)
	_G.gay = v360;
	StopTween(_G.gay);
end);
v35:Toggle("Auto Greybeard Hop", _G.doughkingHop, function(v361)
	_G.gayhop = v361;
end);
local v65 = CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375);
spawn(function()
	while wait() do
		if (_G.gay and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
					for v1960, v1961 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1961.Name == "Greybeard") then
							if (v1961:FindFirstChild("Humanoid") and v1961:FindFirstChild("HumanoidRootPart") and (v1961.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1961.HumanoidRootPart.CanCollide = false;
									v1961.Humanoid.WalkSpeed = 0;
									v1961.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1961.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.gay or  not v1961.Parent or (v1961.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v65.Position).Magnitude > 3500) then
							BTP(v65);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v65.Position).Magnitude < 3500) then
							topos(v65);
						end
					else
						topos(v65);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.gayhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Saber");
v35:Toggle("Auto Saber", _G.Saber, function(v362)
	_G.Saber = v362;
	StopTween(_G.Saber);
end);
v35:Toggle("Auto Saber Hop", _G.SaberHop, function(v363)
	_G.SaberHop = v363;
end);
spawn(function()
	while task.wait() do
		if (_G.Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
			pcall(function()
				if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
					if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
						if ((CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
							wait(1);
						else
							topos(CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279));
						end
					elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
						if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then
							EquipWeapon("Torch");
							topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754488e-10, -0.648466587));
						else
							topos(CFrame.new( -1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408));
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
						wait(0.5);
						EquipWeapon("Cup");
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup);
						wait(0);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then
							topos(CFrame.new( -2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
							for v2720, v2721 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2721.Name == "Mob Leader") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										if (v2721:FindFirstChild("Humanoid") and v2721:FindFirstChild("HumanoidRootPart") and (v2721.Humanoid.Health > 0)) then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v2721.HumanoidRootPart.CanCollide = false;
												v2721.Humanoid.WalkSpeed = 0;
												v2721.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
												topos(v2721.HumanoidRootPart.CFrame * Pos );
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											until (v2721.Humanoid.Health <= 0) or  not _G.Saber
										end
									end
									if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode );
									end
								end
							end
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						wait(0.5);
						EquipWeapon("Relic");
						wait(0.5);
						topos(CFrame.new( -1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494));
					end
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
					for v2263, v2264 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2264:FindFirstChild("Humanoid") and v2264:FindFirstChild("HumanoidRootPart") and (v2264.Humanoid.Health > 0)) then
							if (v2264.Name == "Saber Expert") then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2264.HumanoidRootPart.CFrame * Pos );
									v2264.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v2264.HumanoidRootPart.Transparency = 1;
									v2264.Humanoid.JumpPower = 0;
									v2264.Humanoid.WalkSpeed = 0;
									v2264.HumanoidRootPart.CanCollide = false;
									FarmPos = v2264.HumanoidRootPart.CFrame;
									MonFarm = v2264.Name;
								until (v2264.Humanoid.Health <= 0) or  not _G.Saber
								if (v2264.Humanoid.Health <= 0) then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
								end
							end
						end
					end
				end
			end);
		end
	end
end);
v35:Seperator("Pole");
v35:Toggle("Auto Pole v1", _G.doughking, function(v364)
	_G.pole = v364;
	StopTween(_G.pole);
end);
v35:Toggle("Auto Pole v1 Hop", _G.doughkingHop, function(v365)
	_G.polehop = v365;
end);
local v66 = CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625);
spawn(function()
	while wait() do
		if (_G.pole and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					for v1962, v1963 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1963.Name == "Thunder God") then
							if (v1963:FindFirstChild("Humanoid") and v1963:FindFirstChild("HumanoidRootPart") and (v1963.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1963.HumanoidRootPart.CanCollide = false;
									v1963.Humanoid.WalkSpeed = 0;
									v1963.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1963.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.pole or  not v1963.Parent or (v1963.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v66.Position).Magnitude > 3500) then
							BTP(v66);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v66.Position).Magnitude < 3500) then
							topos(v66);
						end
					else
						topos(TridentPos);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.polehop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Label("Sea 2");
v35:Seperator("Legendary Sword");
v35:Toggle("Auto Legendary Sword", _G.BuyLegendarySword, function(v366)
	_G.BuyLegendarySword = v366;
end);
spawn(function()
	while wait() do
		if _G.BuyLegendarySword then
			pcall(function()
				local v1660 = {
					[1] = "LegendarySwordDealer",
					[2] = "1"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1660));
				local v1660 = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1660));
				local v1660 = {
					[1] = "LegendarySwordDealer",
					[2] = "3"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1660));
				if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v35:Toggle("Auto Legendary Sword Hop", _G.BuyLegendarySword_Hop, function(v367)
	_G.BuyLegendarySword_Hop = v367;
end);
v35:Seperator("Enchancement Colour");
local v67 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1");
v35:Toggle("Auto Enchancement Colour", _G.BuyEnchancementColour, function(v368)
	_G.BuyEnchancementColour = v368;
end);
v35:Toggle("Auto Enchancement Hop", _G.BuyEnchancementColour_Hop, function(v369)
	_G.BuyEnchancementColour_Hop = v369;
end);
spawn(function()
	while wait() do
		if _G.BuyEnchancementColour then
			local v1553 = {
				[1] = "ColorsDealer",
				[2] = "2"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1553));
			if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and  not World1) then
				wait(10);
				Hop();
			end
		end
	end
end);
v35:Seperator("Bartlio");
v35:Toggle("Auto Bartlio", _G.Bartilo, function(v370)
	_G.Bartilo = v370;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Bartilo then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							Ms = "Swan Pirate";
							for v2422, v2423 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2423.Name == Ms) then
									pcall(function()
										repeat
											task.wait();
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2423.HumanoidRootPart.Transparency = 1;
											v2423.HumanoidRootPart.CanCollide = false;
											v2423.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2423.HumanoidRootPart.CFrame * Pos );
											PosMonBarto = v2423.HumanoidRootPart.CFrame;
											AutoBartiloBring = true;
										until  not v2423.Parent or (v2423.Humanoid.Health <= 0) or (_G.Bartilo == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
										AutoBartiloBring = false;
									end);
								end
							end
						else
							repeat
								topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582)).Magnitude <= 10)
						end
					else
						repeat
							topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1)) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						Ms = "Jeremy";
						for v2424, v2425 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2425.Name == Ms) then
								OldCFrameBartlio = v2425.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v2425.HumanoidRootPart.Transparency = 1;
									v2425.HumanoidRootPart.CanCollide = false;
									v2425.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2425.HumanoidRootPart.CFrame = OldCFrameBartlio;
									topos(v2425.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not v2425.Parent or (v2425.Humanoid.Health <= 0) or (_G.Bartilo == false)
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
						repeat
							topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
						wait(1);
						repeat
							topos(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
						wait(2);
					else
						repeat
							topos(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2)) then
					repeat
						topos(CFrame.new( -1850.49329, 13.1789551, 1750.89685));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1858.87305, 19.3777466, 1712.01807));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1803.94324, 16.5789185, 1750.89685));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1858.55835, 16.8604317, 1724.79541));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1869.54224, 15.987854, 1681.00659));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1869.54224, 15.987854, 1681.00659)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1800.0979, 16.4978027, 1684.52368));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1819.26343, 14.795166, 1717.90625));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1819.26343, 14.795166, 1717.90625)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1813.51843, 14.8604736, 1724.79541));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10)
				end
			end
		end
	end);
end);
v35:Seperator("Swan Glasses");
v35:Toggle("Auto Swan Glasses", _G.FarmSwanGlasses, function(v371)
	_G.FarmSwanGlasses = v371;
	StopTween(_G.FarmSwanGlasses);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
					for v1964, v1965 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1965.Name == "Don Swan") and (v1965.Humanoid.Health > 0) and v1965:IsA("Model") and v1965:FindFirstChild("Humanoid") and v1965:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1965.HumanoidRootPart.CanCollide = false;
									v1965.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1965.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								end);
							until (_G.FarmSwanGlasses == false) or (v1965.Humanoid.Health <= 0)
						end
					end
				else
					repeat
						task.wait();
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
					until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) or (_G.FarmSwanGlasses == false)
				end
			end
		end
	end);
end);
v35:Toggle("Auto Swan Glasses Hop", _G.FarmSwanGlasses_Hop, function(v372)
	_G.FarmSwanGlasses_Hop = v372;
end);
v35:Toggle("Auto Evo Race (V2)", _G.EvoRace, function(v373)
	_G.EvoRace = v373;
	StopTween(_G.EvoRace);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EvoRace then
				if  not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
						topos(CFrame.new( -2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642467e-8, -0.730484903));
						if ((Vector3.new( -2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.3);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2");
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1) then
						pcall(function()
							if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then
								topos(game:GetService("Workspace").Flower1.CFrame);
							elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then
								topos(game:GetService("Workspace").Flower2.CFrame);
							elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then
								if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
									for v2727, v2728 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v2728.Name == "Zombie") then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												topos(v2728.HumanoidRootPart.CFrame * Pos );
												v2728.HumanoidRootPart.CanCollide = false;
												v2728.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonEvo = v2728.HumanoidRootPart.CFrame;
												StartEvoMagnet = true;
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or  not v2728.Parent or (v2728.Humanoid.Health <= 0) or (_G.EvoRace == false)
											StartEvoMagnet = false;
										end
									end
								else
									StartEvoMagnet = false;
									topos(CFrame.new( -5685.9233398438, 48.480125427246, -853.23724365234));
								end
							end
						end);
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3");
					end
				end
			end
		end
	end);
end);
v35:Seperator("Ectoplasm");
v35:Toggle("Auto Farm Ectoplasm", _G.Ectoplasm, function(v374)
	_G.Ectoplasm = v374;
	StopTween(_G.Ectoplasm);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Ectoplasm then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
					for v1966, v1967 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1967.Name == "Ship Deckhand") or (v1967.Name == "Ship Engineer") or (v1967.Name == "Ship Steward") or (v1967.Name == "Ship Officer")) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								if string.find(v1967.Name, "Ship") then
									v1967.HumanoidRootPart.CanCollide = false;
									v1967.Head.CanCollide = false;
									v1967.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1967.HumanoidRootPart.CFrame * Pos );
									EctoplasmMon = v1967.HumanoidRootPart.CFrame;
									StartEctoplasmMagnet = true;
								else
									StartEctoplasmMagnet = false;
									topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
								end
							until (_G.Ectoplasm == false) or  not v1967.Parent or (v1967.Humanoid.Health <= 0)
						end
					end
				else
					topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					StartEctoplasmMagnet = false;
					local v1780 = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if (v1780 > 18000) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end
					topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
				end
			end
		end
	end);
end);
v35:Seperator("Rengoku");
v35:Toggle("Auto Rengoku", _G.Rengoku, function(v375)
	_G.Rengoku = v375;
	StopTween(_G.Rengoku);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Rengoku then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then
					EquipWeapon("Hidden Key");
					topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then
					for v2265, v2266 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (((v2266.Name == "Snow Lurker") or (v2266.Name == "Arctic Warrior")) and (v2266.Humanoid.Health > 0)) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v2266.HumanoidRootPart.CanCollide = false;
								v2266.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								RengokuMon = v2266.HumanoidRootPart.CFrame;
								topos(v2266.HumanoidRootPart.CFrame * Pos );
								StartRengokuMagnet = true;
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Rengoku == false) or  not v2266.Parent or (v2266.Humanoid.Health <= 0)
							StartRengokuMagnet = false;
						end
					end
				else
					StartRengokuMagnet = false;
					topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
				end
			end
		end
	end);
end);
v35:Seperator("Trident");
v35:Toggle("Auto Dragon Trident", _G.Dragon_Trident, function(v376)
	_G.Dragon_Trident = v376;
	StopTween(_G.Dragon_Trident);
end);
v35:Toggle("Auto Dragon Trident Hop", _G.Dragon_Trident_Hop, function(v377)
	_G.Dragon_Trident_Hop = v377;
end);
local v68 = CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125);
spawn(function()
	while wait() do
		if (_G.Dragon_Trident and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
					for v1968, v1969 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1969.Name == "Tide Keeper") then
							if (v1969:FindFirstChild("Humanoid") and v1969:FindFirstChild("HumanoidRootPart") and (v1969.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1969.HumanoidRootPart.CanCollide = false;
									v1969.Humanoid.WalkSpeed = 0;
									v1969.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Dragon_Trident or  not v1969.Parent or (v1969.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v68.Position).Magnitude > 3500) then
							BTP(v68);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v68.Position).Magnitude < 3500) then
							topos(v68);
						end
					else
						topos(v68);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.Dragon_Trident_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Label("Sea 3");
v35:Seperator("Rip Indra");
v35:Toggle("Auto Rip_Indra True", _G.DarkDagger, function(v378)
	_G.DarkDagger = v378;
	StopTween(_G.DarkDagger);
end);
local v69 = CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781);
spawn(function()
	pcall(function()
		while wait() do
			if _G.DarkDagger then
				if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then
					for v1970, v1971 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1971.Name == ("rip_indra True Form" or (v1971.Name == "rip_indra"))) and (v1971.Humanoid.Health > 0) and v1971:IsA("Model") and v1971:FindFirstChild("Humanoid") and v1971:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1971.HumanoidRootPart.CanCollide = false;
									v1971.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1971.HumanoidRootPart.CFrame * Pos );
								end);
							until (_G.DarkDagger == false) or (v1971.Humanoid.Health <= 0)
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v69.Position).Magnitude > 3500) then
							BTP(v69);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v69.Position).Magnitude < 3500) then
							topos(v69);
						end
					else
						topos(v69);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781));
				end
			end
		end
	end);
end);
v35:Toggle("Auto Rip_Indra True Hop", _G.DarkDagger_Hop, function(v379)
	_G.DarkDagger_Hop = v379;
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.DarkDagger_Hop and _G.DarkDagger and World3 and  not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
				Hop();
			end
		end
	end);
end);
v35:Toggle("Auto Press Haki Button", _G.Ob_Color, function(v380)
	Open_Color_Haki = v380;
	StopTween(Open_Color_Haki);
end);
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Open_Color_Haki then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
				wait(0.5);
				repeat
					topos(CFrame.new( -5420.16602, 1084.9657, -2666.8208));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
				wait(0.5);
				repeat
					topos(CFrame.new( -5414.41357, 309.865753, -2212.45776));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White");
				wait(0.5);
				repeat
					topos(CFrame.new( -4971.47559, 331.565765, -3720.02954));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)
				wait(0.5);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
				wait(3);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
			end
		end);
	end
end);
function EquipAllWeapon()
	pcall(function()
		for v1414, v1415 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v1415:IsA("Tool") and  not ((v1415.Name == "Summon Sea Beast") or (v1415.Name == "Water Body") or (v1415.Name == "Awakening"))) then
				local v1661 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1415.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1661);
				wait(1);
			end
		end
	end);
end
v35:Seperator("Yama");
v35:Toggle("Auto Yama", _G.Yama, function(v381)
	_G.Yama = v381;
	StopTween(_G.Yama);
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v35:Seperator("Musketeer");
v35:Toggle("Auto Musketeer Hat", _G.MusketeerHat, function(v382)
	_G.MusketeerHat = v382;
	StopTween(_G.MusketeerHat);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.MusketeerHat then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for v2430, v2431 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2431.Name == "Forest Pirate") then
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2431.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2431.HumanoidRootPart.CFrame * Pos );
											v2431.HumanoidRootPart.CanCollide = false;
											MusketeerHatMon = v2431.HumanoidRootPart.CFrame;
											StartMagnetMusketeerhat = true;
										end);
									until (_G.MusketeerHat == false) or  not v2431.Parent or (v2431.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									StartMagnetMusketeerhat = false;
								end
							end
						else
							StartMagnetMusketeerhat = false;
							topos(CFrame.new( -13206.452148438, 425.89199829102, -7964.5537109375));
						end
					else
						topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
						if ((Vector3.new( -12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false)) then
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for v2532, v2533 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2533.Name == "Captain Elephant") then
									OldCFrameElephant = v2533.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2533.HumanoidRootPart.CanCollide = false;
											v2533.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2533.HumanoidRootPart.CFrame * Pos );
											v2533.HumanoidRootPart.CanCollide = false;
											v2533.HumanoidRootPart.CFrame = OldCFrameElephant;
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										end);
									until (_G.MusketeerHat == false) or (v2533.Humanoid.Health <= 0) or  not v2533.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new( -13374.889648438, 421.27752685547, -8225.208984375));
						end
					else
						topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
						if ((CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2)) then
					topos(CFrame.new( -12512.138671875, 340.39279174805, -9872.8203125));
				end
			end
		end
	end);
end);
v35:Seperator("Twin Hook");
v35:Toggle("Auto Twin Hook", _G.TwinHook, function(v383)
	_G.TwinHook = v383;
	StopTween(_G.TwinHook);
end);
v35:Toggle("Auto Twin Hook Hop", _G.TwinHook_Hop, function(v384)
	_G.TwinHook_Hop = v384;
end);
local v70 = CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625);
spawn(function()
	while wait() do
		if (_G.TwinHook and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
					for v1972, v1973 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1973.Name == "Captain Elephant") then
							if (v1973:FindFirstChild("Humanoid") and v1973:FindFirstChild("HumanoidRootPart") and (v1973.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1973.HumanoidRootPart.CanCollide = false;
									v1973.Humanoid.WalkSpeed = 0;
									v1973.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1973.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.TwinHook or  not v1973.Parent or (v1973.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v70.Position).Magnitude > 3500) then
							BTP(v70);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v70.Position).Magnitude < 3500) then
							topos(v70);
						end
					else
						topos(v70);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.TwinHook_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Haki");
v35:Toggle("Auto Rainbow Haki", _G.Rainbow_Haki, function(v385)
	_G.Rainbow_Haki = v385;
	StopTween(_G.Rainbow_Haki);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Rainbow_Haki then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
						for v2432, v2433 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2433.Name == "Stone") then
								OldCFrameRainbow = v2433.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2433.HumanoidRootPart.CFrame * Pos );
									v2433.HumanoidRootPart.CanCollide = false;
									v2433.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2433.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2433.Humanoid.Health <= 0) or  not v2433.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.000020325184, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
						for v2535, v2536 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2536.Name == "Island Empress") then
								OldCFrameRainbow = v2536.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2536.HumanoidRootPart.CFrame * Pos );
									v2536.HumanoidRootPart.CanCollide = false;
									v2536.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2536.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2536.Humanoid.Health <= 0) or  not v2536.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, "-0", -0.994878292, "-0", 1, "-0", 0.994878292, 0, -0.101080291));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
						for v2661, v2662 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2662.Name == "Kilo Admiral") then
								OldCFrameRainbow = v2662.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2662.HumanoidRootPart.CFrame * Pos );
									v2662.HumanoidRootPart.CanCollide = false;
									v2662.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2662.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2662.Humanoid.Health <= 0) or  not v2662.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, "-0", -0.143904909, "-0", 1.00000012, "-0", 0.143904924, 0, -0.989591479));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for v2704, v2705 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2705.Name == "Captain Elephant") then
								OldCFrameRainbow = v2705.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2705.HumanoidRootPart.CFrame * Pos );
									v2705.HumanoidRootPart.CanCollide = false;
									v2705.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2705.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2705.Humanoid.Health <= 0) or  not v2705.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -13485.0283, 331.709259, -8012.4873, 0.714521289, 7.988499e-8, 0.69961375, -1.0206575e-7, 1, -9.943831e-9, -0.69961375, -6.4301524e-8, 0.714521289));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for v2723, v2724 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2724.Name == "Beautiful Pirate") then
								OldCFrameRainbow = v2724.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2724.HumanoidRootPart.CFrame * Pos );
									v2724.HumanoidRootPart.CanCollide = false;
									v2724.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2724.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2724.Humanoid.Health <= 0) or  not v2724.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
					end
				else
					topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				end
			end
		end
	end);
end);
v35:Toggle("Auto Observation Haki v2", _G.Observationv2, function(v386)
	_G.Observationv2 = v386;
	StopTween(_G.Observationv2);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observationv2 then
				if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3) then
					_G.MusketeerHat = false;
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then
						repeat
							topos(CFrame.new( -12444.78515625, 332.40396118164, -7673.1806640625));
							wait();
						until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10)
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
					elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then
						repeat
							topos(CFrame.new( -10920.125, 624.20275878906, -10266.995117188));
							wait();
						until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10)
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start");
						wait(1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
					else
						for v2434, v2435 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if ((v2435.Name == "Apple") or (v2435.Name == "Banana") or (v2435.Name == "Pineapple")) then
								v2435.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10) ;
								wait();
								firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v2435.Handle, 0);
								wait();
							end
						end
					end
				else
					_G.MusketeerHat = true;
				end
			end
		end);
	end
end);
v35:Seperator("Carvander");
v35:Toggle("Auto Cavander", _G.Carvender, function(v387)
	_G.Carvender = v387;
	StopTween(_G.Carvender);
end);
v35:Toggle("Auto Carvander Hop", _G.Carvenderhop, function(v388)
	_G.Carvenderhop = v388;
end);
local v71 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
spawn(function()
	while wait() do
		if (_G.Carvender and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
					for v1974, v1975 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1975.Name == "Beautiful Pirate") then
							if (v1975:FindFirstChild("Humanoid") and v1975:FindFirstChild("HumanoidRootPart") and (v1975.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1975.HumanoidRootPart.CanCollide = false;
									v1975.Humanoid.WalkSpeed = 0;
									v1975.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1975.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Carvender or  not v1975.Parent or (v1975.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v71.Position).Magnitude > 3500) then
							BTP(v71);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v71.Position).Magnitude < 3500) then
							topos(v71);
						end
					else
						topos(v71);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.Cavanderhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Tushita");
v35:Toggle("Auto Tushita", _G.tushita, function(v389)
	_G.tushita = v389;
	StopTween(_G.tushita);
end);
v35:Toggle("Auto Tushita Hop", _G.tushitahop, function(v390)
	_G.tushitahop = v390;
end);
local v72 = CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125);
spawn(function()
	while wait() do
		if (_G.tushita and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
					for v1976, v1977 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1977.Name == "Longma") then
							if (v1977:FindFirstChild("Humanoid") and v1977:FindFirstChild("HumanoidRootPart") and (v1977.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1977.HumanoidRootPart.CanCollide = false;
									v1977.Humanoid.WalkSpeed = 0;
									v1977.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1977.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.tushita or  not v1977.Parent or (v1977.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v72.Position).Magnitude > 3500) then
							BTP(v72);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v72.Position).Magnitude < 3500) then
							topos(v72);
						end
					else
						topos(v72);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.tushitahop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Toggle("Auto Holy Torch", _G.HolyTorch, function(v391)
	_G.HolyTorch = v391;
	StopTween(_G.HolyTorch);
end);
spawn(function()
	while wait(0.5) do
		pcall(function()
			if _G.HolyTorch then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch")) then
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					until (Vector3.new( -10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
					until (Vector3.new( -11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
					until (Vector3.new( -12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
					until (Vector3.new( -13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					EquipWeapon("Holy Torch");
					repeat
						wait(0.2);
						TP1(CFrame.new( -13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
					until (Vector3.new( -13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					Com();
					wait(20);
				end
			end
		end);
	end
end);
v35:Seperator("Hallow Scythe");
v35:Toggle("Auto Hallow Scythe", _G.FarmBossHallow, function(v392)
	_G.FarmBossHallow = v392;
	StopTween(_G.FarmBossHallow);
end);
v35:Toggle("Auto Hallow Scythe Hop", _G.FarmBossHallowHop, function(v393)
	_G.FarmBossHallowHop = v393;
end);
spawn(function()
	while wait() do
		if _G.FarmBossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for v1978, v1979 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v1979.Name, "Soul Reaper") then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v1979.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								topos(v1979.HumanoidRootPart.CFrame * Pos );
								v1979.HumanoidRootPart.Transparency = 1;
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v1979.Humanoid.Health <= 0) or (_G.FarmBossHallow == false)
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
					repeat
						topos(CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125));
						wait();
					until (CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
					EquipWeapon("Hallow Essence");
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.FarmBossHallowHop then
					Hop();
				end
			end);
		end
	end
end);
v35:Seperator("Buddy Sword");
v35:Toggle("Auto Buddy Sword", _G.BudySword, function(v394)
	_G.BudySword = v394;
	StopTween(_G.BudySword);
end);
v35:Toggle("Auto Buddy Sword Hop", _G.BudySwordHop, function(v395)
	_G.BudySwordHop = v395;
end);
local v73 = CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875);
spawn(function()
	while wait() do
		if (_G.BudySword and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
					for v1980, v1981 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1981.Name == "Cake Queen") then
							if (v1981:FindFirstChild("Humanoid") and v1981:FindFirstChild("HumanoidRootPart") and (v1981.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1981.HumanoidRootPart.CanCollide = false;
									v1981.Humanoid.WalkSpeed = 0;
									v1981.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1981.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.BudySword or  not v1981.Parent or (v1981.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v73.Position).Magnitude > 3500) then
							BTP(v73);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v73.Position).Magnitude < 3500) then
							topos(v73);
						end
					else
						topos(v73);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.BudySwordHop then
						Hop();
					end
				end
			end);
		end
	end
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v1722, v1723 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v1723.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0) and ((v1723.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250)) then
						v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1723.HumanoidRootPart.CFrame = PosMon;
						v1723.Humanoid:ChangeState(14);
						v1723.HumanoidRootPart.CanCollide = false;
						v1723.Head.CanCollide = false;
						if v1723.Humanoid:FindFirstChild("Animator") then
							v1723.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v1723.Name == Mon) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0) and ((v1723.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1723.HumanoidRootPart.CFrame = PosMon;
						v1723.Humanoid:ChangeState(14);
						v1723.HumanoidRootPart.CanCollide = false;
						v1723.Head.CanCollide = false;
						if v1723.Humanoid:FindFirstChild("Animator") then
							v1723.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
					if (_G.Ectoplasm and StartEctoplasmMagnet) then
						if (string.find(v1723.Name, "Ship") and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0) and ((v1723.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.HumanoidRootPart.CFrame = EctoplasmMon;
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Rengoku and StartRengokuMagnet) then
						if (((v1723.Name == "Snow Lurker") or (v1723.Name == "Arctic Warrior")) and ((v1723.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = RengokuMon;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.MusketeerHat and StartMagnetMusketeerhat) then
						if ((v1723.Name == "Forest Pirate") and ((v1723.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = MusketeerHatMon;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.ObservationHakiV2 and Mangnetcitzenmon) then
						if ((v1723.Name == "Forest Pirate") and ((v1723.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = PosHee;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.EvoRace and StartEvoMagnet) then
						if ((v1723.Name == "Zombie") and ((v1723.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = PosMonEvo;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Bartilo and AutoBartiloBring) then
						if ((v1723.Name == "Swan Pirate") and ((v1723.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = PosMonBarto;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then
						if (v1723.Name == "Monkey") then
							if (((v1723.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
								v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1723.Humanoid:ChangeState(14);
								v1723.HumanoidRootPart.CanCollide = false;
								v1723.Head.CanCollide = false;
								v1723.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1723.Humanoid:FindFirstChild("Animator") then
									v1723.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1723.Name == "Factory Staff") then
							if (((v1723.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
								v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1723.Humanoid:ChangeState(14);
								v1723.HumanoidRootPart.CanCollide = false;
								v1723.Head.CanCollide = false;
								v1723.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1723.Humanoid:FindFirstChild("Animator") then
									v1723.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1723.Name == Mon) then
							if (((v1723.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
								v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1723.Humanoid:ChangeState(14);
								v1723.HumanoidRootPart.CanCollide = false;
								v1723.Head.CanCollide = false;
								v1723.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1723.Humanoid:FindFirstChild("Animator") then
									v1723.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.FarmGunMastery and StartMasteryGunMagnet) then
						if (v1723.Name == "Monkey") then
							if (((v1723.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
								v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1723.Humanoid:ChangeState(14);
								v1723.HumanoidRootPart.CanCollide = false;
								v1723.Head.CanCollide = false;
								v1723.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1723.Humanoid:FindFirstChild("Animator") then
									v1723.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1723.Name == "Factory Staff") then
							if (((v1723.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
								v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1723.Humanoid:ChangeState(14);
								v1723.HumanoidRootPart.CanCollide = false;
								v1723.Head.CanCollide = false;
								v1723.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1723.Humanoid:FindFirstChild("Animator") then
									v1723.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1723.Name == Mon) then
							if (((v1723.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
								v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1723.Humanoid:ChangeState(14);
								v1723.HumanoidRootPart.CanCollide = false;
								v1723.Head.CanCollide = false;
								v1723.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1723.Humanoid:FindFirstChild("Animator") then
									v1723.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.Bone and StartMagnetBoneMon) then
						if (((v1723.Name == "Reborn Skeleton") or (v1723.Name == "Living Zombie") or (v1723.Name == "Demonic Soul") or (v1723.Name == "Posessed Mummy")) and ((v1723.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = PosMonBone;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmCandy and StartCandyMagnet) then
						if (((v1723.Name == "Ice Cream Chef") or (v1723.Name == "Ice Cream Commander")) and ((v1723.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = CandyMon;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (StardFarm and FarmMag) then
						if (((v1723.Name == "Cocoa Warrior") or (v1723.Name == "Chocolate Bar Battler") or (v1723.Name == "Sweet Thief") or (v1723.Name == "Candy Rebel")) and ((v1723.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = PosGG;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Farmfast and StardMag) then
						if (((v1723.Name == "Shanda") or (v1723.Name == "Shanda")) and ((v1723.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = FastMon;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.DoughtBoss and MagnetDought) then
						if (((v1723.Name == "Cookie Crafter") or (v1723.Name == "Cake Guard") or (v1723.Name == "Baking Staff") or (v1723.Name == "Head Baker")) and ((v1723.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode) and v1723:FindFirstChild("Humanoid") and v1723:FindFirstChild("HumanoidRootPart") and (v1723.Humanoid.Health > 0)) then
							v1723.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1723.Humanoid:ChangeState(14);
							v1723.HumanoidRootPart.CanCollide = false;
							v1723.Head.CanCollide = false;
							v1723.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor;
							if v1723.Humanoid:FindFirstChild("Animator") then
								v1723.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while true do
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
	end
end);
function InMyNetWork(v396)
	if isnetworkowner then
		return isnetworkowner(v396);
	else
		if ((v396.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
			return true;
		end
		return false;
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (MakoriGayMag and _G.BringMonster) then
				for v1724, v1725 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1725.Name, "Boss") and ((v1725.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1725.HumanoidRootPart) then
							v1725.HumanoidRootPart.CFrame = PosGay;
							v1725.Humanoid.JumpPower = 0;
							v1725.Humanoid.WalkSpeed = 0;
							v1725.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1725.HumanoidRootPart.Transparency = 1;
							v1725.HumanoidRootPart.CanCollide = false;
							v1725.Head.CanCollide = false;
							if v1725.Humanoid:FindFirstChild("Animator") then
								v1725.Humanoid.Animator:Destroy();
							end
							v1725.Humanoid:ChangeState(11);
							v1725.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (Anchor and _G.BringMonster) then
				for v1726, v1727 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1727.Name, "Boss") and ((v1727.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1727.HumanoidRootPart) then
							v1727.HumanoidRootPart.CFrame = PosNarathiwat;
							v1727.Humanoid.JumpPower = 0;
							v1727.Humanoid.WalkSpeed = 0;
							v1727.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1727.HumanoidRootPart.Transparency = 1;
							v1727.HumanoidRootPart.CanCollide = false;
							v1727.Head.CanCollide = false;
							if v1727.Humanoid:FindFirstChild("Animator") then
								v1727.Humanoid.Animator:Destroy();
							end
							v1727.Humanoid:ChangeState(11);
							v1727.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if ((_G.FarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then
				for v1728, v1729 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1729.Name, "Boss") and ((v1729.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1729.HumanoidRootPart) then
							v1729.HumanoidRootPart.CFrame = PosMon;
							v1729.Humanoid.JumpPower = 0;
							v1729.Humanoid.WalkSpeed = 0;
							v1729.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1729.HumanoidRootPart.Transparency = 1;
							v1729.HumanoidRootPart.CanCollide = false;
							v1729.Head.CanCollide = false;
							if v1729.Humanoid:FindFirstChild("Animator") then
								v1729.Humanoid.Animator:Destroy();
							end
							v1729.Humanoid:ChangeState(11);
							v1729.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
if (World1 or World2) then
	v36:Label("Go To The Third Sea");
end
if World3 then
	v36:Seperator("Mirage");
	local v797 = v36:Label("");
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
					v797:Set("Check Mirage : Spawn!");
				else
					v797:Set("Check Mirage : Not Spawn");
				end
			end);
		end
	end);
	v36:Toggle("Auto Mystic Island", _G.MysticIsland, function(v1416)
		_G.MysticIsland = v1416;
		StopTween(_G.MysticIsland);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.MysticIsland then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X, 500, game:GetService("Workspace").Map.MysticIsland.Center.Position.Z));
					end
				end
			end
		end);
	end);
	v36:Toggle("Auto Drive", AutoW, function(v1417)
		AutoW = v1417;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if AutoW then
					game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game);
					wait(0.35);
					game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game);
					wait(1.5);
					game:service("VirtualInputManager"):SendKeyEvent(true, "S", false, game);
					wait(0.35);
					game:service("VirtualInputManager"):SendKeyEvent(false, "S", false, game);
					wait(1.5);
				end
			end);
		end
	end);
	v36:Toggle("Auto Summon Mirage Island", _G.dao, function(v1418)
		if v1418 then
			_G.dao = true;
		else
			_G.dao = false;
		end
		if _G.dao then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			wait(1);
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396);
			wait(0);
			local v1663 = {
				[1] = "BuyBoat",
				[2] = "PirateBrigade"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1663));
			function two(v1730)
				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid.Sit = false;
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
				end);
				if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v1730.Position).Magnitude <= 200) then
					pcall(function()
						tweenz:Cancel();
					end);
					game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = v1730;
				else
					local v1987 = game:service("TweenService");
					local v1988 = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v1730.Position).Magnitude / 325 , Enum.EasingStyle.Linear);
					tween, err = pcall(function()
						tweenz = v1987:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], v1988, {
							CFrame = v1730
						});
						tweenz:Play();
					end);
					if  not tween then
						return err;
					end
				end
				function _TweenCanCle()
					tweenz:Cancel();
				end
			end
			two(CFrame.new( -5100.7085, 29.968586, -6792.45459, -0.33648631, -0.0396691673, 0.940852463, -6.404617e-7, 0.999112308, 0.0421253517, -0.941688359, 0.0141740013, -0.336187631));
			wait(13);
			for v1731, v1732 in next, workspace.Boats.PirateBrigade:GetDescendants() do
				if v1732.Name:find("VehicleSeat") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1732.CFrame;
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0, 500, -100) );
					end
				end
			end
		end
	end);
	v36:Toggle("Teleport Advanced Fruit Dealer", _G.TPNPC, function(v1419)
		_G.Miragenpc = v1419;
		StopTween(_G.Miragenpc);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Miragenpc then
					if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
						topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
					end
				end
			end
		end);
	end);
	v36:Button("Teleport Advanced Fruit Dealer", function()
		TweenNpc();
	end);
	function TweenNpc()
		repeat
			wait();
		until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
		if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
			AllNPCS = getnilinstances();
			for v1733, v1734 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
				table.insert(AllNPCS, v1734);
			end
			for v1735, v1736 in pairs(AllNPCS) do
				if (v1736.Name == "Advanced Fruit Dealer") then
					topos(v1736.HumanoidRootPart.CFrame);
				end
			end
		end
	end
	v36:Toggle("Auto Lock Moon", _G.LockCamToMoon, function(v1420)
		_G.LockCamToMoon = v1420;
	end);
	function CamToMoon()
		workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position );
	end
	spawn(function()
		pcall(function()
			while wait() do
				if _G.LockCamToMoon then
					CamToMoon();
				end
			end
		end);
	end);
	v36:Toggle("Tween Gear", _G.TweenMGear, function(v1422)
		_G.TweenMGear = v1422;
		StopTween(_G.TweenMGear);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.TweenMGear then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						for v2336, v2337 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
							if v2337:IsA("MeshPart") then
								if (v2337.Material == Enum.Material.Neon) then
									topos(v2337.CFrame);
								end
							end
						end
					end
				end
			end
		end);
	end);
end
if World3 then
	v36:Seperator("Race V4");
	v36:Button("Teleport To Top Of GreatTree", function()
		topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
	end);
	v36:Button("Teleport To Timple Of Time", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
	end);
	v36:Button("Teleport To Lever Pull", function()
		topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
	end);
	v36:Button("Teleport To Acient One (Must Be in Temple Of Time!)", function()
		topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
	end);
	v36:Button("Clock Acces", function()
		game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
		game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
	end);
	v36:Toggle("Auto Buy Gear", _G.Bone4, function(v1424)
		_G.Bone4 = v1424;
		StopTween(_G.Bone4);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Bone4 then
					local v1783 = {
						[1] = true
					};
					local v1783 = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v1783));
				end
			end
		end);
	end);
	v36:Toggle("Disabled Inf Stairs", nil, function(v1425)
		game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = v1425;
	end);
	v36:Button("Teleport Trial Door", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969));
		end
	end);
	v36:Button("Teleport To Clock", function()
		topos(CFrame.new(29551.9941, 15069.002, -85.5179291));
	end);
	v36:Toggle("Auto Trial", false, function(v1428)
		_G.QuestRace = v1428;
		StopTween(_G.QuestRace);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.QuestRace then
					if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
						for v2338, v2339 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2339:FindFirstChild("Humanoid") and v2339:FindFirstChild("HumanoidRootPart") and (v2339.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2339.Humanoid.Health = 0;
										v2339.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2339.Parent or (v2339.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
						for v2444, v2445 in next, workspace:GetDescendants() do
							if (v2445.Name == "FinishPart") then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2445.CFrame;
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
						for v2550, v2551 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
							if (v2551.Name == "HumanoidRootPart") then
								topos(v2551.CFrame * CFrame.new(PosX, PosY, PosZ) );
								for v2690, v2691 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2691:IsA("Tool") then
										if (v2691.ToolTip == "Melee") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2691);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								for v2692, v2693 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2693:IsA("Tool") then
										if (v2693.ToolTip == "Blox Fruit") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2693);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v2694, v2695 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2695:IsA("Tool") then
										if (v2695.ToolTip == "Sword") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2695);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v2696, v2697 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2697:IsA("Tool") then
										if (v2697.ToolTip == "Gun") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2697);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
						for v2706, v2707 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2707:FindFirstChild("Humanoid") and v2707:FindFirstChild("HumanoidRootPart") and (v2707.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2707.Humanoid.Health = 0;
										v2707.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2707.Parent or (v2707.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
						for v2725, v2726 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if (v2726.Name == "StartPoint") then
								topos(v2726.CFrame * CFrame.new(0, 10, 0) );
							end
						end
					end
				end
			end
		end);
	end);
	v36:Toggle("Auto Farm & active V4", false, function(v1429)
		_G.Bone = v1429;
		_G.Bone4 = v1429;
		_G.ActiveV4 = v1429;
		StopTween(_G.Bone);
	end);
	v36:Toggle("Kill Player After Trial", false, function(v1430)
		_G.KillAfterTrials = v1430;
		_G.Click = v1430;
		_G.TurnKen = v1430;
		_G.AimNearest = v1430;
		_G.Aimbot_Skill = v1430;
		StopTween(_G.KillAfterTrials);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.KillAfterTrials then
					for v1991, v1992 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if ((v1992.Name ~= game.Players.LocalPlayer.Name) and ((v1992.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
							if (v1992.Humanoid.Health > 0) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									NameTarget = v1992.Name;
									TP1(v1992.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5) );
									v1992.HumanoidRootPart.CanCollide = false;
									v1992.Head.CanCollide = false;
									v1992.HumanoidRootPart.Size = Vector3.new(100, 100, 100);
									Click();
								until  not _G.KillAfterTrials or  not v1992.Parent or (v1992.Humanoid.Health <= 0)
							end
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.TurnKen then
					repeat
						task.wait();
						if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):SetKeyDown("0x65");
							wait(2);
							game:GetService("VirtualUser"):SetKeyUp("0x65");
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
				end
			end);
		end
	end);
	v36:Button("Buy Ancient One Quest", function(v1431)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
	end);
end
local v74 = v37:Label("Status Prehistoric Island: ");
task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
				v74:Set("Prehistoric Island : Spawn!");
			else
				v74:Set("Prehistoric Island : Dont Spawn");
			end
		end);
	end
end);
v37:Button("Remove Lava In Prehistoric Island", function()
	for v798, v799 in pairs(game.Workspace:GetDescendants()) do
		if (v799.Name == "Lava") then
			v799:Destroy();
		end
	end
	for v800, v801 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v801.Name == "Lava") then
			v801:Destroy();
		end
	end
end);
v37:Button("Craft Magnet", function()
	local v397 = {
		"CraftItem",
		"Craft",
		"Volcanic Magnet"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v397));
end);
v37:Toggle("Teleport To Tiki", false, function(v398)
	_G.TpSpy = v398;
	StopTween(_G.TpSpy);
	task.spawn(function()
		while _G.TpSpy do
			task.wait();
			topos(CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781));
		end
	end);
end);
v37:Toggle("Auto Find Prehistoric", false, function(v399)
	_G.AutoFindPrehistoric = v399;
end);
local v75 = {};
local v76 = game:GetService("Players");
local v77 = game:GetService("RunService");
local v78 = game:GetService("VirtualInputManager");
local v79 = game:GetService("Workspace");
local v80 = 350;
game:GetService("RunService").RenderStepped:Connect(function()
	for v802, v803 in pairs(v75) do
		if (v803 and v803.Parent and (v803.Name == "VehicleSeat") and  not v803.Occupant) then
			v75[v802] = v803;
		end
	end
end);
local function v81()
	for v804, v805 in pairs(v75) do
		if (v805 and v805.Parent and (v805.Name == "VehicleSeat") and  not v805.Occupant) then
			topos(v805.CFrame);
		end
	end
end
local v27 = false;
local v82 = false;
v77.RenderStepped:Connect(function()
	if  not _G.AutoFindPrehistoric then
		v82 = false;
		return;
	end
	local v400 = v76.LocalPlayer;
	local v401 = v400.Character;
	if ( not v401 or  not v401:FindFirstChild("Humanoid")) then
		return;
	end
	local function v402()
		if v27 then
			return;
		end
		v27 = true;
		for v1432, v1433 in pairs(v75) do
			if (v1433 and v1433.Parent and (v1433.Name == "VehicleSeat") and  not v1433.Occupant) then
				topos(v1433.CFrame);
				break;
			end
		end
		v27 = false;
	end
	local v403 = v401.Humanoid;
	local v404 = false;
	local v405 = nil;
	for v806, v807 in pairs(v79.Boats:GetChildren()) do
		local v808 = v807:FindFirstChild("VehicleSeat");
		if (v808 and (v808.Occupant == v403)) then
			v404 = true;
			v405 = v808;
			v75[v807.Name] = v808;
		elseif (v808 and (v808.Occupant == nil)) then
			v402();
		end
	end
	if  not v404 then
		return;
	end
	v405.MaxSpeed = v80;
	v405.CFrame = CFrame.new(Vector3.new(v405.Position.X, v405.Position.Y, v405.Position.Z)) * v405.CFrame.Rotation ;
	v78:SendKeyEvent(true, "W", false, game);
	for v809, v810 in pairs(v79.Boats:GetDescendants()) do
		if v810:IsA("BasePart") then
			v810.CanCollide = false;
		end
	end
	for v811, v812 in pairs(v401:GetDescendants()) do
		if v812:IsA("BasePart") then
			v812.CanCollide = false;
		end
	end
	local v408 = {
		"ShipwreckIsland",
		"SandIsland",
		"TreeIsland",
		"TinyIsland",
		"MysticIsland",
		"KitsuneIsland",
		"FrozenDimension"
	};
	for v813, v814 in ipairs(v408) do
		local v815 = v79.Map:FindFirstChild(v814);
		if (v815 and v815:IsA("Model")) then
			v815:Destroy();
		end
	end
	local v409 = v79.Map:FindFirstChild("PrehistoricIsland");
	if v409 then
		v78:SendKeyEvent(false, "W", false, game);
		_G.AutoFindPrehistoric = false;
		if  not v82 then
			v82 = true;
		end
		return;
	end
end);
v37:Toggle("Teleport Prehistoric Island", false, function(v410)
	_G.TpPrehistoric = v410;
	StopTween(_G.TpPrehistoric);
end);
spawn(function()
	local v411;
	while  not v411 do
		v411 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
		wait();
	end
	while wait() do
		if _G.TpPrehistoric then
			local v1558 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
			if v1558 then
				local v1737 = v1558:FindFirstChild("Core") and v1558.Core:FindFirstChild("PrehistoricRelic") ;
				local v1738 = v1737 and v1737:FindFirstChild("Skull") ;
				if v1738 then
					topos(CFrame.new(v1738.Position));
					_G.TpPrehistoric = false;
				end
			end
		end
	end
end);
v37:Toggle("Kill Golem", false, function(v412)
	_G.KillGolem = v412;
	StopTween(_G.KillGolem);
end);
v37:Toggle("Kill Golem Aura", false, function(v413)
	_G.Kill_Aura = v413;
end);
spawn(function()
	while wait() do
		if (_G.KillGolem and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
					for v1993, v1994 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1994.Name == "Lava Golem") then
							if (v1994:FindFirstChild("Humanoid") and v1994:FindFirstChild("HumanoidRootPart") and (v1994.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									v1994.HumanoidRootPart.CanCollide = false;
									v1994.Humanoid.WalkSpeed = 0;
									v1994.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1994.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.KillGolem or  not v1994.Parent or (v1994.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				local v1665 = game:GetService("Players").LocalPlayer;
				local v1666 = game:GetService("Workspace").Enemies:GetChildren();
				local v1667 = v1665.Character and v1665.Character:FindFirstChild("HumanoidRootPart") and v1665.Character.HumanoidRootPart.Position ;
				if v1667 then
					for v1995, v1996 in pairs(v1666) do
						if (v1996:FindFirstChild("Humanoid") and v1996:FindFirstChild("HumanoidRootPart") and (v1996.Humanoid.Health > 0)) then
							local v2340 = (v1996.HumanoidRootPart.Position - v1667).Magnitude;
							if (v2340 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v1665, "SimulationRadius", math.huge);
										v1996.Humanoid.Health = 0;
										v1996.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v1996.Parent or (v1996.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v37:Toggle("Defend Volcano", false, function(v414)
	_G.DefendVolcano = v414;
	StopTween(_G.DefendVolcano);
end);
local function v83(v415)
	game:GetService("VirtualInputManager"):SendKeyEvent(true, v415, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, v415, false, game);
end
local function v84()
	local v416 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
	if (v416 and v416:IsA("Model")) then
		v416:Destroy();
	end
	local v417 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if v417 then
		for v1559, v1560 in pairs(v417:GetDescendants()) do
			if (v1560:IsA("Part") and v1560.Name:lower():find("lava")) then
				v1560:Destroy();
			end
		end
	end
	local v418 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if v418 then
		for v1561, v1562 in pairs(v418:GetDescendants()) do
			if v1562:IsA("Model") then
				for v1785, v1786 in pairs(v1562:GetDescendants()) do
					if (v1786:IsA("MeshPart") and v1786.Name:lower():find("lava")) then
						v1786:Destroy();
					end
				end
			end
		end
	end
end
local function v85()
	local v419 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks;
	for v816, v817 in pairs(v419:GetChildren()) do
		if v817:IsA("Model") then
			local v1563 = v817:FindFirstChild("volcanorock");
			if (v1563 and v1563:IsA("MeshPart")) then
				local v1739 = v1563.Color;
				if ((v1739 == Color3.fromRGB(185, 53, 56)) or (v1739 == Color3.fromRGB(185, 53, 57))) then
					return v1563;
				end
			end
		end
	end
	return nil;
end
local function v86(v420)
	local v421 = game.Players.LocalPlayer;
	local v422 = v421.Backpack;
	for v818, v819 in pairs(v422:GetChildren()) do
		if (v819:IsA("Tool") and (v819.ToolTip == v420)) then
			v819.Parent = v421.Character;
			for v1668, v1669 in ipairs({
				"Z",
				"X",
				"C",
				"V",
				"F"
			}) do
				wait();
				pcall(function()
					v83(v1669);
				end);
			end
			v819.Parent = v422;
			break;
		end
	end
end
spawn(function()
	while wait() do
		if _G.DefendVolcano then
			AutoHaki();
			pcall(v84);
			local v1566 = v85();
			if v1566 then
				local v1740 = CFrame.new(v1566.Position);
				topos(v1740);
				local v1741 = v1566.Color;
				if ((v1741 ~= Color3.fromRGB(185, 53, 56)) and (v1741 ~= Color3.fromRGB(185, 53, 57))) then
					v1566 = v85();
				else
					local v1997 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local v1998 = (v1997 - v1566.Position).Magnitude;
					if (v1998 <= 1) then
						if _G.UseMelee then
							v86("Melee");
						end
						if _G.UseSword then
							v86("Sword");
						end
						if _G.UseGun then
							v86("Gun");
						end
					end
					_G.TpPrehistoric = false;
				end
			else
				_G.TpPrehistoric = true;
			end
		end
	end
end);
v37:Toggle("Collect Bone", false, function(v423)
	_G.CollectBone = v423;
end);
spawn(function()
	while wait() do
		if _G.CollectBone then
			for v1670, v1671 in pairs(workspace:GetDescendants()) do
				if (v1671:IsA("BasePart") and (v1671.Name == "DinoBone")) then
					topos(CFrame.new(v1671.Position));
				end
			end
		end
	end
end);
v37:Toggle("Collect Egg", false, function(v424)
	_G.CollectEgg = v424;
end);
spawn(function()
	while wait() do
		if _G.CollectEgg then
			local v1567 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren();
			if ( #v1567 > 0) then
				local v1742 = v1567[math.random(1, #v1567)];
				if (v1742:IsA("Model") and v1742.PrimaryPart) then
					topos(v1742.PrimaryPart.CFrame);
					local v1999 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local v2000 = v1742.PrimaryPart.Position;
					local v2001 = (v1999 - v2000).Magnitude;
					if (v2001 <= 1) then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
						wait(1.5);
						game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game);
					end
				end
			end
		end
	end
end);
v37:Seperator("Setting");
v37:Toggle("Use Melee", true, function(v425)
	_G.UseMelee = v425;
end);
v37:Toggle("Use Sword", false, function(v426)
	_G.UseSword = v426;
end);
v37:Toggle("Use Gun", false, function(v427)
	_G.UseGun = v427;
end);
v39:Seperator("ESP MENU");
v39:Toggle("ESP Player", false, function(v428)
	ESPPlayer = v428;
	UpdatePlayerChams();
end);
v39:Toggle("ESP Island Kitsune", false, function(v429)
	IslandESP = v429;
	while IslandESP do
		wait();
		UpdateIslandESPKitsune();
	end
end);
function UpdateIslandESPKitsune()
	for v820, v821 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v821.Name ~= "NeonShrinePart") then
					if  not v821:FindFirstChild("IslandESP") then
						local v2195 = Instance.new("BillboardGui", v821);
						v2195.Name = "IslandESP";
						v2195.ExtentsOffset = Vector3.new(0, 1, 0);
						v2195.Size = UDim2.new(1, 200, 1, 30);
						v2195.Adornee = v821;
						v2195.AlwaysOnTop = true;
						local v2201 = Instance.new("TextLabel", v2195);
						v2201.Font = "Code";
						v2201.FontSize = "Size14";
						v2201.TextWrapped = true;
						v2201.Size = UDim2.new(1, 0, 1, 0);
						v2201.TextYAlignment = "Top";
						v2201.BackgroundTransparency = 1;
						v2201.TextStrokeTransparency = 0.5;
						v2201.TextColor3 = Color3.fromRGB(80, 245, 245);
						v2201.Text = "Kitsune Island";
					else
						v821['IslandESP'].TextLabel.Text = "Kitsune Island";
					end
				end
			elseif v821:FindFirstChild("IslandESP") then
				v821:FindFirstChild("IslandESP"):Destroy();
			end
		end);
	end
end
v39:Toggle("ESP Chest", false, function(v430)
	ChestESP = v430;
	UpdateChestChams();
end);
v39:Toggle("ESP Fruit", false, function(v431)
	DevilFruitESP = v431;
	while DevilFruitESP do
		wait();
		UpdateDevilChams();
	end
end);
v39:Toggle("ESP Real Fruit", RealFruitESP, function(v432)
	RealFruitESP = v432;
	UpdateRealFruitChams();
end);
v39:Toggle("ESP Flower", false, function(v433)
	FlowerESP = v433;
	UpdateFlowerChams();
end);
spawn(function()
	while wait() do
		if FlowerESP then
			UpdateFlowerChams();
		end
		if DevilFruitESP then
			UpdateDevilChams();
		end
		if ChestESP then
			UpdateChestChams();
		end
		if ESPPlayer then
			UpdatePlayerChams();
		end
		if RealFruitESP then
			UpdateRealFruitChams();
		end
	end
end);
v39:Toggle("ESP Island", IslandESP, function(v434)
	IslandESP = v434;
	while IslandESP do
		wait();
		UpdateIslandESP();
	end
end);
v39:Toggle("Esp Mystic Island", false, function(v435)
	MirageIslandESP = v435;
	while MirageIslandESP do
		wait();
		UpdateIslandMirageESP();
	end
end);
v39:Seperator("Troll");
v39:Button("Rain Fruit", function()
	for v822, v823 in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
		v823.Parent = game.Workspace.Map;
		v823:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random( -50, 50), 100, math.random( -50, 50)) );
		if v823.Fruit:FindFirstChild("AnimationController") then
			v823.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v823.Fruit:FindFirstChild("Idle")):Play();
		end
		v823.Handle.Touched:Connect(function(v1434)
			if (v1434.Parent == game.Players.LocalPlayer.Character) then
				v823.Parent = game.Players.LocalPlayer.Backpack;
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v823);
			end
		end);
	end
end);
v39:Button("Instant Level/Beli/EXP", function()
	local v436 = game:GetService("Players").LocalPlayer;
	local v437 = require(game:GetService("ReplicatedStorage").Notification);
	local v438 = v436:WaitForChild("Data");
	local v439 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
	local v440 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
	local v441 = require(game:GetService("ReplicatedStorage").Util.Sound);
	local v442 = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
	function v129(v826)
		local v827 = v826;
		while true do
			local v1435, v1436 = string.gsub(v827, "^(-?%d+)(%d%d%d)", "%1,%2");
			v827 = v1435;
			if (v1436 == 0) then
				break;
			end
		end
		return v827;
	end
	v437.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
	v437.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display();
	v437.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display();
	v436.Data.Exp.Value = 999999999999;
	v436.Data.Beli.Value = v436.Data.Beli.Value + 999999999999 ;
	delay = 0;
	count = 0;
	while (v436.Data.Exp.Value - v439(v438.Level.Value)) > 0  do
		v436.Data.Exp.Value = v436.Data.Exp.Value - v439(v438.Level.Value) ;
		v436.Data.Level.Value = v436.Data.Level.Value + 1 ;
		v436.Data.Points.Value = v436.Data.Points.Value + 3 ;
		v440({
			v436
		});
		v441.Play(v441, v442.Value);
		v437.new("<Color=Green>LEVEL UP!<Color=/> ("   .. v436.Data.Level.Value   .. ")" ):Display();
		count = count + 1 ;
		if (count >= 5) then
			delay = tick();
			count = 0;
			wait(2);
		end
	end
end);
v39:Textbox("Fake Level", "Fake Level", true, function(v445)
	game:GetService("Players").LocalPlayer.Data.Level.Value = v445;
end);
v39:Textbox("Fake Exp", "Fake Exp", true, function(v447)
	game:GetService("Players").LocalPlayer.Data.Exp.Value = v447;
end);
v39:Textbox("Fake Money", "Fake Money", true, function(v449)
	game:GetService("Players").LocalPlayer.Data.Beli.Value = v449;
end);
v39:Textbox("Fake Fragment", "Fake Fragment", true, function(v451)
	game:GetService("Players").LocalPlayer.Data.Fragments.Value = v451;
end);
v39:Textbox("Fake Points", "Fake Points", true, function(v453)
	game:GetService("Players").LocalPlayer.Data.Points.Value = v453;
end);
v39:Textbox("Fake Bounty", "Fake Points", true, function(v455)
	game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = v455;
end);
v39:Seperator("Highlight");
v39:Toggle("Show Chat disabled", _G.chat, function(v457)
	_G.chat = v457;
	if (_G.chat == true) then
		local v1437 = game:GetService("StarterGui");
		v1437:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
	elseif (_G.chat == false) then
		local v1674 = game:GetService("StarterGui");
		v1674:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
	end
end);
v39:Toggle("Show leaderboard disabled", _G.leaderboard, function(v458)
	_G.leaderboard = v458;
	if (_G.leaderboard == true) then
		local v1438 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
	elseif (_G.leaderboard == false) then
		local v1675 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
	end
end);
v39:Seperator("Hack");
v39:Button("Unlock Buso", function()
	local v459 = "Buso";
	if (type(v459) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v459);
	elseif (type(v459) == "table") then
		for v1743, v1744 in next, v459 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1744);
		end
	end
end);
v39:Button("Unlock Soru", function()
	local v460 = "Soru";
	if (type(v460) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v460);
	elseif (type(v460) == "table") then
		for v1745, v1746 in next, v460 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1746);
		end
	end
end);
v39:Button("Unlock Geppo", function()
	local v461 = "Geppo";
	if (type(v461) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v461);
	elseif (type(v461) == "table") then
		for v1747, v1748 in next, v461 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1748);
		end
	end
end);
v39:Button("Max Zoom", function()
	while wait() do
		game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718;
	end
end);
v39:Button("Kaitun Cap", function(v462)
	local v463 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory);
	local v464 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory");
	local v465 = {};
	local v466 = {
		"Mythical",
		"Legendary",
		"Rare",
		"Uncommon",
		"Common"
	};
	local v467 = {
		Common = Color3.fromRGB(179, 179, 179),
		Uncommon = Color3.fromRGB(92, 140, 211),
		Rare = Color3.fromRGB(140, 82, 255),
		Legendary = Color3.fromRGB(213, 43, 228),
		Mythical = Color3.fromRGB(238, 47, 50)
	};
	function GetRaity(v832)
		for v1439, v1440 in pairs(v467) do
			if (v1440 == v832) then
				return v1439;
			end
		end
	end
	for v833, v834 in pairs(v464) do
		v465[v834.Name] = v834;
	end
	local v468 = #getupvalue(v463.UpdateRender, 4);
	local v469 = {};
	local v470 = {};
	local v471 = 0;
	while v471 < v468  do
		local v836 = 0;
		while (v836 < 25000) and (v471 < v468)  do
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, v836);
			for v1568, v1569 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
				if (v1569:IsA("Frame") and  not v469[v1569.ItemName.Text] and (v1569.ItemName.Visible == true)) then
					local v1749 = GetRaity(v1569.Background.BackgroundColor3);
					if v1749 then
						print("Rac");
						if  not v470[v1749] then
							v470[v1749] = {};
						end
						table.insert(v470[v1749], v1569:Clone());
					end
					v471 = v471 + 1 ;
					v469[v1569.ItemName.Text] = true;
				end
			end
			v836 = v836 + 20 ;
		end
		wait();
	end
	function GetXY(v837)
		return v837 * 100 ;
	end
	local v472 = Instance.new("UIListLayout");
	v472.FillDirection = Enum.FillDirection.Vertical;
	v472.SortOrder = 2;
	v472.Padding = UDim.new(0, 10);
	local v477 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v477.BackgroundTransparency = 1;
	v477.Size = UDim2.new(0.5, 0, 1, 0);
	v472.Parent = v477;
	local v481 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v481.BackgroundTransparency = 1;
	v481.Size = UDim2.new(0.5, 0, 1, 0);
	v481.Position = UDim2.new(0.6, 0, 0, 0);
	v472:Clone().Parent = v481;
	for v838, v839 in pairs(v470) do
		local v840 = Instance.new("Frame", v477);
		v840.BackgroundTransparency = 1;
		v840.Size = UDim2.new(1, 0, 0, 0);
		v840.LayoutOrder = table.find(v466, v838);
		local v844 = Instance.new("Frame", v481);
		v844.BackgroundTransparency = 1;
		v844.Size = UDim2.new(1, 0, 0, 0);
		v844.LayoutOrder = table.find(v466, v838);
		local v848 = Instance.new("UIGridLayout", v840);
		v848.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
		v848.CellSize = UDim2.new(0, 70, 0, 70);
		v848.FillDirectionMaxCells = 100;
		v848.FillDirection = Enum.FillDirection.Horizontal;
		local v854 = v848:Clone();
		v854.Parent = v844;
		for v1442, v1443 in pairs(v839) do
			if (v465[v1443.ItemName.Text] and v465[v1443.ItemName.Text].Mastery) then
				if (v1443.ItemLine2.Text ~= "Accessory") then
					local v1787 = v1443.ItemName:Clone();
					v1787.BackgroundTransparency = 1;
					v1787.TextSize = 10;
					v1787.TextXAlignment = 2;
					v1787.TextYAlignment = 2;
					v1787.ZIndex = 5;
					v1787.Text = v465[v1443.ItemName.Text].Mastery;
					v1787.Size = UDim2.new(0.5, 0, 0.5, 0);
					v1787.Position = UDim2.new(0.5, 0, 0.5, 0);
					v1787.Parent = v1443;
				end
				v1443.Parent = v840;
			elseif (v1443.ItemLine2.Text == "Blox Fruit") then
				v1443.Parent = v844;
			end
		end
		v840.AutomaticSize = 2;
		v844.AutomaticSize = 2;
	end
	local v486 = {
		Superhuman = Vector2.new(3, 2),
		GodHuman = Vector2.new(3, 2),
		DeathStep = Vector2.new(4, 3),
		ElectricClaw = Vector2.new(2, 0),
		SharkmanKarate = Vector2.new(0, 0),
		DragonTalon = Vector2.new(1, 5)
	};
	local v487 = Instance.new("Frame", v477);
	v487.BackgroundTransparency = 1;
	v487.Size = UDim2.new(1, 0, 0, 0);
	v487.LayoutOrder = table.find(v466, k);
	v487.AutomaticSize = 2;
	v487.LayoutOrder = 100;
	local v472 = Instance.new("UIGridLayout", v487);
	v472.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
	v472.CellSize = UDim2.new(0, 70, 0, 70);
	v472.FillDirectionMaxCells = 100;
	v472.FillDirection = Enum.FillDirection.Horizontal;
	local v463 = {
		"Superhuman",
		"ElectricClaw",
		"DragonTalon",
		"SharkmanKarate",
		"DeathStep",
		"GodHuman"
	};
	for v858, v859 in pairs(v463) do
		if (v486[v859] and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"   .. v859 , true) == 1)) then
			local v1570 = Instance.new("ImageLabel", v487);
			v1570.Image = "rbxassetid://9945562382";
			v1570.ImageRectSize = Vector2.new(100, 100);
			v1570.ImageRectOffset = v486[v859] * 100 ;
		end
	end
	function formatNumber(v860)
		return tostring(v860):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "");
	end
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500);
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550);
	local v498 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone();
	v498.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat;
	v498.Position = UDim2.new(0, 800, 0.63, 0);
	local v502 = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value);
	v498.Text = "Ã†â€™"   .. v502 ;
	print("Done");
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy();
	end);
	for v861, v862 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
		if v862:IsA("ImageButton") then
			v862:Destroy();
		end
	end
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy();
	end);
end);
v39:Seperator("Graphic");
v39:Button("Remove Fog ( Sea 3 )", function(v504)
	game:GetService("Lighting").LightingLayers:Destroy();
	game:GetService("Lighting").Sky:Destroy();
end);
v39:Toggle("Remove Fog", RemoveFog, function(v505)
	RemoveFog = v505;
	if  not RemoveFog then
		return;
	end
	while RemoveFog do
		wait();
		game.Lighting.FogEnd = 8999999488;
		if  not RemoveFog then
			game.Lighting.FogEnd = 2500;
		end
	end
end);
v39:Toggle("Remove Damage", true, function()
	for v864, v865 in pairs(game.Workspace:GetDescendants()) do
		if (v865.Name == "DamageCounter") then
			v865:Destroy();
		end
	end
	for v866, v867 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v867.Name == "DamageCounter") then
			v867:Destroy();
		end
	end
end);
v39:Button("Unlock FPS", function()
	setfpscap(9999999);
end);
v39:Button("Reduce Cpu", function()
	for v868, v869 in pairs(game.Workspace.Map:GetDescendants()) do
		if ((v869.Name == "Tavern") or (v869.Name == "SmileFactory") or (v869.Name == "Tree") or (v869.Name == "Rocks") or (v869.Name == "PartHouse") or (v869.Name == "Hotel") or (v869.Name == "WallPiece") or (v869.Name == "MiddlePillars") or (v869.Name == "Cloud") or (v869.Name == "PluginGrass") or (v869.Name == "BigHouse") or (v869.Name == "SmallHouse") or (v869.Name == "Detail")) then
			v869:Destroy();
		end
	end
	for v870, v871 in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
		if ((v871.Name == "Tavern") or (v871.Name == "SmileFactory") or (v871.Name == "Tree") or (v871.Name == "Rocks") or (v871.Name == "PartHouse") or (v871.Name == "Hotel") or (v871.Name == "WallPiece") or (v871.Name == "MiddlePillars") or (v871.Name == "Cloud") or (v871.Name == "PluginGrass") or (v871.Name == "BigHouse") or (v871.Name == "SmallHouse") or (v871.Name == "Detail")) then
			v871:Destroy();
		end
	end
	for v872, v873 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if (v873:IsA("Accessory") or (v873.Name == "Pants") or (v873.Name == "Shirt")) then
			v873:Destroy();
		end
	end
	local v506 = true;
	local v507 = game;
	local v508 = v507.Workspace;
	local v509 = v507.Lighting;
	local v510 = v508.Terrain;
	v510.WaterWaveSize = 0;
	v510.WaterWaveSpeed = 0;
	v510.WaterReflectance = 0;
	v510.WaterTransparency = 0;
	v509.GlobalShadows = false;
	v509.FogEnd = 8999999488;
	v509.Brightness = 0;
	settings().Rendering.QualityLevel = "Level01";
	for v874, v875 in pairs(v507:GetDescendants()) do
		if (v875:IsA("Part") or v875:IsA("Union") or v875:IsA("CornerWedgePart") or v875:IsA("TrussPart")) then
			v875.Material = "Plastic";
			v875.Reflectance = 0;
		elseif (v875:IsA("Decal") or (v875:IsA("Texture") and v506)) then
			v875.Transparency = 1;
		elseif (v875:IsA("ParticleEmitter") or v875:IsA("Trail")) then
			v875.Lifetime = NumberRange.new(0);
		elseif v875:IsA("Explosion") then
			v875.BlastPressure = 1;
			v875.BlastRadius = 1;
		elseif (v875:IsA("Fire") or v875:IsA("SpotLight") or v875:IsA("Smoke") or v875:IsA("Sparkles")) then
			v875.Enabled = false;
		elseif v875:IsA("MeshPart") then
			v875.Material = "Plastic";
			v875.Reflectance = 0;
			v875.TextureID = 10385902758728956;
		end
	end
	for v876, v877 in pairs(v509:GetChildren()) do
		if (v877:IsA("BlurEffect") or v877:IsA("SunRaysEffect") or v877:IsA("ColorCorrectionEffect") or v877:IsA("BloomEffect") or v877:IsA("DepthOfFieldEffect")) then
			v877.Enabled = false;
		end
	end
end);
v39:Seperator("Abilities");
v39:Toggle("Dodge No Cooldown", false, function(v519)
	nododgecool = v519;
	NoDodgeCool();
end);
v39:Toggle("Infinite Energy", false, function(v520)
	InfiniteEnergy = v520;
	v26 = v25.Character.Energy.Value;
end);
v39:Toggle("Infinite Ability", false, function(v522)
	InfAbility = v522;
	if (value == false) then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end);
spawn(function()
	while wait() do
		if InfAbility then
			InfAb();
		end
	end
end);
v39:Toggle("Infinite Obversation Range", getgenv().InfiniteObRange, function(v523)
	getgenv().InfiniteObRange = v523;
	local v525 = game:GetService("Players").LocalPlayer.VisionRadius.Value;
	while getgenv().InfiniteObRange do
		wait();
		local v878 = game:GetService("Players").LocalPlayer;
		local v879 = v878.Character;
		local v880 = v878.VisionRadius;
		if v878 then
			if (v879.Humanoid.Health <= 0) then
				wait(5);
			end
			v880.Value = math.huge;
		elseif ((getgenv().InfiniteObRange == false) and v878) then
			v880.Value = v525;
		end
	end
end);
v39:Toggle("Infinite Geppo", getgenv().InfGeppo, function(v526)
	getgenv().InfGeppo = v526;
end);
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().InfGeppo then
				for v1753, v1754 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Geppo then
						if ((typeof(v1754) == "function") and (getfenv(v1754).script == game:GetService("Players").LocalPlayer.Character.Geppo)) then
							for v2406, v2407 in next, getupvalues(v1754) do
								if (tostring(v2406) == "9") then
									repeat
										wait(0.1);
										setupvalue(v1754, v2406, 0);
									until  not getgenv().InfGeppo or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v39:Toggle("Infinite Soru", _G.Infsoru, function(v528)
	_G.Infsoru = v528;
end);
spawn(function()
	while wait() do
		pcall(function()
			if (_G.Infsoru and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil)) then
				for v1755, v1756 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Soru then
						if ((typeof(v1756) == "function") and (getfenv(v1756).script == game:GetService("Players").LocalPlayer.Character.Soru)) then
							for v2408, v2409 in next, getupvalues(v1756) do
								if (typeof(v2409) == "table") then
									repeat
										wait(0.1);
										v2409.LastUse = 0;
									until  not _G.Infsoru or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v39:Button("Remove Lava", function()
	for v881, v882 in pairs(game.Workspace:GetDescendants()) do
		if (v882.Name == "Lava") then
			v882:Destroy();
		end
	end
	for v883, v884 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v884.Name == "Lava") then
			v884:Destroy();
		end
	end
end);
local v87 = v38:Label("Players");
spawn(function()
	while wait() do
		pcall(function()
			for v1580, v1581 in pairs(game:GetService("Players"):GetPlayers()) do
				if (v1580 == 12) then
					v87:Set("Players:"   .. " "   .. v1580   .. " "   .. "/"   .. " "   .. "12"   .. " "   .. "(Max)" );
				elseif (v1580 == 1) then
					v87:Set("Player:"   .. " "   .. v1580   .. " "   .. "/"   .. " "   .. "12" );
				else
					v87:Set("Players:"   .. " "   .. v1580   .. " "   .. "/"   .. " "   .. "12" );
				end
			end
		end);
	end
end);
Playerslist = {};
for v529, v530 in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, v530.Name);
end
local v88 = v38:Dropdown("Select Player", Playerslist, function(v531)
	_G.SelectPly = v531;
end);
v38:Button("Refresh Player", function()
	Playerslist = {};
	v88:Clear();
	for v885, v886 in pairs(game:GetService("Players"):GetChildren()) do
		v88:Add(v886.Name);
	end
end);
v38:Toggle("Spectate Player", false, function(v532)
	SpectatePlys = v532;
	local v533 = game:GetService("Players").LocalPlayer.Character.Humanoid;
	local v534 = game:GetService("Players"):FindFirstChild(_G.SelectPly);
	repeat
		wait(0.1);
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
	until SpectatePlys == false
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
v38:Toggle("Teleport", false, function(v537)
	_G.TeleportPly = v537;
	pcall(function()
		if _G.TeleportPly then
			repeat
				topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame);
				wait();
			until _G.TeleportPly == false
		end
		StopTween(_G.TeleportPly);
	end);
end);
v38:Toggle("Teleport Player Bypass", false, function(v538)
	_G.Teleport = v538;
	if (_G.Teleport == false) then
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
	end
	while _G.Teleport do
		task.wait();
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0) ;
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
		game:GetService("VirtualUser"):CaptureController();
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
	end
end);
v38:Seperator("Quest Player");
v38:Button("Get Quest Elite Players", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
v38:Toggle("Auto Kill Player Quest", _G.PlayerHunter, function(v539)
	_G.PlayerHunter = v539;
	StopTween(_G.PlayerHunter);
end);
spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.PlayerHunter then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.PlayerHunter then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		if _G.PlayerHunter then
			if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
			else
				for v1799, v1800 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v1800.Name) then
						repeat
							wait();
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2447 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2447));
							end
							EquipWeapon(_G.SelectWeapon);
							Useskill = true;
							topos(v1800.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3) );
							v1800.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						until (_G.PlayerHunter == false) or (v1800.Humanoid.Health <= 0)
						Useskill = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
				end
			end
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Useskill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
			end
		end);
	end
end);
v38:Seperator("PvP");
v38:Toggle("Aimbot Nearest", false, function(v540)
	_G.AimNearest = v540;
end);
local v76 = game:GetService("Players");
local v25 = v76.LocalPlayer;
local v77 = game:GetService("RunService");
local function v89()
	local v541 = nil;
	local v542 = math.huge;
	for v891, v892 in pairs(v76:GetPlayers()) do
		if ((v892 ~= v25) and v892.Character and v892.Character:FindFirstChild("HumanoidRootPart")) then
			if ((v892.Team ~= v25.Team) and (v892.Team.Name ~= "Marines")) then
				local v1757 = v892.Character.HumanoidRootPart.Position;
				local v1758 = (v25.Character.HumanoidRootPart.Position - v1757).Magnitude;
				if (v1758 < v542) then
					v541 = v892;
					v542 = v1758;
				end
			end
		end
	end
	return v541;
end
v77.RenderStepped:Connect(function()
	if _G.AimNearest then
		local v1445 = v89();
		if v1445 then
			_G.Aim_Players = v1445;
		end
	end
end);
local v90 = getrawmetatable(game);
local v91 = v90.__namecall;
setreadonly(v90, false);
v90.__namecall = newcclosure(function(...)
	local v543 = getnamecallmethod();
	local v544 = {
		...
	};
	if (tostring(v543) == "FireServer") then
		if (tostring(v544[1]) == "RemoteEvent") then
			if ((tostring(v544[2]) ~= "true") and (tostring(v544[2]) ~= "false")) then
				if (_G.AimNearest and _G.Aim_Players) then
					v544[2] = _G.Aim_Players.Character.HumanoidRootPart.Position;
					return v91(unpack(v544));
				end
			end
		end
	end
	return v91(...);
end);
setreadonly(v90, true);
v38:Toggle("Enabled PvP", false, function(v545)
	_G.EnabledPvP = v545;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EnabledPvP then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
v38:Button("Set Position Spawn", function()
	_G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	Com();
end);
v38:Toggle("Safe Mode", false, function(v547)
	_G.Safe_Mode = v547;
	StopTween(_G.Safe_Mode);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Safe_Mode then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame;
			end
		end
	end);
end);
v38:Button("Respawn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
	wait();
end);
v38:Seperator("Other Players");
v38:Toggle("Auto Active V3", _G.ActiveV3, function(v548)
	_G.ActiveV3 = v548;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ActiveV3 then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
			end
		end
	end);
end);
v38:Toggle("Auto Active V4", _G.ActiveV4, function(v549)
	_G.ActiveV4 = v549;
end);
spawn(function()
	while task.wait() do
		if _G.ActiveV4 then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and (game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1) and game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and  not game.Players.LocalPlayer.Character.RaceTransformed.Value) then
					local v1801 = {
						[1] = true
					};
					game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack(v1801));
				end
			end);
		end
	end
end);
v38:Toggle("Walk on Water", true, function(v550)
	_G.WalkWater = v550;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
			end
		end);
	end
end);
v38:Toggle("NoClip", _G.NoClip, function(v551)
	_G.NoClip = v551;
end);
spawn(function()
	while wait() do
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 100);
		end
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
			game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge , (((((((((math.huge * math.huge * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0 ;
		end
	end
end);
v38:Seperator("Stats");
local v93 = v38:Label("Stat Points");
spawn(function()
	while wait() do
		pcall(function()
			v93:Set("Stat Points: "   .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value) );
		end);
	end
end);
local v94 = v38:Label("Melee: ");
local v95 = v38:Label("Defense: ");
local v96 = v38:Label("Sword: ");
local v97 = v38:Label("Gun: ");
local v98 = v38:Label("Fruit: ");
spawn(function()
	while wait() do
		pcall(function()
			v94:Set("Melee: "   .. game.Players.localPlayer.Data.Stats.Melee.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v95:Set("Defense: "   .. game.Players.localPlayer.Data.Stats.Defense.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v96:Set("Sword: "   .. game.Players.localPlayer.Data.Stats.Sword.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v97:Set("Gun: "   .. game.Players.localPlayer.Data.Stats.Gun.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v98:Set("Fruit: "   .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value );
		end);
	end
end);
v38:Toggle("Auto Stats Kaitun", _G.Stats_Kaitun, function(v552)
	_G.Stats_Kaitun = v552;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Stats_Kaitun then
				if World1 then
					local v1802 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1802));
				elseif World2 then
					local v2213 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2213));
					local v2213 = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2213));
				end
			end
		end);
	end
end);
v38:Toggle("Melee", false, function(v553)
	melee = v553;
end);
v38:Toggle("Defense", false, function(v554)
	defense = v554;
end);
v38:Toggle("Sword", false, function(v555)
	sword = v555;
end);
v38:Toggle("Gun", false, function(v556)
	gun = v556;
end);
v38:Toggle("Devil Fruit", false, function(v557)
	demonfruit = v557;
end);
PointStats = 100;
spawn(function()
	while wait() do
		if (game.Players.localPlayer.Data.Points.Value >= PointStats) then
			if melee then
				local v1759 = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1759));
			end
			if defense then
				local v1760 = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1760));
			end
			if sword then
				local v1761 = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1761));
			end
			if gun then
				local v1762 = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1762));
			end
			if demonfruit then
				local v1763 = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1763));
			end
		end
	end
end);
v40:Seperator("Raid");
_G.SelectChip = selectraids or "" ;
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for v558, v559 in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v559);
end
for v560, v561 in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v561);
end
v40:Dropdown("Select Chips", Raidslist, function(v562)
	_G.SelectChip = v562;
end);
v40:Toggle("Auto Select Dungeon", _G.SelectDungeon, function(v563)
	_G.SelectDungeon = v563;
end);
spawn(function()
	while wait() do
		if _G.SelectDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")) then
					_G.SelectChip = "Flame";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")) then
					_G.SelectChip = "Ice";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")) then
					_G.SelectChip = "Quake";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")) then
					_G.SelectChip = "Light";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")) then
					_G.SelectChip = "Dark";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")) then
					_G.SelectChip = "String";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")) then
					_G.SelectChip = "Rumble";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")) then
					_G.SelectChip = "Magma";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					_G.SelectChip = "Human: Buddha";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")) then
					_G.SelectChip = "Sand";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")) then
					_G.SelectChip = "Bird: Phoenix";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough")) then
					_G.SelectChip = "Dough";
				else
					_G.SelectChip = "Flame";
				end
			end);
		end
	end
end);
v40:Toggle("Auto Buy Chip", _G.BuyChip, function(v564)
	_G.BuyChip = v564;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.BuyChip then
				if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
					if  not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
					end
				end
			end
		end
	end);
end);
v40:Button("Buy Chip Select", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
end);
v40:Toggle("Auto Start Go To Dungeon", _G.StartRaid, function(v565)
	_G.StartRaid = v565;
end);
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.StartRaid then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false) then
					if (( not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if World2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif World3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end
					end
				end
			end
		end);
	end
end);
v40:Button("Start Go To Dungeon", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
	elseif World3 then
		fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
	end
end);
v40:Toggle("Auto Next Island And Kill Mob", false, function(v566)
	_G.Dungeon = v566;
	StopTween(_G.Dungeon);
end);
function IsIslandRaid(v567)
	if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island "   .. v567 ) then
		min = 4500;
		for v1583, v1584 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v1584.Name == ("Island "   .. v567)) and ((v1584.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min)) then
				min = (v1584.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			end
		end
		for v1585, v1586 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v1586.Name == ("Island "   .. v567)) and ((v1586.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min)) then
				return v1586;
			end
		end
	end
end
function getNextIsland()
	TableIslandsRaid = {
		5,
		4,
		3,
		2,
		1
	};
	for v893, v894 in pairs(TableIslandsRaid) do
		if (IsIslandRaid(v894) and ((IsIslandRaid(v894).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500)) then
			return IsIslandRaid(v894);
		end
	end
end
function attackNearbyEnemies()
	local v568 = {};
	for v895, v896 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if (v896:FindFirstChild("HumanoidRootPart") and v896:FindFirstChild("Humanoid") and (v896.Humanoid.Health > 0)) then
			local v1587 = (v896.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			if (v1587 <= 1000) then
				table.insert(v568, v896);
			end
		end
	end
	for v897, v898 in pairs(v568) do
		repeat
			if (v898:FindFirstChild("Humanoid") and (v898.Humanoid.Health > 0)) then
				EquipWeapon(_G.SelectWeapon);
				topos(v898.HumanoidRootPart.CFrame * Pos );
				wait(0.1);
			end
		until  not v898:FindFirstChild("Humanoid") or (v898.Humanoid.Health <= 0)
	end
end
spawn(function()
	while wait() do
		if _G.Dungeon then
			attackNearbyEnemies();
			if getNextIsland() then
				spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0) ), 1);
			end
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				local v1680 = game:GetService("Players").LocalPlayer;
				local v1681 = game:GetService("Workspace").Enemies:GetChildren();
				local v1682 = v1680.Character and v1680.Character:FindFirstChild("HumanoidRootPart") and v1680.Character.HumanoidRootPart.Position ;
				if v1682 then
					for v2003, v2004 in pairs(v1681) do
						if (v2004:FindFirstChild("Humanoid") and v2004:FindFirstChild("HumanoidRootPart") and (v2004.Humanoid.Health > 0)) then
							local v2345 = (v2004.HumanoidRootPart.Position - v1682).Magnitude;
							if (v2345 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v1680, "SimulationRadius", math.huge);
										v2004.Humanoid.Health = 0;
										v2004.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v2004.Parent or (v2004.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v40:Toggle("Auto Awakener", _G.Awakener, function(v569)
	_G.Awakener = v569;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Awakener then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end
		end
	end);
end);
if World2 then
	v40:Button("Teleport to Lab", function()
		topos(CFrame.new( -6438.73535, 250.645355, -4501.50684));
	end);
elseif World3 then
	v40:Button("Teleport to Lab", function()
		topos(CFrame.new( -5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818));
	end);
end
if World2 then
	v40:Button("Awakening Room", function()
		topos(CFrame.new(266.227783, 1.39509034, 1857.00732));
	end);
elseif World3 then
	v40:Button("Awakening Room", function()
		topos(CFrame.new( -11571.440429688, 49.172668457031, -7574.7368164062));
	end);
end
v40:Seperator("Misc KoKo Sword");
v40:Toggle("Auto Law", _G.OderSword, function(v570)
	_G.OderSword = v570;
	StopTween(_G.OderSword);
end);
v40:Toggle("Auto Law Hop", _G.OderSwordHop, function(v571)
	_G.OderSwordHop = v571;
end);
spawn(function()
	while wait() do
		if _G.OderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for v2005, v2006 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2006.Name == "Order [Lv. 1250] [Raid Boss]") then
							if (v2006:FindFirstChild("Humanoid") and v2006:FindFirstChild("HumanoidRootPart") and (v2006.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2006.HumanoidRootPart.CanCollide = false;
									v2006.Humanoid.WalkSpeed = 0;
									v2006.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2006.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.OderSword or  not v2006.Parent or (v2006.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.OderSwordHop then
					Hop();
				end
			end);
		end
	end
end);
v40:Button("Buy Microchip Law Boss", function()
	local v572 = {
		[1] = "BlackbeardReward",
		[2] = "Microchip",
		[3] = "2"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v572));
end);
v40:Button("Start Go To Raid Law Boss", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
	end
end);
v41:Seperator("World");
v41:Button("Teleport To Old World", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
v41:Button("Teleport To Second Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
v41:Button("Teleport To Third Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
v41:Seperator("Teleport Fast");
if World1 then
	v41:Dropdown("Select Island", {
		"Sky Island 1",
		"Sky Island 2",
		"Under Water Island",
		"Under Water Island Entrace"
	}, function(v1446)
		_G.SelectFast = v1446;
	end);
end
if World2 then
	v41:Dropdown("Select Island", {
		"Flamingo Mansion",
		"Flamingo Room",
		"Cursed Ship",
		"Zombie Island"
	}, function(v1447)
		_G.SelectFast = v1447;
	end);
end
if World3 then
	v41:Dropdown("Select Island", {
		"Mansion",
		"Hydra Island",
		"Castle on the Sea",
		"Floating Turtle",
		"Beautiful Pirate"
	}, function(v1448)
		_G.SelectFast = v1448;
	end);
end
v41:Toggle("Teleport Fast", false, function(v573)
	_G.TeleFast = v573;
	if (_G.TeleFast == true) then
		repeat
			wait();
			if (_G.SelectFast == "Sky Island 1") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -4652, 873, -1754));
			elseif (_G.SelectFast == "Sky Island 2") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7895, 5547, -380));
			elseif (_G.SelectFast == "Under Water Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820));
			elseif (_G.SelectFast == "Under Water Island Entrace") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3865, 5, -1926));
			elseif (_G.SelectFast == "Flamingo Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -317, 331, 597));
			elseif (_G.SelectFast == "Flamingo Room") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2283, 15, 867));
			elseif (_G.SelectFast == "Cursed Ship") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32853));
			elseif (_G.SelectFast == "Zombie Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -6509, 83, -133));
			elseif (_G.SelectFast == "Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12471, 374, -7551));
			elseif (_G.SelectFast == "Hydra Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282));
			elseif (_G.SelectFast == "Castle on the Sea") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -5092, 315, -3130));
			elseif (_G.SelectFast == "Floating Turtle") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12001, 332, -8861));
			elseif (_G.SelectFast == "Beautiful Pirate") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5319, 23, -93));
			end
		until  not _G.TeleFast
	end
end);
v41:Seperator("Island");
if World1 then
	v41:Dropdown("Select Island", {
		"WindMill",
		"Marine",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"MarineFord",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Sky Island 3",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City"
	}, function(v1449)
		_G.SelectIsland = v1449;
	end);
end
if World2 then
	v41:Dropdown("Select Island", {
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Flamingo Room",
		"Green Zone",
		"Zombie Island",
		"Two Snow Mountain",
		"Punk Hazard",
		"Cursed Ship",
		"Ice Castle",
		"Forgotten Island",
		"Ussop Island"
	}, function(v1450)
		_G.SelectIsland = v1450;
	end);
end
if World3 then
	v41:Dropdown("Select Island", {
		"Mansion",
		"Port Town",
		"Great Tree",
		"Castle On The Sea",
		"Hydra Island",
		"Floating Turtle",
		"Haunted Castle",
		"Ice Cream Island",
		"Peanut Island",
		"Cake Island",
		"Candy Cane Island",
		"Tiki Outpost"
	}, function(v1451)
		_G.SelectIsland = v1451;
	end);
end
v41:Toggle("Teleport", false, function(v574)
	_G.TeleportIsland = v574;
	if (_G.TeleportIsland == true) then
		repeat
			wait();
			if (_G.SelectIsland == "Middle Town") then
				topos(CFrame.new( -688, 15, 1585));
			elseif (_G.SelectIsland == "MarineFord") then
				topos(CFrame.new( -4810, 21, 4359));
			elseif (_G.SelectIsland == "Marine") then
				topos(CFrame.new( -2728, 25, 2056));
			elseif (_G.SelectIsland == "WindMill") then
				topos(CFrame.new(889, 17, 1434));
			elseif (_G.SelectIsland == "Desert") then
				topos(CFrame.new(945, 21, 4375));
			elseif (_G.SelectIsland == "Snow Island") then
				topos(CFrame.new(1298, 87, -1344));
			elseif (_G.SelectIsland == "Pirate Village") then
				topos(CFrame.new( -1173, 45, 3837));
			elseif (_G.SelectIsland == "Jungle") then
				topos(CFrame.new( -1614, 37, 146));
			elseif (_G.SelectIsland == "Prison") then
				topos(CFrame.new(4870, 6, 736));
			elseif (_G.SelectIsland == "Under Water Island") then
				topos(CFrame.new(61164, 5, 1820));
			elseif (_G.SelectIsland == "Colosseum") then
				topos(CFrame.new( -1535, 7, -3014));
			elseif (_G.SelectIsland == "Magma Village") then
				topos(CFrame.new( -5290, 9, 8349));
			elseif (_G.SelectIsland == "Sky Island 1") then
				topos(CFrame.new( -4814, 718, -2551));
			elseif (_G.SelectIsland == "Sky Island 2") then
				topos(CFrame.new( -4652, 873, -1754));
			elseif (_G.SelectIsland == "Sky Island 3") then
				topos(CFrame.new( -7895, 5547, -380));
			elseif (_G.SelectIsland == "Fountain City") then
				topos(CFrame.new(5128, 60, 4106));
			elseif (_G.SelectIsland == "The Cafe") then
				topos(CFrame.new( -382, 73, 290));
			elseif (_G.SelectIsland == "Frist Spot") then
				topos(CFrame.new( -11, 29, 2771));
			elseif (_G.SelectIsland == "Dark Area") then
				topos(CFrame.new(3494, 13, -3259));
			elseif (_G.SelectIsland == "Flamingo Mansion") then
				topos(CFrame.new( -317, 331, 597));
			elseif (_G.SelectIsland == "Flamingo Room") then
				topos(CFrame.new(2285, 15, 905));
			elseif (_G.SelectIsland == "Green Zone") then
				topos(CFrame.new( -2258, 73, -2696));
			elseif (_G.SelectIsland == "Zombie Island") then
				topos(CFrame.new( -5552, 194, -776));
			elseif (_G.SelectIsland == "Two Snow Mountain") then
				topos(CFrame.new(752, 408, -5277));
			elseif (_G.SelectIsland == "Punk Hazard") then
				topos(CFrame.new( -5897, 18, -5096));
			elseif (_G.SelectIsland == "Cursed Ship") then
				topos(CFrame.new(919, 125, 32869));
			elseif (_G.SelectIsland == "Ice Castle") then
				topos(CFrame.new(5505, 40, -6178));
			elseif (_G.SelectIsland == "Forgotten Island") then
				topos(CFrame.new( -3050, 240, -10178));
			elseif (_G.SelectIsland == "Ussop Island") then
				topos(CFrame.new(4816, 8, 2863));
			elseif (_G.SelectIsland == "Mansion") then
				topos(CFrame.new( -12471, 374, -7551));
			elseif (_G.SelectIsland == "Port Town") then
				topos(CFrame.new( -334, 7, 5300));
			elseif (_G.SelectIsland == "Castle On The Sea") then
				topos(CFrame.new( -5073, 315, -3153));
			elseif (_G.SelectIsland == "Hydra Island") then
				topos(CFrame.new(5756, 610, -282));
			elseif (_G.SelectIsland == "Great Tree") then
				topos(CFrame.new(2681, 1682, -7190));
			elseif (_G.SelectIsland == "Floating Turtle") then
				topos(CFrame.new( -12528, 332, -8658));
			elseif (_G.SelectIsland == "Haunted Castle") then
				topos(CFrame.new( -9517, 142, 5528));
			elseif (_G.SelectIsland == "Ice Cream Island") then
				topos(CFrame.new( -902, 79, -10988));
			elseif (_G.SelectIsland == "Peanut Island") then
				topos(CFrame.new( -2062, 50, -10232));
			elseif (_G.SelectIsland == "Cake Island") then
				topos(CFrame.new( -1897, 14, -11576));
			elseif (_G.SelectIsland == "Candy Cane Island") then
				topos(CFrame.new( -1038, 10, -14076));
			elseif (_G.SelectIsland == "Tiki Outpost") then
				topos(CFrame.new( -16224, 9, 439));
			end
		until  not _G.TeleportIsland
	end
	StopTween(_G.TeleportIsland);
end);
v42:Seperator("Abilities");
v42:Button("Buy Geppo [ 10,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
end);
v42:Button("Buy Buso Haki [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
end);
v42:Button("Buy Soru [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
end);
v42:Button("Buy Observation Haki [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
end);
v42:Toggle("Auto Buy Abilities", false, function(v575)
	Abilities = v575;
	while Abilities do
		wait(0.1);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end
end);
v42:Seperator("Fighting Style");
v42:Button("Buy Black Leg [ 150,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
v42:Button("Buy Electro [ 550,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end);
v42:Button("Buy Fishman Karate [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
v42:Button("Buy Dragon Claw [ 1,500 Fragments ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
end);
v42:Button("Buy Superhuman [ 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
v42:Button("Buy Death Step [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
v42:Button("Buy Sharkman Karate [ 5,000 Fragments 2,500,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
v42:Button("Buy Electric Claw [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
v42:Button("Buy Dragon Talon [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
v42:Button("Buy God Human [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
v42:Button("Buy Sanguine Art [ 5,000 Fragments $5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
v42:Seperator(" Sword ");
v42:Button("Cutlass [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
end);
v42:Button("Katana [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
end);
v42:Button("Iron Mace [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
end);
v42:Button("Dual Katana [ 12,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
end);
v42:Button("Triple Katana [ 60,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
end);
v42:Button("Pipe [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
end);
v42:Button("Dual-Headed Blade [ 400,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
end);
v42:Button("Bisento [ 1,200,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
end);
v42:Button("Soul Cane [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
end);
v42:Button("Pole v.2 [ 5,000 Fragments ]", function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
v42:Toggle("Yama Sword [ Elite Hunter 30 ]", _G.Yama, function(v576)
	_G.Yama = v576;
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v42:Seperator(" Gun ");
v42:Button("Slingshot [ 5,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
end);
v42:Button("Musket [ 8,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket");
end);
v42:Button("Flintlock [ 10,500 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
end);
v42:Button("Refined Slingshot [ 30,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
end);
v42:Button("Refined Flintlock [ 65,000 Beli ]", function()
	local v577 = {
		[1] = "BuyItem",
		[2] = "Refined Flintlock"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v577));
end);
v42:Button("Cannon [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
end);
v42:Button("Kabucha [ 1,500 Fragments]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
end);
v42:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
	local v578 = "Ectoplasm";
	local v579 = "Buy";
	local v580 = 1;
	local v581 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v581:InvokeServer(v578, v579, v580);
	local v578 = "Ectoplasm";
	local v579 = "Buy";
	local v580 = 1;
	local v581 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v581:InvokeServer(v578, v579, v580);
end);
v42:Seperator("Stats");
v42:Button("Reset Stats (Use 2.5K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
end);
v42:Button("Random Race (Use 3K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
end);
v42:Button("Buy Cyborg (Use 2.5K Fragments)", function()
	local v582 = {
		[1] = "CyborgTrainer",
		[2] = "Buy"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v582));
end);
v42:Seperator("Accessories");
v42:Button("Black Cape [ 50,000 Beli ]", function()
	local v583 = {
		[1] = "BuyItem",
		[2] = "Black Cape"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v583));
end);
v42:Button("Swordsman Hat [ 150k Beli ]", function()
	local v584 = {
		[1] = "BuyItem",
		[2] = "Swordsman Hat"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v584));
end);
v42:Button("Tomoe Ring [ 500k Beli ]", function()
	local v585 = {
		[1] = "BuyItem",
		[2] = "Tomoe Ring"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v585));
end);
v43:Seperator("Sniper");
FruitList = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Door-Door",
	"Quake-Quake",
	"Human-Human: Buddha",
	"String-String",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Paw-Paw",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon",
	"Leopard-Leopard"
};
local v99 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for v586, v587 in next, v99 do
	table.insert(Table_DevilFruitSniper, v587.Name);
	if v587.OnSale then
		table.insert(ShopDevilSell, v587.Name);
	end
end
_G.SelectFruit = "";
v43:Dropdown("Select Fruits Sniper", Table_DevilFruitSniper, function(v588)
	_G.SelectFruit = v588;
end);
v43:Toggle("Auto Buy Fruit Sniper", _G.BuyFruitSniper, function(v589)
	_G.BuyFruitSniper = v589;
end);
v43:Seperator("Others");
v43:Dropdown("Select Fruits Eat", Table_DevilFruitSniper, function(v590)
	_G.SelectFruitEat = v590;
end);
v43:Toggle("Auto Eat Fruit", _G.EatFruit, function(v591)
	_G.EatFruit = v591;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EatFruit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer();
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.BuyFruitSniper then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit", false);
			end
		end
	end);
end);
v43:Button("Random Fruit", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
v43:Button("Open Devil Shop", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
v43:Toggle("Auto Store Fruit", _G.StoreFruit, function(v593)
	_G.StoreFruit = v593;
end);
spawn(function()
	while wait() do
		if _G.StoreFruit then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String", game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") );
				end
			end);
		end
	end
end);
v43:Toggle("Bring to Fruit", false, function(v594)
	_G.Grabfruit = v594;
end);
spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for v1683, v1684 in pairs(game.Workspace:GetChildren()) do
				if v1684:IsA("Tool") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1684.Handle.CFrame;
				end
			end
		end
	end
end);
v43:Toggle("Tween to Fruit", false, function(v595)
	_G.Tweenfruit = v595;
	StopTween(_G.Tweenfruit);
end);
spawn(function()
	while wait() do
		if _G.Tweenfruit then
			for v1685, v1686 in pairs(game.Workspace:GetChildren()) do
				if v1686:IsA("Tool") then
					topos(v1686.Handle.CFrame);
				end
			end
		end
	end
end);
v44:Seperator("Server");
v44:Button("Rejoin Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
end);
v44:Button("Server Hop", function()
	Hop();
end);
v44:Button("Hop To Lower Player", function()
	getgenv().AutoTeleport = true;
	getgenv().DontTeleportTheSameNumber = true;
	getgenv().CopytoClipboard = false;
	if  not game:IsLoaded() then
		print("Game is loading waiting...");
	end
	local v599 = math.huge;
	local v600;
	local v601;
	local v602 = "https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;
	function serversearch()
		for v1452, v1453 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v602)).data) do
			if ((type(v1453) == "table") and (v1453.playing ~= nil) and (v599 > v1453.playing)) then
				v600 = v1453.maxPlayers;
				v599 = v1453.playing;
				v601 = v1453.id;
			end
		end
	end
	function getservers()
		serversearch();
		for v1454, v1455 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v602))) do
			if (v1454 == "nextPageCursor") then
				if v602:find("&cursor=") then
					local v1805 = v602:find("&cursor=");
					local v1806 = v602:sub(v1805);
					v602 = v602:gsub(v1806, "");
				end
				v602 = v602   .. "&cursor="   .. v1455 ;
				getservers();
			end
		end
	end
	getservers();
	if AutoTeleport then
		if DontTeleportTheSameNumber then
			if (( #game:GetService("Players"):GetPlayers() - 4) == v599) then
				return warn("It has same number of players (except you)");
			elseif (v601 == game.JobId) then
				return warn("Your current server is the most empty server atm");
			end
		end
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v601);
	end
end);
v44:Button("Copy Job Id", function()
	setclipboard(tostring(game.JobId));
end);
v44:Textbox("Place Job Id", "Place Job Id", true, function(v603)
	_G.Job = v603;
end);
v44:Button("Join Sever", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
end);
v44:Seperator("Misc");
v44:Button("Title Name", function()
	local v604 = {
		[1] = "getTitles"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v604));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
v44:Button("Color Haki", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
v44:Seperator("Teams");
v44:Button("Join Pirates Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
v44:Button("Join Marines Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
v44:Seperator(" Misc ");
v44:Toggle("Anti AFK", true, function()
	local v607 = game:GetService("VirtualUser");
	repeat
		wait();
	until game:IsLoaded()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new());
		v607:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
		wait(1);
		v607:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	end);
end);
v44:Seperator("Codes");
local v100 = {
	"KITTGAMING",
	"ENYU_IS_PRO",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"STRAWHATMAIME",
	"SUB2OFFICIALNOOBIE",
	"SUB2NOOBMASTER123",
	"SUB2DAIGROCK",
	"AXIORE",
	"TANTAIGAMIMG",
	"STRAWHATMAINE",
	"JCWK",
	"FUDD10_V2",
	"SUB2FER999",
	"MAGICBIS",
	"TY_FOR_WATCHING",
	"STARCODEHEO"
};
v44:Button("Redeem All Codes", function()
	function RedeemCode(v899)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v899);
	end
	for v900, v901 in pairs(v100) do
		RedeemCode(v901);
	end
end);
v44:Dropdown("Selected Codes Reset stat", {
	"NOOB_REFUND",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru"
}, function(v608)
	_G.CodeSelect = v608;
end);
v44:Button("Redeem Code (Selected Codes)", function()
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
v44:Seperator("State");
v44:Dropdown("Select Haki State", {
	"State 0",
	"State 1",
	"State 2",
	"State 3",
	"State 4",
	"State 5"
}, function(v609)
	_G.SelectStateHaki = v609;
end);
v44:Button("Change Buso Haki State", function()
	if (_G.SelectStateHaki == "State 0") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 0);
	elseif (_G.SelectStateHaki == "State 1") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 1);
	elseif (_G.SelectStateHaki == "State 2") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 2);
	elseif (_G.SelectStateHaki == "State 3") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 3);
	elseif (_G.SelectStateHaki == "State 4") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 4);
	elseif (_G.SelectStateHaki == "State 5") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 5);
	end
end);
local v101 = require(game.ReplicatedStorage.Util.CameraShaker);
v101:Stop();
local v102 = game:GetService("Players");
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Min Gaming",
	Text = "Loading Done!",
	Icon = "rbxthumb://type=Asset&id=13717478897&w=150&h=150",
	Duration = 10
});