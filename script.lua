--[[
███████╗██╗   ██╗██╗██╗         █████╗ ██╗  ██╗███████╗
██╔════╝██║   ██║██║██║        ██╔══██╗╚██╗██╔╝██╔════╝
█████╗  ██║   ██║██║██║        ███████║ ╚███╔╝ █████╗
██╔══╝  ╚██╗ ██╔╝██║██║        ██╔══██║ ██╔██╗ ██╔══╝
███████╗ ╚████╔╝ ██║███████╗   ██║  ██║██╔╝ ██╗███████╗
╚══════╝  ╚═══╝  ╚═╝╚══════╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

        STUDIOS V2 OBFUSCATOR By MAX
        https://eaxe.net

        Sponsored by
        https://BloxDen.com
--]]

pcall(function()
	if not game:IsLoaded() then
		game.Loaded:Wait();
	end;
end);
task.wait(.25);
local v = getgenv or function()
		return _G;
	end;
local d = game:GetService("Players");
local G = game:GetService("UserInputService");
local A = game:GetService("RunService");
local R = game:GetService("Lighting");
local P = game:GetService("Stats");
local m = game:GetService("HttpService");
local E = game:GetService("TweenService");
local k = game:GetService("ReplicatedStorage");
local Q = game:GetService("VirtualInputManager");
local o = workspace.CurrentCamera;
local K = d.LocalPlayer or d.PlayerAdded:Wait();
local V = K:WaitForChild("PlayerGui", 60);
if not V then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function i()
	if gethui then
		local v, d = pcall(function()
				return gethui();
			end);
		if v and d then
			return d;
		end;
	end;
	return game:GetService("CoreGui");
end;
local O = i();
pcall(function()
	for v, d in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
		"OpSiegeUI",
		"OpSiegeLoadUI",
		"OpSiegeFOVGui",
		"OpSiegeESPGui",
	}) do
		local G = V:FindFirstChild(d);
		if G then
			G:Destroy();
		end;
		local A = O:FindFirstChild(d);
		if A then
			A:Destroy();
		end;
	end;
end);
task.wait(.05);
local X;
pcall(function()
	X = K:GetMouse();
end);
local function L()
	local d = "Unknown";
	pcall(function()
		if identifyexecutor then
			local v, G = identifyexecutor();
			d = tostring(v or "Unknown");
			if G then
				d = d .. (" " .. tostring(G));
			end;
		elseif getexecutorname then
			d = tostring(getexecutorname());
		elseif syn and syn.request then
			d = "Synapse";
		elseif fluxus then
			d = "Fluxus";
		elseif KRNL_LOADED then
			d = "Krnl";
		elseif is_sirhurt_closure then
			d = "Sirhurt";
		elseif pebc_execute then
			d = "Parallel";
		elseif SecureDelta or (v()).SecureDelta then
			d = "Delta";
		elseif (v()).drew or (v()).IS_COCO_LOADED then
			d = "Coco";
		elseif (v()).X.X or (v()).WXApple then
			d = "Wave";
		elseif (v()).IsElectron then
			d = "Electron";
		elseif (v()).executor_name then
			d = tostring((v()).executor_name);
		end;
	end);
	if d == "Unknown" or d == "" then
		pcall(function()
			if (v()).OPIUMWARE or (v()).Opiumware then
				d = "Opiumware";
			end;
		end);
	end;
	return d;
end;
local l = L();
local b = Instance.new("ScreenGui");
b.Name = "OpSiegeLoadUI";
b.ResetOnSpawn = false;
b.IgnoreGuiInset = true;
b.DisplayOrder = 9999;
b.Parent = V;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if b and b.Parent then
			b:Destroy();
		end;
	end);
end);
local a = Instance.new("Frame");
a.Size = UDim2.new(1, 0, 1, 0);
a.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
a.BorderSizePixel = 0;
a.Parent = b;
local Y = Instance.new("Frame");
Y.Size = UDim2.new(0, 320, 0, 160);
Y.Position = UDim2.new(.5, -160, .5, -80);
Y.BackgroundColor3 = Color3.fromRGB(10, 10, 10);
Y.BorderSizePixel = 0;
Y.Parent = a;
(Instance.new("UICorner", Y)).CornerRadius = UDim.new(0, 14);
local B = Instance.new("TextLabel");
B.Size = UDim2.new(1, -20, 0, 28);
B.Position = UDim2.new(0, 10, 0, 14);
B.BackgroundTransparency = 1;
B.Text = "MOON HUB";
B.TextColor3 = Color3.fromRGB(255, 0, 0);
B.TextSize = 20;
B.Font = Enum.Font.GothamBold;
B.Parent = Y;
local c = Instance.new("TextLabel");
c.Size = UDim2.new(1, -20, 0, 18);
c.Position = UDim2.new(0, 10, 0, 42);
c.BackgroundTransparency = 1;
c.Text = "operation siege";
c.TextColor3 = Color3.fromRGB(180, 180, 180);
c.TextSize = 12;
c.Font = Enum.Font.Gotham;
c.Parent = Y;
local s = Instance.new("TextLabel");
s.Size = UDim2.new(1, -20, 0, 18);
s.Position = UDim2.new(0, 10, 0, 70);
s.BackgroundTransparency = 1;
s.Text = "Starting...";
s.TextColor3 = Color3.fromRGB(255, 255, 255);
s.TextSize = 12;
s.Font = Enum.Font.Gotham;
s.TextXAlignment = Enum.TextXAlignment.Left;
s.Parent = Y;
local D = Instance.new("Frame");
D.Size = UDim2.new(1, -24, 0, 10);
D.Position = UDim2.new(0, 12, 0, 100);
D.BackgroundColor3 = Color3.fromRGB(40, 0, 0);
D.BorderSizePixel = 0;
D.Parent = Y;
(Instance.new("UICorner", D)).CornerRadius = UDim.new(1, 0);
local y = Instance.new("Frame");
y.Size = UDim2.new(0, 0, 1, 0);
y.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
y.BorderSizePixel = 0;
y.Parent = D;
(Instance.new("UICorner", y)).CornerRadius = UDim.new(1, 0);
local x = Instance.new("TextLabel");
x.Size = UDim2.new(1, -20, 0, 32);
x.Position = UDim2.new(0, 10, 0, 118);
x.BackgroundTransparency = 1;
x.Text = "Executor: " .. l;
x.TextColor3 = Color3.fromRGB(180, 180, 180);
x.TextSize = 11;
x.Font = Enum.Font.Gotham;
x.TextXAlignment = Enum.TextXAlignment.Left;
x.TextYAlignment = Enum.TextYAlignment.Top;
x.Parent = Y;
local function F(v, d)
	v = math.clamp(v, 0, 1);
	pcall(function()
		s.Text = d or s.Text;
		(E:Create(y, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(v, 0, 1, 0) })):Play();
	end);
end;
F(.08, "Detecting executor...");
task.wait(.2);
F(.2, "Executor: " .. l);
task.wait(.15);
F(.35, "Loading config...");
task.wait(.1);
local function p()
	pcall(function()
		for v, d in ipairs(game:GetDescendants()) do
			if d:IsA("Script") or d:IsA("LocalScript") then
				local v = (d.Name:lower()):gsub("%s+", "");
				if v:find("anticheat") or v:find("antiexploit") or v:find("cheat") or v:find("detect") or v:find("ban") or v:find("anticheats") or v:find("guard") or v:find("security") then
					pcall(function()
						d.Disabled = true;
					end);
				end;
			end;
		end;
	end);
end;
task.spawn(p);
local j = false;
local function z(v)
	if v and not j then
		j = true;
		local v, d, G = print, warn, error;
		print = function()
 
			end;
		warn = function()
 
			end;
		error = function()
 
			end;
		task.spawn(function()
			task.wait(1);
			print = v;
			warn = d;
			error = G;
			j = false;
		end);
	end;
end;
local function N(v, d)
	pcall(function()
		if writefile then
			writefile(v, d);
		end;
	end);
end;
local function W(v)
	local d, G = pcall(function()
			if isfile and (isfile(v) and readfile) then
				return readfile(v);
			end;
		end);
	return d and G or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
(v()).MoonHubState = (v()).MoonHubState or {};
local r = (v()).MoonHubState;
local q = {
		Aimbot = false,
		AimKey = "MB2",
		AimMode = "Hold",
		AimFOV = 150,
		AimSmooth = .95,
		ShowFOV = false,
		WallCheck = true,
		TeamCheck = true,
		Prediction = true,
		PredictAmount = .12,
		CustomFOV = false,
		FOVValue = 90,
		Speed = false,
		SpeedValue = 24,
		Noclip = false,
		AntiBow = true,
		StaffDetect = false,
		StaffLeave = false,
		ESP = false,
		ShowBoxes = true,
		BoxStyle = "Corner",
		ShowNames = true,
		ShowDistance = true,
		ShowHealth = true,
		ShowHeadDot = true,
		Chams = false,
		RGBESP = false,
		ESPColorR = 255,
		ESPColorG = 0,
		ESPColorB = 0,
		Radar = false,
		RadarSize = 140,
		RadarRange = 200,
		CursorName = "Off",
		CursorSize = 32,
		ScreenStretch = false,
		StretchAmount = .53,
		ShowPerf = true,
		Potato = false,
		MobileAim = false,
		MobileSmooth = .9,
		MobileFOV = 160,
		MobileShowFOV = true,
		ConfigName = "default",
		AntiCheatBypass = true,
		ConsoleSilent = true,
	};
for v, d in pairs(q) do
	if r[v] == nil then
		r[v] = d;
	end;
end;
r.NoRecoil = nil;
r.NoJumpCooldown = nil;
r.KillAuraDelay = nil;
r.HideFromRecord = nil;
if type(r.CursorSize) ~= "number" then
	r.CursorSize = 32;
end;
if type(r.AimSmooth) ~= "number" then
	r.AimSmooth = .95;
end;
if type(r.FOVValue) ~= "number" then
	r.FOVValue = 90;
end;
r.StretchAmount = math.clamp(tonumber(r.StretchAmount) or .53, .3, 1);
if r.AntiCheatBypass == nil then
	r.AntiCheatBypass = true;
end;
if r.ConsoleSilent == nil then
	r.ConsoleSilent = true;
end;
local S = false;
task.delay(2.5, function()
	S = true;
end);
local function f()
	local v = (tostring(r.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if v == "" then
		v = "default";
	end;
	r.ConfigName = v;
	r.NoRecoil = nil;
	r.NoJumpCooldown = nil;
	r.KillAuraDelay = nil;
	r.HideFromRecord = nil;
	r.StretchAmount = math.clamp(tonumber(r.StretchAmount) or .53, .3, 1);
	N("MoonHub/Configs/" .. (v .. ".json"), m:JSONEncode(r));
	N("MoonHub/OperationSiege.json", m:JSONEncode(r));
end;
local function Z()
	local v = (tostring(r.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local d = W("MoonHub/Configs/" .. (v .. ".json")) or W("MoonHub/OperationSiege.json");
	if d then
		pcall(function()
			local v = m:JSONDecode(d);
			if type(v) == "table" then
				for v, d in pairs(v) do
					r[v] = d;
				end;
			end;
		end);
	end;
	r.NoRecoil = nil;
	r.NoJumpCooldown = nil;
	r.KillAuraDelay = nil;
	r.HideFromRecord = nil;
	r.StretchAmount = math.clamp(tonumber(r.StretchAmount) or .53, .3, 1);
	if not S then
		local v = r.ScreenStretch == true;
		r.ScreenStretch = false;
		task.delay(2.6, function()
			if v then
				r.ScreenStretch = true;
			end;
			S = true;
		end);
	end;
end;
pcall(Z);
F(.65, "Loading ScreenGui ESP...");
local I = Color3.fromRGB(255, 0, 0);
local T = Color3.fromRGB(0, 0, 0);
local H = Color3.fromRGB(8, 8, 8);
local J = Color3.fromRGB(12, 12, 12);
local C = Color3.fromRGB(255, 255, 255);
local n = Color3.fromRGB(180, 180, 180);
local u = Enum.Font.Gotham;
local function h()
	if r.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(r.ESPColorR) or 255, 0, 255), math.clamp(tonumber(r.ESPColorG) or 0, 0, 255), math.clamp(tonumber(r.ESPColorB) or 0, 0, 255));
end;
local function e()
	pcall(function()
		G.MouseBehavior = Enum.MouseBehavior.Default;
		G.MouseIconEnabled = true;
	end);
end;
local g = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local t = {};
for v, d in ipairs(g) do
	t[v] = d.Name;
end;
local M = Instance.new("ScreenGui");
M.Name = "MoonCursorUI";
M.ResetOnSpawn = false;
M.IgnoreGuiInset = true;
M.DisplayOrder = 10000;
M.Parent = V;
local U = Instance.new("ImageLabel");
U.BackgroundTransparency = 1;
U.AnchorPoint = Vector2.new(.5, .5);
U.Size = UDim2.new(0, 32, 0, 32);
U.Visible = false;
U.ZIndex = 100;
U.Parent = M;
local function w(v)
	local d = V:FindFirstChild("Crosshair");
	if not d then
		return;
	end;
	pcall(function()
		if d:IsA("ScreenGui") then
			d.Enabled = v;
		end;
		d.Visible = v;
		for d, G in ipairs(d:GetDescendants()) do
			if G:IsA("GuiObject") then
				G.Visible = v;
			end;
		end;
	end);
end;
local function vY(v)
	v = v or r.CursorName or "Off";
	r.CursorName = v;
	local d = g[1];
	for G, A in ipairs(g) do
		if A.Name == v then
			d = A;
			break;
		end;
	end;
	w(false);
	U.Visible = false;
	local A = math.clamp(tonumber(r.CursorSize) or 32, 8, 128);
	U.Size = UDim2.new(0, A, 0, A);
	if not d.Id or d.Name == "Off" then
		pcall(function()
			if X then
				X.Icon = "";
			end;
			G.MouseIconEnabled = true;
		end);
		return;
	end;
	if d.Id == "GAME" then
		w(true);
		pcall(function()
			if X then
				X.Icon = "rbxassetid://0";
			end;
			G.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		G.MouseIconEnabled = false;
		if X then
			X.Icon = "rbxassetid://0";
		end;
		U.Image = "rbxassetid://" .. tostring(d.Id);
		U.Visible = true;
	end);
end;
local dY = 70;
pcall(function()
	dY = o.FieldOfView;
end);
local function GY()
	if not r.CustomFOV then
		return;
	end;
	local v = math.clamp(tonumber(r.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(o.FieldOfView - v) > .5 then
			o.FieldOfView = v;
		end;
	end);
end;
local AY = false;
local function RY()
	if not S then
		return;
	end;
	if not r.ScreenStretch then
		return;
	end;
	if AY then
		return;
	end;
	if not o or not o.Parent then
		return;
	end;
	local v = math.clamp(tonumber(r.StretchAmount) or .53, .3, 1);
	if v >= .995 then
		return;
	end;
	pcall(function()
		local d = o.CFrame;
		if d then
			o.CFrame = d * CFrame.new(0, 0, 0, 1, 0, 0, 0, v, 0, 0, 0, 1);
		end;
	end);
end;
local function PY(v)
	local d = K.Character;
	if not d then
		return;
	end;
	local G = d:FindFirstChild("HumanoidRootPart");
	if not G or not v then
		return;
	end;
	pcall(function()
		local d = G.Position;
		G.CFrame = CFrame.new(d, Vector3.new(v.X, d.Y, v.Z));
	end);
end;
local function mY(v)
	if not v then
		return nil;
	end;
	local d, G = pcall(function()
			return v.Character;
		end);
	return d and G or nil;
end;
local function EY(v)
	local d = mY(v);
	if not d then
		return false;
	end;
	local G = d:FindFirstChildOfClass("Humanoid");
	return G ~= nil and G.Health > 0;
end;
local function kY(v)
	if not v or v == K then
		return false;
	end;
	if not r.TeamCheck then
		return true;
	end;
	local d, G = K.Team, v.Team;
	if d and G then
		return d ~= G;
	end;
	return true;
end;
local QY = {
		"box",
		"crate",
		"barrel",
		"dumpster",
		"trash",
		"container",
		"shipping",
		"wall",
		"pillar",
		"fence",
		"gate",
		"car",
		"truck",
		"van",
		"generator",
		"cabinet",
		"shelf",
		"locker",
		"desk",
		"table",
		"couch",
		"bench",
		"stairs",
		"ladder",
		"ramp",
		"pipe",
		"vent",
		"sandbag",
		"pallet",
		"forklift",
	};
local function oY(v, d)
	for G = 1, #d, 1 do
		if string.find(v, d[G], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function KY(v)
	if not v or not v:IsA("BasePart") then
		return true;
	end;
	local d = string.lower(v.Name or "");
	local G = string.lower(v:GetFullName() or "");
	local A = string.lower(tostring(v.Material));
	if string.find(d, "glass", 1, true) or string.find(A, "glass", 1, true) then
		return true;
	end;
	if v.Transparency >= .7 then
		return true;
	end;
	if string.find(d, "door", 1, true) or string.find(G, "door", 1, true) then
		if string.find(d, "wood", 1, true) or string.find(G, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(d, "window", 1, true) then
		return true;
	end;
	if v.CanCollide == false and v.Transparency >= .25 then
		return true;
	end;
	if oY(d, QY) or oY(G, QY) then
		return false;
	end;
	return false;
end;
local function VY(v)
	if not r.WallCheck then
		return true;
	end;
	local d = mY(v);
	local G = d and d:FindFirstChild("Head");
	if not G then
		return false;
	end;
	local A = mY(K);
	local R = o.CFrame.Position + o.CFrame.LookVector * .8;
	local P = G.Position;
	local m = P - R;
	local E = m.Magnitude;
	if E < 1.5 then
		return true;
	end;
	local k = { o };
	if A then
		table.insert(k, A);
	end;
	if d then
		table.insert(k, d);
	end;
	local Q = RaycastParams.new();
	Q.FilterType = Enum.RaycastFilterType.Exclude;
	Q.FilterDescendantsInstances = k;
	Q.IgnoreWater = true;
	local V, i, O = 0, R, m.Unit;
	for v = 1, 12, 1 do
		local G = E - V;
		if G <= .15 then
			return true;
		end;
		local A = workspace:Raycast(i, O * G, Q);
		if not A then
			return true;
		end;
		if A.Instance and (d and A.Instance:IsDescendantOf(d)) then
			return true;
		end;
		if KY(A.Instance) then
			table.insert(k, A.Instance);
			Q.FilterDescendantsInstances = k;
			local v = ((A.Position - i)).Magnitude;
			i = A.Position + O * .15;
			V = (V + v) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function iY(v, d)
	if not r.Prediction or not v then
		return v.Position;
	end;
	local G = d and ((d:FindFirstChild("HumanoidRootPart") or d:FindFirstChild("Torso")));
	local A = Vector3.zero;
	if G then
		pcall(function()
			A = G.AssemblyLinearVelocity;
		end);
	end;
	return v.Position + A * ((tonumber(r.PredictAmount) or .12));
end;
local function OY(v, G)
	local A, R, P = nil, nil, v;
	local m = o.ViewportSize / 2;
	for v, d in ipairs(d:GetPlayers()) do
		if d ~= K and (kY(d) and EY(d)) then
			local v = mY(d);
			local E = v and v:FindFirstChild("Head");
			if E then
				local k = iY(E, v);
				local Q, K = o:WorldToViewportPoint(k);
				if K and Q.Z > 0 then
					local v = ((Vector2.new(Q.X, Q.Y) - m)).Magnitude;
					if v < P and (((not G) or VY(d))) then
						P = v;
						A = d;
						R = k;
					end;
				end;
			end;
		end;
	end;
	return A, R;
end;
local XY = Instance.new("ScreenGui");
XY.Name = "OpSiegeESPGui";
XY.ResetOnSpawn = false;
XY.IgnoreGuiInset = true;
XY.DisplayOrder = 99999;
XY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
XY.Parent = O;
local LY = {};
local lY = 0;
local function bY(v)
	if not v then
		return;
	end;
	pcall(function()
		if v.fullBox then
			v.fullBox:Destroy();
		end;
	end);
	pcall(function()
		if v.fullStroke then
			v.fullStroke:Destroy();
		end;
	end);
	pcall(function()
		if v.name then
			v.name:Destroy();
		end;
	end);
	pcall(function()
		if v.dist then
			v.dist:Destroy();
		end;
	end);
	pcall(function()
		if v.healthBg then
			v.healthBg:Destroy();
		end;
	end);
	pcall(function()
		if v.healthFill then
			v.healthFill:Destroy();
		end;
	end);
	pcall(function()
		if v.headDot then
			v.headDot:Destroy();
		end;
	end);
	if v.corners then
		for d = 1, #v.corners, 1 do
			local G = v.corners[d];
			pcall(function()
				if G then
					G:Destroy();
				end;
			end);
			v.corners[d] = nil;
		end;
	end;
end;
local function aY()
	for v, d in pairs(LY) do
		bY(d);
		LY[v] = nil;
	end;
	pcall(function()
		for v, d in ipairs(XY:GetChildren()) do
			pcall(function()
				if d then
					d:Destroy();
				end;
			end);
		end;
	end);
	LY = {};
end;
local function YY(v)
	local d = LY[v];
	if not d then
		return;
	end;
	bY(d);
	LY[v] = nil;
end;
clearAllESP = aY;
removePlayerESP = YY;
local function BY(v)
	if LY[v] then
		return LY[v];
	end;
	local d = Instance.new("Frame");
	d.BackgroundTransparency = 1;
	d.BorderSizePixel = 0;
	d.Visible = false;
	d.ZIndex = 999;
	d.Parent = XY;
	local G;
	pcall(function()
		G = Instance.new("UIStroke");
		G.Color = Color3.new(1, 0, 0);
		G.Thickness = 1.5;
		G.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		G.Parent = d;
	end);
	local A = {};
	for v = 1, 8, 1 do
		local d = Instance.new("Frame");
		d.BorderSizePixel = 0;
		d.BackgroundColor3 = Color3.new(1, 0, 0);
		d.Visible = false;
		d.ZIndex = 999;
		d.Parent = XY;
		A[v] = d;
	end;
	local R = Instance.new("TextLabel");
	R.BackgroundTransparency = 1;
	R.AnchorPoint = Vector2.new(.5, .5);
	R.TextColor3 = Color3.new(1, 1, 1);
	R.TextSize = 12;
	R.Font = Enum.Font.SourceSansBold;
	R.TextStrokeTransparency = 0;
	R.Visible = false;
	R.ZIndex = 999;
	R.Parent = XY;
	local P = Instance.new("TextLabel");
	P.BackgroundTransparency = 1;
	P.AnchorPoint = Vector2.new(.5, .5);
	P.TextColor3 = Color3.new(1, 1, 1);
	P.TextSize = 10;
	P.Font = Enum.Font.SourceSans;
	P.TextStrokeTransparency = 0;
	P.Visible = false;
	P.ZIndex = 999;
	P.Parent = XY;
	local m = Instance.new("Frame");
	m.BorderSizePixel = 0;
	m.BackgroundColor3 = Color3.new(0, 0, 0);
	m.Visible = false;
	m.ZIndex = 999;
	m.Parent = XY;
	local E = Instance.new("Frame");
	E.BorderSizePixel = 0;
	E.BackgroundColor3 = Color3.new(1, 0, 0);
	E.Visible = false;
	E.ZIndex = 999;
	E.Parent = XY;
	local k = Instance.new("Frame");
	k.BorderSizePixel = 0;
	k.BackgroundColor3 = Color3.new(1, 0, 0);
	k.Visible = false;
	k.ZIndex = 999;
	k.Parent = XY;
	pcall(function()
		local v = Instance.new("UICorner");
		v.CornerRadius = UDim.new(1, 0);
		v.Parent = k;
	end);
	local Q = {
			fullBox = d,
			fullStroke = G,
			corners = A,
			name = R,
			dist = P,
			healthBg = m,
			healthFill = E,
			headDot = k,
		};
	LY[v] = Q;
	return Q;
end;
local function cY()
	if not r.ESP then
		aY();
		return;
	end;
	if not o or not o.Parent then
		return;
	end;
	local v = o.ViewportSize;
	if v.X < 1 or v.Y < 1 then
		return;
	end;
	local G = tick();
	if G - lY >= 1 then
		lY = G;
		aY();
	end;
	local A = {};
	for v, d in ipairs(d:GetPlayers()) do
		A[d] = true;
	end;
	for v in pairs(LY) do
		if not A[v] then
			YY(v);
		end;
	end;
	local R = h();
	local P = mY(K) and (mY(K)):FindFirstChild("HumanoidRootPart");
	local m = {};
	for v, d in ipairs(d:GetPlayers()) do
		if d ~= K and (kY(d) and EY(d)) then
			m[d] = true;
			local v = mY(d);
			local G = v and ((v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso")));
			local A = v and v:FindFirstChild("Head");
			local E = v and v:FindFirstChildOfClass("Humanoid");
			if not G or not A then
				YY(d);
				continue;
			end;
			local k = BY(d);
			local Q, K = o:WorldToViewportPoint(G.Position);
			local V, i = o:WorldToViewportPoint(A.Position + Vector3.new(0, 1.1, 0));
			local O, X = o:WorldToViewportPoint(G.Position - Vector3.new(0, 2.8, 0));
			if not ((Q and (V and (K and (i and (Q.Z > 0 and V.Z > 0)))))) then
				k.fullBox.Visible = false;
				k.name.Visible = false;
				k.dist.Visible = false;
				k.healthBg.Visible = false;
				k.healthFill.Visible = false;
				k.headDot.Visible = false;
				for v = 1, 8, 1 do
					if k.corners[v] then
						k.corners[v].Visible = false;
					end;
				end;
				continue;
			end;
			local L = O and O.Y or Q.Y + 2.8;
			local l = math.max(math.abs(L - V.Y), 10);
			local b = math.clamp(l / 1.85, 8, 120);
			local a = Q.X - b / 2;
			local Y = V.Y;
			if r.ShowBoxes and ((r.BoxStyle == "Full" or r.BoxStyle == "Both")) then
				k.fullBox.Size = UDim2.new(0, b, 0, l);
				k.fullBox.Position = UDim2.new(0, a, 0, Y);
				k.fullBox.Visible = true;
				if k.fullStroke then
					k.fullStroke.Color = R;
				end;
			else
				k.fullBox.Visible = false;
			end;
			if r.ShowBoxes and ((r.BoxStyle == "Corner" or r.BoxStyle == "Both")) then
				local v = math.clamp(b * .22, 4, 10);
				local d = k.corners;
				d[1].Size = UDim2.new(0, v, 0, 2);
				d[1].Position = UDim2.new(0, a, 0, Y);
				d[2].Size = UDim2.new(0, 2, 0, v);
				d[2].Position = UDim2.new(0, a, 0, Y);
				d[3].Size = UDim2.new(0, v, 0, 2);
				d[3].Position = UDim2.new(0, (a + b) - v, 0, Y);
				d[4].Size = UDim2.new(0, 2, 0, v);
				d[4].Position = UDim2.new(0, (a + b) - 2, 0, Y);
				d[5].Size = UDim2.new(0, v, 0, 2);
				d[5].Position = UDim2.new(0, a, 0, (Y + l) - 2);
				d[6].Size = UDim2.new(0, 2, 0, v);
				d[6].Position = UDim2.new(0, a, 0, (Y + l) - v);
				d[7].Size = UDim2.new(0, v, 0, 2);
				d[7].Position = UDim2.new(0, (a + b) - v, 0, (Y + l) - 2);
				d[8].Size = UDim2.new(0, 2, 0, v);
				d[8].Position = UDim2.new(0, (a + b) - 2, 0, (Y + l) - v);
				for v = 1, 8, 1 do
					if d[v] then
						d[v].BackgroundColor3 = R;
						d[v].Visible = true;
					end;
				end;
			else
				for v = 1, 8, 1 do
					if k.corners[v] then
						k.corners[v].Visible = false;
					end;
				end;
			end;
			if r.ShowNames then
				k.name.Text = d.DisplayName;
				k.name.Position = UDim2.new(0, Q.X, 0, V.Y - 16);
				k.name.TextColor3 = R;
				k.name.Visible = true;
			else
				k.name.Visible = false;
			end;
			if r.ShowDistance and P then
				k.dist.Text = math.floor(((G.Position - P.Position)).Magnitude) .. "m";
				k.dist.Position = UDim2.new(0, Q.X, 0, (Y + l) + 2);
				k.dist.TextColor3 = R;
				k.dist.Visible = true;
			else
				k.dist.Visible = false;
			end;
			if r.ShowHealth and E then
				local v = math.clamp(E.Health / math.max(E.MaxHealth, 1), 0, 1);
				k.healthBg.Size = UDim2.new(0, 3, 0, l);
				k.healthBg.Position = UDim2.new(0, a - 6, 0, Y);
				k.healthBg.Visible = true;
				local d = math.floor(l * v);
				k.healthFill.Size = UDim2.new(0, 2, 0, d);
				k.healthFill.Position = UDim2.new(0, a - 5.5, 0, (Y + l) - d);
				k.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - v)), 255 * v, 0);
				k.healthFill.Visible = true;
			else
				k.healthBg.Visible = false;
				k.healthFill.Visible = false;
			end;
			if r.ShowHeadDot then
				local v, d = o:WorldToViewportPoint(A.Position);
				if v and (d and v.Z > 0) then
					local d = math.clamp(b * .18, 3, 9);
					k.headDot.Size = UDim2.new(0, d, 0, d);
					k.headDot.Position = UDim2.new(0, v.X - d / 2, 0, v.Y - d / 2);
					k.headDot.BackgroundColor3 = R;
					k.headDot.Visible = true;
				else
					k.headDot.Visible = false;
				end;
			else
				k.headDot.Visible = false;
			end;
		end;
	end;
	for v in pairs(LY) do
		if not m[v] then
			YY(v);
		end;
	end;
end;
local function sY()
	aY();
	cY();
end;
local DY = {};
local function yY()
	for v, d in pairs(DY) do
		pcall(function()
			d:Destroy();
		end);
		DY[v] = nil;
	end;
end;
local function xY()
	if not r.Chams then
		yY();
		return;
	end;
	local v = h();
	local G = {};
	for d, A in ipairs(d:GetPlayers()) do
		if A ~= K and (kY(A) and EY(A)) then
			G[A] = true;
			local d = mY(A);
			if d then
				local G = DY[A];
				if not G or not G.Parent then
					G = Instance.new("Highlight");
					G.Name = "MoonChams";
					G.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					G.FillTransparency = .5;
					G.OutlineTransparency = 0;
					G.Parent = d;
					DY[A] = G;
				end;
				G.FillColor = v;
				G.OutlineColor = v;
				G.Enabled = true;
			end;
		end;
	end;
	for v, d in pairs(DY) do
		if not G[v] then
			pcall(function()
				d:Destroy();
			end);
			DY[v] = nil;
		end;
	end;
end;
d.PlayerRemoving:Connect(function(v)
	YY(v);
	pcall(function()
		if DY[v] then
			DY[v]:Destroy();
			DY[v] = nil;
		end;
	end);
end);
local function FY(v)
	v.CharacterRemoving:Connect(function()
		YY(v);
		pcall(function()
			if DY[v] then
				DY[v]:Destroy();
				DY[v] = nil;
			end;
		end);
	end);
	v.CharacterAdded:Connect(function()
		task.wait(.3);
		YY(v);
	end);
end;
d.PlayerAdded:Connect(FY);
for v, d in ipairs(d:GetPlayers()) do
	FY(d);
end;
local pY = false;
local function jY(v)
	if v == pY then
		return;
	end;
	pY = v;
	pcall(function()
		R.GlobalShadows = not v;
		if v then
			R.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for v, G in ipairs(workspace:GetDescendants()) do
				if G:IsA("BasePart") then
					local v = false;
					for d, A in ipairs(d:GetPlayers()) do
						if A.Character and G:IsDescendantOf(A.Character) then
							v = true;
							break;
						end;
					end;
					if not v then
						G.Material = Enum.Material.SmoothPlastic;
						G.CastShadow = false;
					end;
				elseif G:IsA("ParticleEmitter") or G:IsA("Trail") or G:IsA("Beam") then
					G.Enabled = false;
				end;
			end;
		end;
	end);
end;
local zY = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		zY = utf8.char(57344);
	end;
end);
F(.9, "Building UI...");
local NY = Instance.new("ScreenGui");
NY.Name = "OpSiegeUI";
NY.ResetOnSpawn = false;
NY.IgnoreGuiInset = true;
NY.DisplayOrder = 999;
NY.Parent = V;
local WY = Instance.new("Frame");
WY.Size = UDim2.new(0, math.min(540, o.ViewportSize.X - 20), 0, math.min(420, o.ViewportSize.Y - 50));
WY.Position = UDim2.new(.5, -WY.Size.X.Offset / 2, .5, -WY.Size.Y.Offset / 2);
WY.BackgroundColor3 = T;
WY.BackgroundTransparency = 0;
WY.BorderSizePixel = 0;
WY.Visible = false;
WY.Parent = NY;
(Instance.new("UICorner", WY)).CornerRadius = UDim.new(0, 12);
local rY = Instance.new("Frame");
rY.Size = UDim2.new(1, 0, 0, 40);
rY.BackgroundColor3 = H;
rY.BorderSizePixel = 0;
rY.Parent = WY;
(Instance.new("UICorner", rY)).CornerRadius = UDim.new(0, 12);
local qY = Instance.new("TextLabel");
qY.Size = UDim2.new(1, -40, 1, 0);
qY.Position = UDim2.new(0, 12, 0, 0);
qY.BackgroundTransparency = 1;
qY.Text = "MOON HUB  |  OPERATION SIEGE";
qY.TextColor3 = C;
qY.TextSize = 14;
qY.Font = u;
qY.TextXAlignment = Enum.TextXAlignment.Left;
qY.Parent = rY;
local SY = Instance.new("TextButton");
SY.Size = UDim2.new(0, 28, 0, 28);
SY.Position = UDim2.new(1, -34, .5, -14);
SY.BackgroundColor3 = Color3.fromRGB(50, 0, 0);
SY.Text = "X";
SY.TextColor3 = n;
SY.Font = u;
SY.TextSize = 14;
SY.Parent = rY;
(Instance.new("UICorner", SY)).CornerRadius = UDim.new(0, 6);
local fY = Instance.new("TextLabel");
fY.Size = UDim2.new(1, -16, 0, 18);
fY.Position = UDim2.new(0, 8, 0, 40);
fY.BackgroundTransparency = 1;
fY.Text = "Executor: " .. l;
fY.TextColor3 = n;
fY.TextSize = 11;
fY.Font = u;
fY.TextXAlignment = Enum.TextXAlignment.Left;
fY.Parent = WY;
local ZY = Instance.new("ScrollingFrame");
ZY.Size = UDim2.new(0, 100, 1, -66);
ZY.Position = UDim2.new(0, 8, 0, 60);
ZY.BackgroundColor3 = H;
ZY.BorderSizePixel = 0;
ZY.ScrollBarThickness = 2;
ZY.AutomaticCanvasSize = Enum.AutomaticSize.Y;
ZY.CanvasSize = UDim2.new(0, 0, 0, 0);
ZY.Parent = WY;
(Instance.new("UICorner", ZY)).CornerRadius = UDim.new(0, 8);
local IY = Instance.new("UIListLayout");
IY.Padding = UDim.new(0, 4);
IY.Parent = ZY;
local TY = Instance.new("UIPadding");
TY.PaddingTop = UDim.new(0, 6);
TY.PaddingLeft = UDim.new(0, 6);
TY.PaddingRight = UDim.new(0, 6);
TY.Parent = ZY;
local HY = Instance.new("Frame");
HY.Size = UDim2.new(1, -120, 1, -70);
HY.Position = UDim2.new(0, 114, 0, 62);
HY.BackgroundTransparency = 1;
HY.Parent = WY;
local JY, CY = {}, {};
local function nY(v)
	for d, G in pairs(JY) do
		G.Visible = (d == v);
	end;
	for d, G in pairs(CY) do
		G.BackgroundColor3 = (d == v) and Color3.fromRGB(50, 0, 0) or Color3.fromRGB(15, 15, 15);
		G.TextColor3 = (d == v) and I or n;
	end;
	e();
end;
local function uY(v)
	local d = Instance.new("ScrollingFrame");
	d.Size = UDim2.new(1, 0, 1, 0);
	d.BackgroundTransparency = 1;
	d.BorderSizePixel = 0;
	d.ScrollBarThickness = 3;
	d.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	d.CanvasSize = UDim2.new(0, 0, 0, 0);
	d.Visible = false;
	d.Parent = HY;
	local G = Instance.new("UIListLayout");
	G.Padding = UDim.new(0, 5);
	G.SortOrder = Enum.SortOrder.LayoutOrder;
	G.Parent = d;
	local A = Instance.new("UIPadding");
	A.PaddingBottom = UDim.new(0, 10);
	A.Parent = d;
	d:SetAttribute("O", 0);
	JY[v] = d;
	local R = Instance.new("TextButton");
	R.Size = UDim2.new(1, 0, 0, 28);
	R.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
	R.Text = v;
	R.TextColor3 = n;
	R.TextSize = 12;
	R.Font = u;
	R.Parent = ZY;
	(Instance.new("UICorner", R)).CornerRadius = UDim.new(0, 6);
	R.MouseButton1Click:Connect(function()
		nY(v);
	end);
	CY[v] = R;
	return d;
end;
local function hY(v)
	local d = ((v:GetAttribute("O") or 0)) + 1;
	v:SetAttribute("O", d);
	return d;
end;
local function eY(v, d)
	local G = Instance.new("TextLabel");
	G.LayoutOrder = hY(v);
	G.Size = UDim2.new(1, 0, 0, 16);
	G.BackgroundTransparency = 1;
	G.Text = string.upper(d);
	G.TextColor3 = I;
	G.TextSize = 11;
	G.Font = u;
	G.TextXAlignment = Enum.TextXAlignment.Left;
	G.Parent = v;
end;
local function gY(v, d, G)
	local A = Instance.new("Frame");
	A.LayoutOrder = hY(v);
	A.Size = UDim2.new(1, 0, 0, 32);
	A.BackgroundColor3 = J;
	A.BorderSizePixel = 0;
	A.Parent = v;
	(Instance.new("UICorner", A)).CornerRadius = UDim.new(0, 8);
	local R = Instance.new("TextLabel");
	R.Size = UDim2.new(1, -55, 1, 0);
	R.Position = UDim2.new(0, 10, 0, 0);
	R.BackgroundTransparency = 1;
	R.Text = d;
	R.TextColor3 = C;
	R.TextSize = 12;
	R.Font = u;
	R.TextXAlignment = Enum.TextXAlignment.Left;
	R.Parent = A;
	local P = Instance.new("TextButton");
	P.Size = UDim2.new(0, 40, 0, 18);
	P.Position = UDim2.new(1, -48, .5, -9);
	P.BackgroundColor3 = r[G] and I or Color3.fromRGB(40, 0, 0);
	P.Text = "";
	P.Parent = A;
	(Instance.new("UICorner", P)).CornerRadius = UDim.new(1, 0);
	local m = Instance.new("Frame");
	m.Size = UDim2.new(0, 14, 0, 14);
	m.Position = r[G] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	m.BackgroundColor3 = Color3.new(1, 1, 1);
	m.BorderSizePixel = 0;
	m.Parent = P;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(1, 0);
	P.MouseButton1Click:Connect(function()
		r[G] = not r[G];
		local v = r[G];
		P.BackgroundColor3 = v and I or Color3.fromRGB(40, 0, 0);
		m.Position = v and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if G == "ESP" then
			if v then
				sY();
			else
				aY();
			end;
		end;
		if G == "Chams" then
			if not v then
				yY();
			end;
		end;
		if G == "Potato" then
			jY(v);
		end;
		if G == "CustomFOV" then
			if v then
				GY();
			else
				pcall(function()
					o.FieldOfView = dY;
				end);
			end;
		end;
		if G == "MobileAim" and v then
			r.Aimbot = true;
		end;
		if G == "ScreenStretch" and (v and not S) then
			S = true;
		end;
		if G == "AntiCheatBypass" and v then
			p();
		end;
		if G == "ConsoleSilent" and v then
			z(true);
		end;
		f();
		e();
	end);
end;
local function tY(v, d, A, R, P, m)
	local E = Instance.new("Frame");
	E.LayoutOrder = hY(v);
	E.Size = UDim2.new(1, 0, 0, 46);
	E.BackgroundColor3 = J;
	E.BorderSizePixel = 0;
	E.Parent = v;
	(Instance.new("UICorner", E)).CornerRadius = UDim.new(0, 8);
	local k = Instance.new("TextLabel");
	k.Size = UDim2.new(.65, 0, 0, 16);
	k.Position = UDim2.new(0, 10, 0, 4);
	k.BackgroundTransparency = 1;
	k.Text = d;
	k.TextColor3 = C;
	k.TextSize = 11;
	k.Font = u;
	k.TextXAlignment = Enum.TextXAlignment.Left;
	k.Parent = E;
	local Q = Instance.new("TextLabel");
	Q.Size = UDim2.new(.3, -8, 0, 16);
	Q.Position = UDim2.new(.7, 0, 0, 4);
	Q.BackgroundTransparency = 1;
	Q.Text = tostring(r[A]);
	Q.TextColor3 = I;
	Q.TextSize = 11;
	Q.Font = u;
	Q.TextXAlignment = Enum.TextXAlignment.Right;
	Q.Parent = E;
	local o = Instance.new("TextButton");
	o.Size = UDim2.new(1, -20, 0, 8);
	o.Position = UDim2.new(0, 10, 0, 26);
	o.BackgroundColor3 = Color3.fromRGB(40, 0, 0);
	o.Text = "";
	o.Parent = E;
	(Instance.new("UICorner", o)).CornerRadius = UDim.new(1, 0);
	local K = Instance.new("Frame");
	K.Size = UDim2.new(math.clamp(((r[A] - R)) / math.max(P - R, .001), 0, 1), 0, 1, 0);
	K.BackgroundColor3 = I;
	K.BorderSizePixel = 0;
	K.Parent = o;
	(Instance.new("UICorner", K)).CornerRadius = UDim.new(1, 0);
	local function V(v)
		local d = math.clamp(((v - o.AbsolutePosition.X)) / math.max(o.AbsoluteSize.X, 1), 0, 1);
		local G = R + d * ((P - R));
		G = math.floor(G / m + .5) * m;
		G = math.clamp(G, R, P);
		r[A] = G;
		K.Size = UDim2.new(((G - R)) / math.max(P - R, .001), 0, 1, 0);
		Q.Text = tostring(G);
		if A == "CursorSize" then
			U.Size = UDim2.new(0, G, 0, G);
		end;
		if A == "FOVValue" and r.CustomFOV then
			GY();
		end;
		f();
	end;
	o.MouseButton1Down:Connect(function()
		local v, d;
		v = G.InputChanged:Connect(function(v)
				if v.UserInputType == Enum.UserInputType.MouseMovement or v.UserInputType == Enum.UserInputType.Touch then
					V(v.Position.X);
				end;
			end);
		d = G.InputEnded:Connect(function(G)
				if G.UserInputType == Enum.UserInputType.MouseButton1 or G.UserInputType == Enum.UserInputType.Touch then
					if v then
						v:Disconnect();
					end;
					if d then
						d:Disconnect();
					end;
				end;
			end);
		pcall(function()
			V((G:GetMouseLocation()).X);
		end);
	end);
end;
local function MY(v, d, G, A)
	local R = Instance.new("Frame");
	R.LayoutOrder = hY(v);
	R.Size = UDim2.new(1, 0, 0, 32);
	R.BackgroundColor3 = J;
	R.BorderSizePixel = 0;
	R.Parent = v;
	(Instance.new("UICorner", R)).CornerRadius = UDim.new(0, 8);
	local P = Instance.new("TextLabel");
	P.Size = UDim2.new(.4, 0, 1, 0);
	P.Position = UDim2.new(0, 10, 0, 0);
	P.BackgroundTransparency = 1;
	P.Text = d;
	P.TextColor3 = C;
	P.TextSize = 12;
	P.Font = u;
	P.TextXAlignment = Enum.TextXAlignment.Left;
	P.Parent = R;
	local m = 1;
	for v, d in ipairs(A) do
		if d == r[G] then
			m = v;
		end;
	end;
	local E = Instance.new("TextButton");
	E.Size = UDim2.new(.55, -12, 0, 22);
	E.Position = UDim2.new(.45, 0, .5, -11);
	E.BackgroundColor3 = Color3.fromRGB(40, 0, 0);
	E.Text = tostring(r[G]);
	E.TextColor3 = I;
	E.TextSize = 11;
	E.Font = u;
	E.Parent = R;
	(Instance.new("UICorner", E)).CornerRadius = UDim.new(0, 6);
	E.MouseButton1Click:Connect(function()
		m = m % #A + 1;
		r[G] = A[m];
		E.Text = A[m];
		if G == "CursorName" then
			vY(r.CursorName);
		end;
		f();
		e();
	end);
end;
local function UY(v, d, G, A)
	local R = Instance.new("Frame");
	R.LayoutOrder = hY(v);
	R.Size = UDim2.new(1, 0, 0, 52);
	R.BackgroundColor3 = J;
	R.BorderSizePixel = 0;
	R.Parent = v;
	(Instance.new("UICorner", R)).CornerRadius = UDim.new(0, 8);
	local P = Instance.new("TextLabel");
	P.Size = UDim2.new(1, -16, 0, 14);
	P.Position = UDim2.new(0, 10, 0, 4);
	P.BackgroundTransparency = 1;
	P.Text = d;
	P.TextColor3 = n;
	P.TextSize = 11;
	P.Font = u;
	P.TextXAlignment = Enum.TextXAlignment.Left;
	P.Parent = R;
	local m = Instance.new("TextBox");
	m.Size = UDim2.new(1, -20, 0, 22);
	m.Position = UDim2.new(0, 10, 0, 22);
	m.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	m.BorderSizePixel = 0;
	m.Text = tostring(r[G] or A or "");
	m.PlaceholderText = A or "";
	m.TextColor3 = C;
	m.TextSize = 12;
	m.Font = u;
	m.ClearTextOnFocus = false;
	m.Parent = R;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(0, 6);
	m.FocusLost:Connect(function()
		local v = m.Text;
		if not v or v == "" then
			v = A or "default";
			m.Text = v;
		end;
		r[G] = v;
		f();
	end);
end;
local function wY(v, d, G)
	local A = Instance.new("TextButton");
	A.LayoutOrder = hY(v);
	A.Size = UDim2.new(1, 0, 0, 30);
	A.BackgroundColor3 = Color3.fromRGB(50, 0, 0);
	A.Text = d;
	A.TextColor3 = I;
	A.TextSize = 12;
	A.Font = u;
	A.Parent = v;
	(Instance.new("UICorner", A)).CornerRadius = UDim.new(0, 8);
	A.MouseButton1Click:Connect(function()
		G();
		e();
	end);
end;
local vK = uY("Combat");
local dK = uY("Player");
local GK = uY("Staff");
local AK = uY("Mobile");
local RK = uY("Visuals");
local PK = uY("Config");
eY(vK, "Aimbot");
gY(vK, "Aimbot", "Aimbot");
MY(vK, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
MY(vK, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
tY(vK, "FOV", "AimFOV", 40, 350, 1);
tY(vK, "Smooth", "AimSmooth", .1, 1, .05);
gY(vK, "Show FOV", "ShowFOV");
gY(vK, "Wall Check", "WallCheck");
gY(vK, "Team Check", "TeamCheck");
gY(vK, "Prediction", "Prediction");
tY(vK, "Predict", "PredictAmount", 0, .35, .01);
eY(vK, "Camera FOV");
gY(vK, "Custom FOV", "CustomFOV");
tY(vK, "FOV Value", "FOVValue", 40, 120, 1);
eY(dK, "Move");
gY(dK, "Speed", "Speed");
tY(dK, "Speed Value", "SpeedValue", 16, 80, 1);
gY(dK, "Noclip", "Noclip");
gY(dK, "Anti-Bow", "AntiBow");
eY(dK, "Screen Stretch");
gY(dK, "Screen Stretch", "ScreenStretch");
tY(dK, "Stretch Amount", "StretchAmount", .3, 1, .01);
eY(GK, "Staff");
gY(GK, "Detect", "StaffDetect");
gY(GK, "Leave", "StaffLeave");
eY(AK, "Mobile Aim");
gY(AK, "Mobile Aim ON", "MobileAim");
tY(AK, "Smooth", "MobileSmooth", .1, 1, .05);
tY(AK, "FOV", "MobileFOV", 40, 350, 1);
gY(AK, "Show FOV", "MobileShowFOV");
eY(RK, "ESP");
gY(RK, "ESP Enabled", "ESP");
gY(RK, "Boxes", "ShowBoxes");
MY(RK, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
gY(RK, "Names", "ShowNames");
gY(RK, "Distance", "ShowDistance");
gY(RK, "Health", "ShowHealth");
gY(RK, "Head Dot", "ShowHeadDot");
gY(RK, "Chams ESP", "Chams");
wY(RK, "Force Refresh ESP", sY);
eY(RK, "ESP Color");
gY(RK, "RGB ESP", "RGBESP");
tY(RK, "Red", "ESPColorR", 0, 255, 1);
tY(RK, "Green", "ESPColorG", 0, 255, 1);
tY(RK, "Blue", "ESPColorB", 0, 255, 1);
eY(RK, "Radar");
gY(RK, "Radar", "Radar");
tY(RK, "Radar Size", "RadarSize", 80, 220, 5);
tY(RK, "Radar Range", "RadarRange", 50, 400, 10);
eY(RK, "Cursor");
MY(RK, "Cursor", "CursorName", t);
tY(RK, "Cursor Size", "CursorSize", 8, 128, 1);
for v, d in ipairs(g) do
	wY(RK, d.Name, function()
		vY(d.Name);
		f();
	end);
end;
eY(PK, "Config");
UY(PK, "Name", "ConfigName", "default");
wY(PK, "Save", f);
wY(PK, "Load", function()
	Z();
end);
gY(PK, "FPS + MS", "ShowPerf");
gY(PK, "Potato", "Potato");
gY(PK, "Anti-Cheat Bypass", "AntiCheatBypass");
gY(PK, "Console Silent", "ConsoleSilent");
eY(PK, "Status");
local mK = Instance.new("TextLabel");
mK.LayoutOrder = hY(PK);
mK.Size = UDim2.new(1, 0, 0, 40);
mK.BackgroundColor3 = J;
mK.BorderSizePixel = 0;
mK.Text = "Executor: " .. l;
mK.TextColor3 = C;
mK.TextSize = 12;
mK.Font = u;
mK.Parent = PK;
(Instance.new("UICorner", mK)).CornerRadius = UDim.new(0, 8);
nY("Combat");
local EK = Instance.new("TextButton");
EK.Size = UDim2.new(0, 60, 0, 40);
EK.Position = UDim2.new(1, -70, 0, 10);
EK.BackgroundColor3 = Color3.fromRGB(50, 0, 0);
EK.Text = "OPEN";
EK.TextColor3 = I;
EK.TextSize = 14;
EK.Font = u;
EK.Visible = true;
EK.Parent = NY;
(Instance.new("UICorner", EK)).CornerRadius = UDim.new(0, 8);
EK.MouseButton1Click:Connect(function()
	WY.Visible = true;
	EK.Visible = false;
end);
local function kK()
	EK.Visible = not WY.Visible;
end;
local QK, oK, KK;
rY.InputBegan:Connect(function(v)
	if v.UserInputType == Enum.UserInputType.MouseButton1 or v.UserInputType == Enum.UserInputType.Touch then
		QK = true;
		oK = v.Position;
		KK = WY.Position;
	end;
end);
rY.InputEnded:Connect(function(v)
	if v.UserInputType == Enum.UserInputType.MouseButton1 or v.UserInputType == Enum.UserInputType.Touch then
		QK = false;
	end;
end);
G.InputChanged:Connect(function(v)
	if QK and ((v.UserInputType == Enum.UserInputType.MouseMovement or v.UserInputType == Enum.UserInputType.Touch)) then
		local d = v.Position - oK;
		WY.Position = UDim2.new(KK.X.Scale, KK.X.Offset + d.X, KK.Y.Scale, KK.Y.Offset + d.Y);
	end;
end);
SY.MouseButton1Click:Connect(function()
	WY.Visible = false;
	kK();
end);
G.InputBegan:Connect(function(v)
	if v.KeyCode == Enum.KeyCode.RightControl or v.KeyCode == Enum.KeyCode.LeftControl then
		WY.Visible = not WY.Visible;
		kK();
		e();
	end;
end);
local VK = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local iK = false;
local OK;
local function XK(v)
	local d = VK[r.AimKey] or Enum.UserInputType.MouseButton2;
	local G = tostring(d);
	if string.find(G, "MouseButton", 1, true) then
		return v.UserInputType == d;
	end;
	if string.find(G, "KeyCode", 1, true) then
		return v.KeyCode == d;
	end;
	return false;
end;
G.InputBegan:Connect(function(v, d)
	if not r.Aimbot or r.MobileAim then
		return;
	end;
	if not XK(v) then
		return;
	end;
	if r.AimMode == "Hold" then
		iK = true;
	elseif r.AimMode == "Toggle" then
		iK = not iK;
	end;
end);
G.InputEnded:Connect(function(v)
	if r.AimMode == "Hold" and XK(v) then
		iK = false;
	end;
end);
local function LK(v)
	if OK then
		OK:Disconnect();
		OK = nil;
	end;
	if not v then
		local v = mY(K);
		if v then
			for v, d in ipairs(v:GetDescendants()) do
				if d:IsA("BasePart") then
					d.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	OK = A.Stepped:Connect(function()
			local v = mY(K);
			if not v then
				return;
			end;
			for v, d in ipairs(v:GetDescendants()) do
				if d:IsA("BasePart") then
					d.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if r.AntiBow then
			pcall(function()
				local v = mY(K);
				if not v then
					return;
				end;
				local d = v:FindFirstChild("HumanoidRootPart");
				local G = v:FindFirstChildOfClass("Humanoid");
				if not d or not G or G.Health <= 0 then
					return;
				end;
				local A = G:GetState();
				if A == Enum.HumanoidStateType.Jumping or A == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if d.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local R, P = d.CFrame:ToOrientation();
				d.CFrame = CFrame.new(d.Position) * CFrame.Angles(0, P, 0);
			end);
		end;
	end;
end);
local lK = 12471718;
local bK = {};
task.spawn(function()
	while true do
		task.wait(2);
		if r.StaffDetect then
			for v, d in ipairs(d:GetPlayers()) do
				if d ~= K then
					local v, G = pcall(function()
							return d:GetRankInGroup(lK);
						end);
					if v and type(G) == "number" then
						if G >= 51 then
							if not bK[d.UserId] then
								bK[d.UserId] = true;
								if r.StaffLeave then
									pcall(function()
										K:Kick("Staff");
									end);
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local aK = Instance.new("ScreenGui");
aK.Name = "OpSiegeFOVGui";
aK.ResetOnSpawn = false;
aK.IgnoreGuiInset = true;
aK.DisplayOrder = 99999;
aK.Parent = O;
local YK = Instance.new("Frame");
YK.AnchorPoint = Vector2.new(.5, .5);
YK.Size = UDim2.new(0, 300, 0, 300);
YK.Position = UDim2.new(.5, 0, .5, 0);
YK.BackgroundTransparency = 1;
YK.BorderSizePixel = 0;
YK.Visible = false;
YK.ZIndex = 999;
YK.Parent = aK;
pcall(function()
	(Instance.new("UICorner", YK)).CornerRadius = UDim.new(1, 0);
end);
local BK;
pcall(function()
	BK = Instance.new("UIStroke");
	BK.Color = Color3.new(1, 0, 0);
	BK.Thickness = 1.5;
	BK.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	BK.Parent = YK;
end);
local cK, sK, DK, yK = 0, tick(), 0, 0;
A.Heartbeat:Connect(function()
	local v = mY(K);
	if v then
		local d = v:FindFirstChildOfClass("Humanoid");
		if r.Speed and (d and d.Health > 0) then
			d.WalkSpeed = r.SpeedValue or 24;
		end;
		if r.Noclip then
			if not OK then
				LK(true);
			end;
		elseif OK then
			LK(false);
		end;
	end;
	jY(r.Potato == true);
end);
A.RenderStepped:Connect(function()
	pcall(function()
		cK = cK + 1;
		if tick() - sK >= 1 then
			DK = cK;
			cK = 0;
			sK = tick();
		end;
		if U.Visible then
			local v = G:GetMouseLocation();
			U.Position = UDim2.new(0, v.X, 0, v.Y);
		end;
		if r.CustomFOV then
			GY();
		end;
		AY = false;
		local v, d, A = false, r.AimSmooth or .95, r.AimFOV or 150;
		if r.MobileAim then
			v = true;
			d = r.MobileSmooth or .9;
			A = r.MobileFOV or 160;
		elseif r.Aimbot then
			v = iK or r.AimMode == "Always";
			d = r.AimSmooth or .95;
			A = r.AimFOV or 150;
		end;
		if v then
			local v, G = OY(A, true);
			if G then
				AY = true;
				if d >= .98 then
					o.CFrame = CFrame.new(o.CFrame.Position, G);
				else
					o.CFrame = o.CFrame:Lerp(CFrame.new(o.CFrame.Position, G), math.clamp(d, .1, 1));
				end;
				PY(G);
			end;
		end;
		RY();
		pcall(cY);
		pcall(xY);
		local R, P = false, r.AimFOV or 150;
		if r.MobileAim then
			R = r.MobileShowFOV;
			P = r.MobileFOV or 160;
		else
			R = r.ShowFOV;
			P = r.AimFOV or 150;
		end;
		YK.Size = UDim2.new(0, P * 2, 0, P * 2);
		YK.Position = UDim2.new(.5, 0, .5, 0);
		YK.Visible = R;
		if BK then
			if r.RGBESP then
				BK.Color = h();
			end;
		end;
	end);
end);
task.spawn(function()
	while true do
		task.wait(15);
		f();
	end;
end);
if r.CursorName and r.CursorName ~= "Off" then
	vY(r.CursorName);
end;
if r.CustomFOV then
	GY();
end;
if r.AntiCheatBypass then
	p();
end;
if r.ConsoleSilent then
	z(true);
end;
F(1, "Done");
task.wait(.35);
pcall(function()
	b:Destroy();
end);
WY.Visible = true;
EK.Visible = false;
print("[Moon Hub] OPERATION SIEGE | " .. l);
