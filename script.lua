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
local r = getgenv or function()
		return _G;
	end;
local P = game:GetService("Players");
local n = game:GetService("UserInputService");
local T = game:GetService("RunService");
local J = game:GetService("Lighting");
local Z = game:GetService("Stats");
local W = game:GetService("HttpService");
local x = game:GetService("TweenService");
local d = game:GetService("ReplicatedStorage");
local v = game:GetService("VirtualInputManager");
local L = workspace.CurrentCamera;
local f = P.LocalPlayer or P.PlayerAdded:Wait();
local a = f:WaitForChild("PlayerGui", 60);
if not a then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function O()
	if gethui then
		local r, P = pcall(function()
				return gethui();
			end);
		if r and P then
			return P;
		end;
	end;
	return game:GetService("CoreGui");
end;
local D = O();
pcall(function()
	for r, P in ipairs({
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
		local n = a:FindFirstChild(P);
		if n then
			n:Destroy();
		end;
		local T = D:FindFirstChild(P);
		if T then
			T:Destroy();
		end;
	end;
end);
task.wait(.05);
local z;
pcall(function()
	z = f:GetMouse();
end);
local function I()
	local P = "Unknown";
	pcall(function()
		if identifyexecutor then
			local r, n = identifyexecutor();
			P = tostring(r or "Unknown");
			if n then
				P = P .. (" " .. tostring(n));
			end;
		elseif getexecutorname then
			P = tostring(getexecutorname());
		elseif syn and syn.request then
			P = "Synapse";
		elseif fluxus then
			P = "Fluxus";
		elseif KRNL_LOADED then
			P = "Krnl";
		elseif is_sirhurt_closure then
			P = "Sirhurt";
		elseif pebc_execute then
			P = "Parallel";
		elseif SecureDelta or (r()).SecureDelta then
			P = "Delta";
		elseif (r()).drew or (r()).IS_COCO_LOADED then
			P = "Coco";
		elseif (r()).X.X or (r()).WXApple then
			P = "Wave";
		elseif (r()).IsElectron then
			P = "Electron";
		elseif (r()).executor_name then
			P = tostring((r()).executor_name);
		end;
	end);
	if P == "Unknown" or P == "" then
		pcall(function()
			if (r()).OPIUMWARE or (r()).Opiumware then
				P = "Opiumware";
			end;
		end);
	end;
	return P;
end;
local w = I();
local g = Instance.new("ScreenGui");
g.Name = "OpSiegeLoadUI";
g.ResetOnSpawn = false;
g.IgnoreGuiInset = true;
g.DisplayOrder = 9999;
g.Parent = a;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if g and g.Parent then
			g:Destroy();
		end;
	end);
end);
local U = Instance.new("Frame");
U.Size = UDim2.new(1, 0, 1, 0);
U.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
U.BorderSizePixel = 0;
U.Parent = g;
local j = Instance.new("Frame");
j.Size = UDim2.new(0, 320, 0, 160);
j.Position = UDim2.new(.5, -160, .5, -80);
j.BackgroundColor3 = Color3.fromRGB(10, 10, 10);
j.BorderSizePixel = 0;
j.Parent = U;
(Instance.new("UICorner", j)).CornerRadius = UDim.new(0, 14);
local t = Instance.new("TextLabel");
t.Size = UDim2.new(1, -20, 0, 28);
t.Position = UDim2.new(0, 10, 0, 14);
t.BackgroundTransparency = 1;
t.Text = "MOON HUB";
t.TextColor3 = Color3.fromRGB(255, 0, 0);
t.TextSize = 20;
t.Font = Enum.Font.GothamBold;
t.Parent = j;
local q = Instance.new("TextLabel");
q.Size = UDim2.new(1, -20, 0, 18);
q.Position = UDim2.new(0, 10, 0, 42);
q.BackgroundTransparency = 1;
q.Text = "operation siege";
q.TextColor3 = Color3.fromRGB(180, 180, 180);
q.TextSize = 12;
q.Font = Enum.Font.Gotham;
q.Parent = j;
local o = Instance.new("TextLabel");
o.Size = UDim2.new(1, -20, 0, 18);
o.Position = UDim2.new(0, 10, 0, 70);
o.BackgroundTransparency = 1;
o.Text = "Starting...";
o.TextColor3 = Color3.fromRGB(255, 255, 255);
o.TextSize = 12;
o.Font = Enum.Font.Gotham;
o.TextXAlignment = Enum.TextXAlignment.Left;
o.Parent = j;
local h = Instance.new("Frame");
h.Size = UDim2.new(1, -24, 0, 10);
h.Position = UDim2.new(0, 12, 0, 100);
h.BackgroundColor3 = Color3.fromRGB(40, 0, 0);
h.BorderSizePixel = 0;
h.Parent = j;
(Instance.new("UICorner", h)).CornerRadius = UDim.new(1, 0);
local C = Instance.new("Frame");
C.Size = UDim2.new(0, 0, 1, 0);
C.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
C.BorderSizePixel = 0;
C.Parent = h;
(Instance.new("UICorner", C)).CornerRadius = UDim.new(1, 0);
local F = Instance.new("TextLabel");
F.Size = UDim2.new(1, -20, 0, 32);
F.Position = UDim2.new(0, 10, 0, 118);
F.BackgroundTransparency = 1;
F.Text = "Executor: " .. w;
F.TextColor3 = Color3.fromRGB(180, 180, 180);
F.TextSize = 11;
F.Font = Enum.Font.Gotham;
F.TextXAlignment = Enum.TextXAlignment.Left;
F.TextYAlignment = Enum.TextYAlignment.Top;
F.Parent = j;
local function V(r, P)
	r = math.clamp(r, 0, 1);
	pcall(function()
		o.Text = P or o.Text;
		(x:Create(C, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(r, 0, 1, 0) })):Play();
	end);
end;
V(.08, "Detecting executor...");
task.wait(.2);
V(.2, "Executor: " .. w);
task.wait(.15);
V(.35, "Loading config...");
task.wait(.1);
local function e()
	pcall(function()
		for r, P in ipairs(game:GetDescendants()) do
			if P:IsA("Script") or P:IsA("LocalScript") then
				local r = (P.Name:lower()):gsub("%s+", "");
				if r:find("anticheat") or r:find("antiexploit") or r:find("cheat") or r:find("detect") or r:find("ban") or r:find("anticheats") or r:find("guard") or r:find("security") then
					pcall(function()
						P.Disabled = true;
					end);
				end;
			end;
		end;
	end);
end;
task.spawn(e);
local E = false;
local function c(r)
	if r and not E then
		E = true;
		local r, P, n = print, warn, error;
		print = function()
 
			end;
		warn = function()
 
			end;
		error = function()
 
			end;
		task.spawn(function()
			task.wait(1);
			print = r;
			warn = P;
			error = n;
			E = false;
		end);
	end;
end;
local function p(r, P)
	pcall(function()
		if writefile then
			writefile(r, P);
		end;
	end);
end;
local function l(r)
	local P, n = pcall(function()
			if isfile and (isfile(r) and readfile) then
				return readfile(r);
			end;
		end);
	return P and n or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
(r()).MoonHubState = (r()).MoonHubState or {};
local s = (r()).MoonHubState;
local B = {
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
		GadgetESP = false,
		BombESP = false,
	};
for r, P in pairs(B) do
	if s[r] == nil then
		s[r] = P;
	end;
end;
s.NoRecoil = nil;
s.NoJumpCooldown = nil;
s.KillAuraDelay = nil;
s.HideFromRecord = nil;
if type(s.CursorSize) ~= "number" then
	s.CursorSize = 32;
end;
if type(s.AimSmooth) ~= "number" then
	s.AimSmooth = .95;
end;
if type(s.FOVValue) ~= "number" then
	s.FOVValue = 90;
end;
s.StretchAmount = math.clamp(tonumber(s.StretchAmount) or .53, .3, 1);
if s.AntiCheatBypass == nil then
	s.AntiCheatBypass = true;
end;
if s.ConsoleSilent == nil then
	s.ConsoleSilent = true;
end;
if s.GadgetESP == nil then
	s.GadgetESP = false;
end;
if s.BombESP == nil then
	s.BombESP = false;
end;
local N = false;
task.delay(2.5, function()
	N = true;
end);
local function b()
	local r = (tostring(s.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if r == "" then
		r = "default";
	end;
	s.ConfigName = r;
	s.NoRecoil = nil;
	s.NoJumpCooldown = nil;
	s.KillAuraDelay = nil;
	s.HideFromRecord = nil;
	s.StretchAmount = math.clamp(tonumber(s.StretchAmount) or .53, .3, 1);
	p("MoonHub/Configs/" .. (r .. ".json"), W:JSONEncode(s));
	p("MoonHub/OperationSiege.json", W:JSONEncode(s));
end;
local function H()
	local r = (tostring(s.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local P = l("MoonHub/Configs/" .. (r .. ".json")) or l("MoonHub/OperationSiege.json");
	if P then
		pcall(function()
			local r = W:JSONDecode(P);
			if type(r) == "table" then
				for r, P in pairs(r) do
					s[r] = P;
				end;
			end;
		end);
	end;
	s.NoRecoil = nil;
	s.NoJumpCooldown = nil;
	s.KillAuraDelay = nil;
	s.HideFromRecord = nil;
	s.StretchAmount = math.clamp(tonumber(s.StretchAmount) or .53, .3, 1);
	if not N then
		local r = s.ScreenStretch == true;
		s.ScreenStretch = false;
		task.delay(2.6, function()
			if r then
				s.ScreenStretch = true;
			end;
			N = true;
		end);
	end;
	if s.GadgetESP == nil then
		s.GadgetESP = false;
	end;
	if s.BombESP == nil then
		s.BombESP = false;
	end;
end;
pcall(H);
V(.65, "Loading ScreenGui ESP...");
local A = Color3.fromRGB(255, 0, 0);
local K = Color3.fromRGB(0, 0, 0);
local u = Color3.fromRGB(8, 8, 8);
local M = Color3.fromRGB(12, 12, 12);
local k = Color3.fromRGB(255, 255, 255);
local G = Color3.fromRGB(180, 180, 180);
local i = Enum.Font.Gotham;
local function m()
	if s.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(s.ESPColorR) or 255, 0, 255), math.clamp(tonumber(s.ESPColorG) or 0, 0, 255), math.clamp(tonumber(s.ESPColorB) or 0, 0, 255));
end;
local function Y()
	pcall(function()
		n.MouseBehavior = Enum.MouseBehavior.Default;
		n.MouseIconEnabled = true;
	end);
end;
local S = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local X = {};
for r, P in ipairs(S) do
	X[r] = P.Name;
end;
local y = Instance.new("ScreenGui");
y.Name = "MoonCursorUI";
y.ResetOnSpawn = false;
y.IgnoreGuiInset = true;
y.DisplayOrder = 10000;
y.Parent = a;
local R = Instance.new("ImageLabel");
R.BackgroundTransparency = 1;
R.AnchorPoint = Vector2.new(.5, .5);
R.Size = UDim2.new(0, 32, 0, 32);
R.Visible = false;
R.ZIndex = 100;
R.Parent = y;
local function Q(r)
	local P = a:FindFirstChild("Crosshair");
	if not P then
		return;
	end;
	pcall(function()
		if P:IsA("ScreenGui") then
			P.Enabled = r;
		end;
		P.Visible = r;
		for P, n in ipairs(P:GetDescendants()) do
			if n:IsA("GuiObject") then
				n.Visible = r;
			end;
		end;
	end);
end;
local function rE(r)
	r = r or s.CursorName or "Off";
	s.CursorName = r;
	local P = S[1];
	for n, T in ipairs(S) do
		if T.Name == r then
			P = T;
			break;
		end;
	end;
	Q(false);
	R.Visible = false;
	local T = math.clamp(tonumber(s.CursorSize) or 32, 8, 128);
	R.Size = UDim2.new(0, T, 0, T);
	if not P.Id or P.Name == "Off" then
		pcall(function()
			if z then
				z.Icon = "";
			end;
			n.MouseIconEnabled = true;
		end);
		return;
	end;
	if P.Id == "GAME" then
		Q(true);
		pcall(function()
			if z then
				z.Icon = "rbxassetid://0";
			end;
			n.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		n.MouseIconEnabled = false;
		if z then
			z.Icon = "rbxassetid://0";
		end;
		R.Image = "rbxassetid://" .. tostring(P.Id);
		R.Visible = true;
	end);
end;
local PE = 70;
pcall(function()
	PE = L.FieldOfView;
end);
local function nE()
	if not s.CustomFOV then
		return;
	end;
	local r = math.clamp(tonumber(s.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(L.FieldOfView - r) > .5 then
			L.FieldOfView = r;
		end;
	end);
end;
local TE = false;
local function JE()
	if not N then
		return;
	end;
	if not s.ScreenStretch then
		return;
	end;
	if TE then
		return;
	end;
	if not L or not L.Parent then
		return;
	end;
	local r = math.clamp(tonumber(s.StretchAmount) or .53, .3, 1);
	if r >= .995 then
		return;
	end;
	pcall(function()
		local P = L.CFrame;
		if P then
			L.CFrame = P * CFrame.new(0, 0, 0, 1, 0, 0, 0, r, 0, 0, 0, 1);
		end;
	end);
end;
local function ZE(r)
	local P = f.Character;
	if not P then
		return;
	end;
	local n = P:FindFirstChild("HumanoidRootPart");
	if not n or not r then
		return;
	end;
	pcall(function()
		local P = n.Position;
		n.CFrame = CFrame.new(P, Vector3.new(r.X, P.Y, r.Z));
	end);
end;
local function WE(r)
	if not r then
		return nil;
	end;
	local P, n = pcall(function()
			return r.Character;
		end);
	return P and n or nil;
end;
local function xE(r)
	local P = WE(r);
	if not P then
		return false;
	end;
	local n = P:FindFirstChildOfClass("Humanoid");
	return n ~= nil and n.Health > 0;
end;
local function dE(r)
	if not r or r == f then
		return false;
	end;
	if not s.TeamCheck then
		return true;
	end;
	local P, n = f.Team, r.Team;
	if P and n then
		return P ~= n;
	end;
	return true;
end;
local vE = {
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
local function LE(r, P)
	for n = 1, #P, 1 do
		if string.find(r, P[n], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function fE(r)
	if not r or not r:IsA("BasePart") then
		return true;
	end;
	local P = string.lower(r.Name or "");
	local n = string.lower(r:GetFullName() or "");
	local T = string.lower(tostring(r.Material));
	if string.find(P, "glass", 1, true) or string.find(T, "glass", 1, true) then
		return true;
	end;
	if r.Transparency >= .7 then
		return true;
	end;
	if string.find(P, "door", 1, true) or string.find(n, "door", 1, true) then
		if string.find(P, "wood", 1, true) or string.find(n, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(P, "window", 1, true) then
		return true;
	end;
	if r.CanCollide == false and r.Transparency >= .25 then
		return true;
	end;
	if LE(P, vE) or LE(n, vE) then
		return false;
	end;
	return false;
end;
local function aE(r)
	if not s.WallCheck then
		return true;
	end;
	local P = WE(r);
	local n = P and P:FindFirstChild("Head");
	if not n then
		return false;
	end;
	local T = WE(f);
	local J = L.CFrame.Position + L.CFrame.LookVector * .8;
	local Z = n.Position;
	local W = Z - J;
	local x = W.Magnitude;
	if x < 1.5 then
		return true;
	end;
	local d = { L };
	if T then
		table.insert(d, T);
	end;
	if P then
		table.insert(d, P);
	end;
	local v = RaycastParams.new();
	v.FilterType = Enum.RaycastFilterType.Exclude;
	v.FilterDescendantsInstances = d;
	v.IgnoreWater = true;
	local a, O, D = 0, J, W.Unit;
	for r = 1, 12, 1 do
		local n = x - a;
		if n <= .15 then
			return true;
		end;
		local T = workspace:Raycast(O, D * n, v);
		if not T then
			return true;
		end;
		if T.Instance and (P and T.Instance:IsDescendantOf(P)) then
			return true;
		end;
		if fE(T.Instance) then
			table.insert(d, T.Instance);
			v.FilterDescendantsInstances = d;
			local r = ((T.Position - O)).Magnitude;
			O = T.Position + D * .15;
			a = (a + r) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function OE(r, P)
	if not s.Prediction or not r then
		return r.Position;
	end;
	local n = P and ((P:FindFirstChild("HumanoidRootPart") or P:FindFirstChild("Torso")));
	local T = Vector3.zero;
	if n then
		pcall(function()
			T = n.AssemblyLinearVelocity;
		end);
	end;
	return r.Position + T * ((tonumber(s.PredictAmount) or .12));
end;
local function DE(r, n)
	local T, J, Z = nil, nil, r;
	local W = L.ViewportSize / 2;
	for r, P in ipairs(P:GetPlayers()) do
		if P ~= f and (dE(P) and xE(P)) then
			local r = WE(P);
			local x = r and r:FindFirstChild("Head");
			if x then
				local d = OE(x, r);
				local v, f = L:WorldToViewportPoint(d);
				if f and v.Z > 0 then
					local r = ((Vector2.new(v.X, v.Y) - W)).Magnitude;
					if r < Z and (((not n) or aE(P))) then
						Z = r;
						T = P;
						J = d;
					end;
				end;
			end;
		end;
	end;
	return T, J;
end;
local zE = Instance.new("ScreenGui");
zE.Name = "OpSiegeESPGui";
zE.ResetOnSpawn = false;
zE.IgnoreGuiInset = true;
zE.DisplayOrder = 99999;
zE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
zE.Parent = D;
local IE = {};
local wE = 0;
local function gE(r)
	if not r then
		return;
	end;
	pcall(function()
		if r.fullBox then
			r.fullBox:Destroy();
		end;
	end);
	pcall(function()
		if r.fullStroke then
			r.fullStroke:Destroy();
		end;
	end);
	pcall(function()
		if r.name then
			r.name:Destroy();
		end;
	end);
	pcall(function()
		if r.dist then
			r.dist:Destroy();
		end;
	end);
	pcall(function()
		if r.healthBg then
			r.healthBg:Destroy();
		end;
	end);
	pcall(function()
		if r.healthFill then
			r.healthFill:Destroy();
		end;
	end);
	pcall(function()
		if r.headDot then
			r.headDot:Destroy();
		end;
	end);
	if r.corners then
		for P = 1, #r.corners, 1 do
			local n = r.corners[P];
			pcall(function()
				if n then
					n:Destroy();
				end;
			end);
			r.corners[P] = nil;
		end;
	end;
end;
local function UE()
	for r, P in pairs(IE) do
		gE(P);
		IE[r] = nil;
	end;
	pcall(function()
		for r, P in ipairs(zE:GetChildren()) do
			pcall(function()
				if P then
					P:Destroy();
				end;
			end);
		end;
	end);
	IE = {};
end;
local function jE(r)
	local P = IE[r];
	if not P then
		return;
	end;
	gE(P);
	IE[r] = nil;
end;
clearAllESP = UE;
removePlayerESP = jE;
local function tE(r)
	if IE[r] then
		return IE[r];
	end;
	local P = Instance.new("Frame");
	P.BackgroundTransparency = 1;
	P.BorderSizePixel = 0;
	P.Visible = false;
	P.ZIndex = 999;
	P.Parent = zE;
	local n;
	pcall(function()
		n = Instance.new("UIStroke");
		n.Color = Color3.new(1, 0, 0);
		n.Thickness = 1.5;
		n.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		n.Parent = P;
	end);
	local T = {};
	for r = 1, 8, 1 do
		local P = Instance.new("Frame");
		P.BorderSizePixel = 0;
		P.BackgroundColor3 = Color3.new(1, 0, 0);
		P.Visible = false;
		P.ZIndex = 999;
		P.Parent = zE;
		T[r] = P;
	end;
	local J = Instance.new("TextLabel");
	J.BackgroundTransparency = 1;
	J.AnchorPoint = Vector2.new(.5, .5);
	J.TextColor3 = Color3.new(1, 1, 1);
	J.TextSize = 12;
	J.Font = Enum.Font.SourceSansBold;
	J.TextStrokeTransparency = 0;
	J.Visible = false;
	J.ZIndex = 999;
	J.Parent = zE;
	local Z = Instance.new("TextLabel");
	Z.BackgroundTransparency = 1;
	Z.AnchorPoint = Vector2.new(.5, .5);
	Z.TextColor3 = Color3.new(1, 1, 1);
	Z.TextSize = 10;
	Z.Font = Enum.Font.SourceSans;
	Z.TextStrokeTransparency = 0;
	Z.Visible = false;
	Z.ZIndex = 999;
	Z.Parent = zE;
	local W = Instance.new("Frame");
	W.BorderSizePixel = 0;
	W.BackgroundColor3 = Color3.new(0, 0, 0);
	W.Visible = false;
	W.ZIndex = 999;
	W.Parent = zE;
	local x = Instance.new("Frame");
	x.BorderSizePixel = 0;
	x.BackgroundColor3 = Color3.new(1, 0, 0);
	x.Visible = false;
	x.ZIndex = 999;
	x.Parent = zE;
	local d = Instance.new("Frame");
	d.BorderSizePixel = 0;
	d.BackgroundColor3 = Color3.new(1, 0, 0);
	d.Visible = false;
	d.ZIndex = 999;
	d.Parent = zE;
	pcall(function()
		local r = Instance.new("UICorner");
		r.CornerRadius = UDim.new(1, 0);
		r.Parent = d;
	end);
	local v = {
			fullBox = P,
			fullStroke = n,
			corners = T,
			name = J,
			dist = Z,
			healthBg = W,
			healthFill = x,
			headDot = d,
		};
	IE[r] = v;
	return v;
end;
local function qE()
	if not s.ESP then
		UE();
		return;
	end;
	if not L or not L.Parent then
		return;
	end;
	local r = L.ViewportSize;
	if r.X < 1 or r.Y < 1 then
		return;
	end;
	local n = tick();
	if n - wE >= 1 then
		wE = n;
		UE();
	end;
	local T = {};
	for r, P in ipairs(P:GetPlayers()) do
		T[P] = true;
	end;
	for r in pairs(IE) do
		if not T[r] then
			jE(r);
		end;
	end;
	local J = m();
	local Z = WE(f) and (WE(f)):FindFirstChild("HumanoidRootPart");
	local W = {};
	for r, P in ipairs(P:GetPlayers()) do
		if P ~= f and (dE(P) and xE(P)) then
			W[P] = true;
			local r = WE(P);
			local n = r and ((r:FindFirstChild("HumanoidRootPart") or r:FindFirstChild("Torso")));
			local T = r and r:FindFirstChild("Head");
			local x = r and r:FindFirstChildOfClass("Humanoid");
			if not n or not T then
				jE(P);
				continue;
			end;
			local d = tE(P);
			local v, f = L:WorldToViewportPoint(n.Position);
			local a, O = L:WorldToViewportPoint(T.Position + Vector3.new(0, 1.1, 0));
			local D, z = L:WorldToViewportPoint(n.Position - Vector3.new(0, 2.8, 0));
			if not ((v and (a and (f and (O and (v.Z > 0 and a.Z > 0)))))) then
				d.fullBox.Visible = false;
				d.name.Visible = false;
				d.dist.Visible = false;
				d.healthBg.Visible = false;
				d.healthFill.Visible = false;
				d.headDot.Visible = false;
				for r = 1, 8, 1 do
					if d.corners[r] then
						d.corners[r].Visible = false;
					end;
				end;
				continue;
			end;
			local I = D and D.Y or v.Y + 2.8;
			local w = math.max(math.abs(I - a.Y), 10);
			local g = math.clamp(w / 1.85, 8, 120);
			local U = v.X - g / 2;
			local j = a.Y;
			if s.ShowBoxes and ((s.BoxStyle == "Full" or s.BoxStyle == "Both")) then
				d.fullBox.Size = UDim2.new(0, g, 0, w);
				d.fullBox.Position = UDim2.new(0, U, 0, j);
				d.fullBox.Visible = true;
				if d.fullStroke then
					d.fullStroke.Color = J;
				end;
			else
				d.fullBox.Visible = false;
			end;
			if s.ShowBoxes and ((s.BoxStyle == "Corner" or s.BoxStyle == "Both")) then
				local r = math.clamp(g * .22, 4, 10);
				local P = d.corners;
				P[1].Size = UDim2.new(0, r, 0, 2);
				P[1].Position = UDim2.new(0, U, 0, j);
				P[2].Size = UDim2.new(0, 2, 0, r);
				P[2].Position = UDim2.new(0, U, 0, j);
				P[3].Size = UDim2.new(0, r, 0, 2);
				P[3].Position = UDim2.new(0, (U + g) - r, 0, j);
				P[4].Size = UDim2.new(0, 2, 0, r);
				P[4].Position = UDim2.new(0, (U + g) - 2, 0, j);
				P[5].Size = UDim2.new(0, r, 0, 2);
				P[5].Position = UDim2.new(0, U, 0, (j + w) - 2);
				P[6].Size = UDim2.new(0, 2, 0, r);
				P[6].Position = UDim2.new(0, U, 0, (j + w) - r);
				P[7].Size = UDim2.new(0, r, 0, 2);
				P[7].Position = UDim2.new(0, (U + g) - r, 0, (j + w) - 2);
				P[8].Size = UDim2.new(0, 2, 0, r);
				P[8].Position = UDim2.new(0, (U + g) - 2, 0, (j + w) - r);
				for r = 1, 8, 1 do
					if P[r] then
						P[r].BackgroundColor3 = J;
						P[r].Visible = true;
					end;
				end;
			else
				for r = 1, 8, 1 do
					if d.corners[r] then
						d.corners[r].Visible = false;
					end;
				end;
			end;
			if s.ShowNames then
				d.name.Text = P.DisplayName;
				d.name.Position = UDim2.new(0, v.X, 0, a.Y - 16);
				d.name.TextColor3 = J;
				d.name.Visible = true;
			else
				d.name.Visible = false;
			end;
			if s.ShowDistance and Z then
				d.dist.Text = math.floor(((n.Position - Z.Position)).Magnitude) .. "m";
				d.dist.Position = UDim2.new(0, v.X, 0, (j + w) + 2);
				d.dist.TextColor3 = J;
				d.dist.Visible = true;
			else
				d.dist.Visible = false;
			end;
			if s.ShowHealth and x then
				local r = math.clamp(x.Health / math.max(x.MaxHealth, 1), 0, 1);
				d.healthBg.Size = UDim2.new(0, 3, 0, w);
				d.healthBg.Position = UDim2.new(0, U - 6, 0, j);
				d.healthBg.Visible = true;
				local P = math.floor(w * r);
				d.healthFill.Size = UDim2.new(0, 2, 0, P);
				d.healthFill.Position = UDim2.new(0, U - 5.5, 0, (j + w) - P);
				d.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - r)), 255 * r, 0);
				d.healthFill.Visible = true;
			else
				d.healthBg.Visible = false;
				d.healthFill.Visible = false;
			end;
			if s.ShowHeadDot then
				local r, P = L:WorldToViewportPoint(T.Position);
				if r and (P and r.Z > 0) then
					local P = math.clamp(g * .18, 3, 9);
					d.headDot.Size = UDim2.new(0, P, 0, P);
					d.headDot.Position = UDim2.new(0, r.X - P / 2, 0, r.Y - P / 2);
					d.headDot.BackgroundColor3 = J;
					d.headDot.Visible = true;
				else
					d.headDot.Visible = false;
				end;
			else
				d.headDot.Visible = false;
			end;
		end;
	end;
	for r in pairs(IE) do
		if not W[r] then
			jE(r);
		end;
	end;
end;
local function oE()
	UE();
	qE();
end;
local hE = {};
local function CE()
	for r, P in pairs(hE) do
		pcall(function()
			P:Destroy();
		end);
		hE[r] = nil;
	end;
end;
local function FE()
	if not s.Chams then
		CE();
		return;
	end;
	local r = m();
	local n = {};
	for P, T in ipairs(P:GetPlayers()) do
		if T ~= f and (dE(T) and xE(T)) then
			n[T] = true;
			local P = WE(T);
			if P then
				local n = hE[T];
				if not n or not n.Parent then
					n = Instance.new("Highlight");
					n.Name = "MoonChams";
					n.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					n.FillTransparency = .5;
					n.OutlineTransparency = 0;
					n.Parent = P;
					hE[T] = n;
				end;
				n.FillColor = r;
				n.OutlineColor = r;
				n.Enabled = true;
			end;
		end;
	end;
	for r, P in pairs(hE) do
		if not n[r] then
			pcall(function()
				P:Destroy();
			end);
			hE[r] = nil;
		end;
	end;
end;
local VE = {};
local eE = {};
local function EE(r, P, n)
	local T = Instance.new("TextLabel");
	T.BackgroundTransparency = 1;
	T.Text = P or "?";
	T.TextColor3 = n or Color3.new(1, 0, 0);
	T.TextSize = 14;
	T.Font = Enum.Font.SourceSansBold;
	T.TextStrokeTransparency = 0;
	T.TextStrokeColor3 = Color3.new(0, 0, 0);
	T.AnchorPoint = Vector2.new(.5, .5);
	T.Visible = false;
	T.ZIndex = 999;
	T.Parent = r;
	return T;
end;
local function cE()
	local r = {};
	for P, n in ipairs(workspace:GetDescendants()) do
		if n:IsA("Model") or n:IsA("Tool") or n:IsA("BasePart") then
			local P = n.Name:lower();
			if P:find("gadget") or P:find("equip") or P:find("trap") or P:find("mine") or P:find("c4") or P:find("explosive") or P:find("shield") or P:find("drone") or P:find("camera") then
				if not n:IsDescendantOf(f.Character) and not n:IsDescendantOf(workspace.Terrain) then
					table.insert(r, n);
				end;
			end;
		end;
	end;
	return r;
end;
local function pE()
	for r, P in ipairs(workspace:GetDescendants()) do
		if P:IsA("BasePart") or P:IsA("Model") then
			local r = P.Name:lower();
			if r:find("bomb") or r:find("objective") or r:find("defuse") or r:find("plant") or r:find("charge") then
				if not P:IsDescendantOf(f.Character) then
					return P;
				end;
			end;
		end;
	end;
	return nil;
end;
local function lE()
	if not s.GadgetESP then
		for r, P in pairs(VE) do
			pcall(function()
				P:Destroy();
			end);
		end;
		VE = {};
		return;
	end;
	local r = cE();
	local P = m();
	local n = {};
	for r, P in ipairs(r) do
		n[P] = true;
	end;
	for r, P in pairs(VE) do
		if not n[r] or not r.Parent then
			pcall(function()
				P:Destroy();
			end);
			VE[r] = nil;
		end;
	end;
	for r, n in ipairs(r) do
		local T = VE[n];
		if not T or not T.Parent then
			T = EE(zE, "GADGET", P);
			VE[n] = T;
		end;
		local J;
		if n:IsA("Model") then
			local r = n.PrimaryPart or n:FindFirstChild("Head") or n:FindFirstChild("Handle") or n:FindFirstChildOfClass("BasePart");
			if r then
				J = r.Position;
			end;
		else
			J = n.Position;
		end;
		if J then
			local r, n = L:WorldToViewportPoint(J);
			if n and r.Z > 0 then
				T.Position = UDim2.new(0, r.X, 0, r.Y - 20);
				T.TextColor3 = P;
				T.Visible = true;
			else
				T.Visible = false;
			end;
		else
			T.Visible = false;
		end;
	end;
end;
local function sE()
	if not s.BombESP then
		for r, P in pairs(eE) do
			pcall(function()
				P:Destroy();
			end);
		end;
		eE = {};
		return;
	end;
	local r = pE();
	local P = m();
	for P, n in pairs(eE) do
		if P ~= r or not P.Parent then
			pcall(function()
				n:Destroy();
			end);
			eE[P] = nil;
		end;
	end;
	if not r then
		return;
	end;
	local n = eE[r];
	if not n or not n.Parent then
		n = EE(zE, "BOMB", Color3.new(1, .5, 0));
		eE[r] = n;
	end;
	local T;
	if r:IsA("Model") then
		local P = r.PrimaryPart or r:FindFirstChild("Head") or r:FindFirstChild("Handle") or r:FindFirstChildOfClass("BasePart");
		if P then
			T = P.Position;
		end;
	else
		T = r.Position;
	end;
	if T then
		local r, J = L:WorldToViewportPoint(T);
		if J and r.Z > 0 then
			n.Position = UDim2.new(0, r.X, 0, r.Y - 30);
			n.TextColor3 = P;
			n.Visible = true;
		else
			n.Visible = false;
		end;
	else
		n.Visible = false;
	end;
end;
P.PlayerRemoving:Connect(function(r)
	jE(r);
	pcall(function()
		if hE[r] then
			hE[r]:Destroy();
			hE[r] = nil;
		end;
	end);
end);
local function BE(r)
	r.CharacterRemoving:Connect(function()
		jE(r);
		pcall(function()
			if hE[r] then
				hE[r]:Destroy();
				hE[r] = nil;
			end;
		end);
	end);
	r.CharacterAdded:Connect(function()
		task.wait(.3);
		jE(r);
	end);
end;
P.PlayerAdded:Connect(BE);
for r, P in ipairs(P:GetPlayers()) do
	BE(P);
end;
local NE = false;
local function bE(r)
	if r == NE then
		return;
	end;
	NE = r;
	pcall(function()
		J.GlobalShadows = not r;
		if r then
			J.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for r, n in ipairs(workspace:GetDescendants()) do
				if n:IsA("BasePart") then
					local r = false;
					for P, T in ipairs(P:GetPlayers()) do
						if T.Character and n:IsDescendantOf(T.Character) then
							r = true;
							break;
						end;
					end;
					if not r then
						n.Material = Enum.Material.SmoothPlastic;
						n.CastShadow = false;
					end;
				elseif n:IsA("ParticleEmitter") or n:IsA("Trail") or n:IsA("Beam") then
					n.Enabled = false;
				end;
			end;
		end;
	end);
end;
V(.9, "Building UI...");
local HE = Instance.new("ScreenGui");
HE.Name = "OpSiegeUI";
HE.ResetOnSpawn = false;
HE.IgnoreGuiInset = true;
HE.DisplayOrder = 999;
HE.Parent = a;
local AE = Instance.new("Frame");
AE.Size = UDim2.new(0, math.min(540, L.ViewportSize.X - 20), 0, math.min(420, L.ViewportSize.Y - 50));
AE.Position = UDim2.new(.5, -AE.Size.X.Offset / 2, .5, -AE.Size.Y.Offset / 2);
AE.BackgroundColor3 = K;
AE.BackgroundTransparency = 0;
AE.BorderSizePixel = 0;
AE.Visible = false;
AE.Parent = HE;
(Instance.new("UICorner", AE)).CornerRadius = UDim.new(0, 12);
local KE = Instance.new("Frame");
KE.Size = UDim2.new(1, 0, 0, 40);
KE.BackgroundColor3 = u;
KE.BorderSizePixel = 0;
KE.Parent = AE;
(Instance.new("UICorner", KE)).CornerRadius = UDim.new(0, 12);
local uE = Instance.new("TextLabel");
uE.Size = UDim2.new(1, -40, 1, 0);
uE.Position = UDim2.new(0, 12, 0, 0);
uE.BackgroundTransparency = 1;
uE.Text = "MOON HUB  |  OPERATION SIEGE";
uE.TextColor3 = k;
uE.TextSize = 14;
uE.Font = i;
uE.TextXAlignment = Enum.TextXAlignment.Left;
uE.Parent = KE;
local ME = Instance.new("TextButton");
ME.Size = UDim2.new(0, 28, 0, 28);
ME.Position = UDim2.new(1, -34, .5, -14);
ME.BackgroundColor3 = Color3.fromRGB(50, 0, 0);
ME.Text = "X";
ME.TextColor3 = G;
ME.Font = i;
ME.TextSize = 14;
ME.Parent = KE;
(Instance.new("UICorner", ME)).CornerRadius = UDim.new(0, 6);
local kE = Instance.new("TextLabel");
kE.Size = UDim2.new(1, -16, 0, 18);
kE.Position = UDim2.new(0, 8, 0, 40);
kE.BackgroundTransparency = 1;
kE.Text = "Executor: " .. w;
kE.TextColor3 = G;
kE.TextSize = 11;
kE.Font = i;
kE.TextXAlignment = Enum.TextXAlignment.Left;
kE.Parent = AE;
local GE = Instance.new("ScrollingFrame");
GE.Size = UDim2.new(0, 100, 1, -66);
GE.Position = UDim2.new(0, 8, 0, 60);
GE.BackgroundColor3 = u;
GE.BorderSizePixel = 0;
GE.ScrollBarThickness = 2;
GE.AutomaticCanvasSize = Enum.AutomaticSize.Y;
GE.CanvasSize = UDim2.new(0, 0, 0, 0);
GE.Parent = AE;
(Instance.new("UICorner", GE)).CornerRadius = UDim.new(0, 8);
local iE = Instance.new("UIListLayout");
iE.Padding = UDim.new(0, 4);
iE.Parent = GE;
local mE = Instance.new("UIPadding");
mE.PaddingTop = UDim.new(0, 6);
mE.PaddingLeft = UDim.new(0, 6);
mE.PaddingRight = UDim.new(0, 6);
mE.Parent = GE;
local YE = Instance.new("Frame");
YE.Size = UDim2.new(1, -120, 1, -70);
YE.Position = UDim2.new(0, 114, 0, 62);
YE.BackgroundTransparency = 1;
YE.Parent = AE;
local SE, XE = {}, {};
local function yE(r)
	for P, n in pairs(SE) do
		n.Visible = (P == r);
	end;
	for P, n in pairs(XE) do
		n.BackgroundColor3 = (P == r) and Color3.fromRGB(50, 0, 0) or Color3.fromRGB(15, 15, 15);
		n.TextColor3 = (P == r) and A or G;
	end;
	Y();
end;
local function RE(r)
	local P = Instance.new("ScrollingFrame");
	P.Size = UDim2.new(1, 0, 1, 0);
	P.BackgroundTransparency = 1;
	P.BorderSizePixel = 0;
	P.ScrollBarThickness = 3;
	P.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	P.CanvasSize = UDim2.new(0, 0, 0, 0);
	P.Visible = false;
	P.Parent = YE;
	local n = Instance.new("UIListLayout");
	n.Padding = UDim.new(0, 5);
	n.SortOrder = Enum.SortOrder.LayoutOrder;
	n.Parent = P;
	local T = Instance.new("UIPadding");
	T.PaddingBottom = UDim.new(0, 10);
	T.Parent = P;
	P:SetAttribute("O", 0);
	SE[r] = P;
	local J = Instance.new("TextButton");
	J.Size = UDim2.new(1, 0, 0, 28);
	J.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
	J.Text = r;
	J.TextColor3 = G;
	J.TextSize = 12;
	J.Font = i;
	J.Parent = GE;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(0, 6);
	J.MouseButton1Click:Connect(function()
		yE(r);
	end);
	XE[r] = J;
	return P;
end;
local function QE(r)
	local P = ((r:GetAttribute("O") or 0)) + 1;
	r:SetAttribute("O", P);
	return P;
end;
local function rZ(r, P)
	local n = Instance.new("TextLabel");
	n.LayoutOrder = QE(r);
	n.Size = UDim2.new(1, 0, 0, 16);
	n.BackgroundTransparency = 1;
	n.Text = string.upper(P);
	n.TextColor3 = A;
	n.TextSize = 11;
	n.Font = i;
	n.TextXAlignment = Enum.TextXAlignment.Left;
	n.Parent = r;
end;
local function PZ(r, P, n)
	local T = Instance.new("Frame");
	T.LayoutOrder = QE(r);
	T.Size = UDim2.new(1, 0, 0, 32);
	T.BackgroundColor3 = M;
	T.BorderSizePixel = 0;
	T.Parent = r;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(0, 8);
	local J = Instance.new("TextLabel");
	J.Size = UDim2.new(1, -55, 1, 0);
	J.Position = UDim2.new(0, 10, 0, 0);
	J.BackgroundTransparency = 1;
	J.Text = P;
	J.TextColor3 = k;
	J.TextSize = 12;
	J.Font = i;
	J.TextXAlignment = Enum.TextXAlignment.Left;
	J.Parent = T;
	local Z = Instance.new("TextButton");
	Z.Size = UDim2.new(0, 40, 0, 18);
	Z.Position = UDim2.new(1, -48, .5, -9);
	Z.BackgroundColor3 = s[n] and A or Color3.fromRGB(40, 0, 0);
	Z.Text = "";
	Z.Parent = T;
	(Instance.new("UICorner", Z)).CornerRadius = UDim.new(1, 0);
	local W = Instance.new("Frame");
	W.Size = UDim2.new(0, 14, 0, 14);
	W.Position = s[n] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	W.BackgroundColor3 = Color3.new(1, 1, 1);
	W.BorderSizePixel = 0;
	W.Parent = Z;
	(Instance.new("UICorner", W)).CornerRadius = UDim.new(1, 0);
	Z.MouseButton1Click:Connect(function()
		s[n] = not s[n];
		local r = s[n];
		Z.BackgroundColor3 = r and A or Color3.fromRGB(40, 0, 0);
		W.Position = r and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if n == "ESP" then
			if r then
				oE();
			else
				UE();
			end;
		end;
		if n == "Chams" then
			if not r then
				CE();
			end;
		end;
		if n == "Potato" then
			bE(r);
		end;
		if n == "CustomFOV" then
			if r then
				nE();
			else
				pcall(function()
					L.FieldOfView = PE;
				end);
			end;
		end;
		if n == "MobileAim" and r then
			s.Aimbot = true;
		end;
		if n == "ScreenStretch" and (r and not N) then
			N = true;
		end;
		if n == "AntiCheatBypass" and r then
			e();
		end;
		if n == "ConsoleSilent" and r then
			c(true);
		end;
		if n == "GadgetESP" and not r then
			for r, P in pairs(VE) do
				pcall(function()
					P:Destroy();
				end);
			end;
			VE = {};
		end;
		if n == "BombESP" and not r then
			for r, P in pairs(eE) do
				pcall(function()
					P:Destroy();
				end);
			end;
			eE = {};
		end;
		b();
		Y();
	end);
end;
local function nZ(r, P, T, J, Z, W)
	local x = Instance.new("Frame");
	x.LayoutOrder = QE(r);
	x.Size = UDim2.new(1, 0, 0, 46);
	x.BackgroundColor3 = M;
	x.BorderSizePixel = 0;
	x.Parent = r;
	(Instance.new("UICorner", x)).CornerRadius = UDim.new(0, 8);
	local d = Instance.new("TextLabel");
	d.Size = UDim2.new(.65, 0, 0, 16);
	d.Position = UDim2.new(0, 10, 0, 4);
	d.BackgroundTransparency = 1;
	d.Text = P;
	d.TextColor3 = k;
	d.TextSize = 11;
	d.Font = i;
	d.TextXAlignment = Enum.TextXAlignment.Left;
	d.Parent = x;
	local v = Instance.new("TextLabel");
	v.Size = UDim2.new(.3, -8, 0, 16);
	v.Position = UDim2.new(.7, 0, 0, 4);
	v.BackgroundTransparency = 1;
	v.Text = tostring(s[T]);
	v.TextColor3 = A;
	v.TextSize = 11;
	v.Font = i;
	v.TextXAlignment = Enum.TextXAlignment.Right;
	v.Parent = x;
	local L = Instance.new("TextButton");
	L.Size = UDim2.new(1, -20, 0, 8);
	L.Position = UDim2.new(0, 10, 0, 26);
	L.BackgroundColor3 = Color3.fromRGB(40, 0, 0);
	L.Text = "";
	L.Parent = x;
	(Instance.new("UICorner", L)).CornerRadius = UDim.new(1, 0);
	local f = Instance.new("Frame");
	f.Size = UDim2.new(math.clamp(((s[T] - J)) / math.max(Z - J, .001), 0, 1), 0, 1, 0);
	f.BackgroundColor3 = A;
	f.BorderSizePixel = 0;
	f.Parent = L;
	(Instance.new("UICorner", f)).CornerRadius = UDim.new(1, 0);
	local function a(r)
		local P = math.clamp(((r - L.AbsolutePosition.X)) / math.max(L.AbsoluteSize.X, 1), 0, 1);
		local n = J + P * ((Z - J));
		n = math.floor(n / W + .5) * W;
		n = math.clamp(n, J, Z);
		s[T] = n;
		f.Size = UDim2.new(((n - J)) / math.max(Z - J, .001), 0, 1, 0);
		v.Text = tostring(n);
		if T == "CursorSize" then
			R.Size = UDim2.new(0, n, 0, n);
		end;
		if T == "FOVValue" and s.CustomFOV then
			nE();
		end;
		b();
	end;
	L.MouseButton1Down:Connect(function()
		local r, P;
		r = n.InputChanged:Connect(function(r)
				if r.UserInputType == Enum.UserInputType.MouseMovement or r.UserInputType == Enum.UserInputType.Touch then
					a(r.Position.X);
				end;
			end);
		P = n.InputEnded:Connect(function(n)
				if n.UserInputType == Enum.UserInputType.MouseButton1 or n.UserInputType == Enum.UserInputType.Touch then
					if r then
						r:Disconnect();
					end;
					if P then
						P:Disconnect();
					end;
				end;
			end);
		pcall(function()
			a((n:GetMouseLocation()).X);
		end);
	end);
end;
local function TZ(r, P, n, T)
	local J = Instance.new("Frame");
	J.LayoutOrder = QE(r);
	J.Size = UDim2.new(1, 0, 0, 32);
	J.BackgroundColor3 = M;
	J.BorderSizePixel = 0;
	J.Parent = r;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(0, 8);
	local Z = Instance.new("TextLabel");
	Z.Size = UDim2.new(.4, 0, 1, 0);
	Z.Position = UDim2.new(0, 10, 0, 0);
	Z.BackgroundTransparency = 1;
	Z.Text = P;
	Z.TextColor3 = k;
	Z.TextSize = 12;
	Z.Font = i;
	Z.TextXAlignment = Enum.TextXAlignment.Left;
	Z.Parent = J;
	local W = 1;
	for r, P in ipairs(T) do
		if P == s[n] then
			W = r;
		end;
	end;
	local x = Instance.new("TextButton");
	x.Size = UDim2.new(.55, -12, 0, 22);
	x.Position = UDim2.new(.45, 0, .5, -11);
	x.BackgroundColor3 = Color3.fromRGB(40, 0, 0);
	x.Text = tostring(s[n]);
	x.TextColor3 = A;
	x.TextSize = 11;
	x.Font = i;
	x.Parent = J;
	(Instance.new("UICorner", x)).CornerRadius = UDim.new(0, 6);
	x.MouseButton1Click:Connect(function()
		W = W % #T + 1;
		s[n] = T[W];
		x.Text = T[W];
		if n == "CursorName" then
			rE(s.CursorName);
		end;
		b();
		Y();
	end);
end;
local function JZ(r, P, n, T)
	local J = Instance.new("Frame");
	J.LayoutOrder = QE(r);
	J.Size = UDim2.new(1, 0, 0, 52);
	J.BackgroundColor3 = M;
	J.BorderSizePixel = 0;
	J.Parent = r;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(0, 8);
	local Z = Instance.new("TextLabel");
	Z.Size = UDim2.new(1, -16, 0, 14);
	Z.Position = UDim2.new(0, 10, 0, 4);
	Z.BackgroundTransparency = 1;
	Z.Text = P;
	Z.TextColor3 = G;
	Z.TextSize = 11;
	Z.Font = i;
	Z.TextXAlignment = Enum.TextXAlignment.Left;
	Z.Parent = J;
	local W = Instance.new("TextBox");
	W.Size = UDim2.new(1, -20, 0, 22);
	W.Position = UDim2.new(0, 10, 0, 22);
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	W.BorderSizePixel = 0;
	W.Text = tostring(s[n] or T or "");
	W.PlaceholderText = T or "";
	W.TextColor3 = k;
	W.TextSize = 12;
	W.Font = i;
	W.ClearTextOnFocus = false;
	W.Parent = J;
	(Instance.new("UICorner", W)).CornerRadius = UDim.new(0, 6);
	W.FocusLost:Connect(function()
		local r = W.Text;
		if not r or r == "" then
			r = T or "default";
			W.Text = r;
		end;
		s[n] = r;
		b();
	end);
end;
local function ZZ(r, P, n)
	local T = Instance.new("TextButton");
	T.LayoutOrder = QE(r);
	T.Size = UDim2.new(1, 0, 0, 30);
	T.BackgroundColor3 = Color3.fromRGB(50, 0, 0);
	T.Text = P;
	T.TextColor3 = A;
	T.TextSize = 12;
	T.Font = i;
	T.Parent = r;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(0, 8);
	T.MouseButton1Click:Connect(function()
		n();
		Y();
	end);
end;
local WZ = RE("Combat");
local xZ = RE("Player");
local dZ = RE("Staff");
local vZ = RE("Mobile");
local LZ = RE("Visuals");
local fZ = RE("Config");
rZ(WZ, "Aimbot");
PZ(WZ, "Aimbot", "Aimbot");
TZ(WZ, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
TZ(WZ, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
nZ(WZ, "FOV", "AimFOV", 40, 350, 1);
nZ(WZ, "Smooth", "AimSmooth", .1, 1, .05);
PZ(WZ, "Show FOV", "ShowFOV");
PZ(WZ, "Wall Check", "WallCheck");
PZ(WZ, "Team Check", "TeamCheck");
PZ(WZ, "Prediction", "Prediction");
nZ(WZ, "Predict", "PredictAmount", 0, .35, .01);
rZ(WZ, "Camera FOV");
PZ(WZ, "Custom FOV", "CustomFOV");
nZ(WZ, "FOV Value", "FOVValue", 40, 120, 1);
rZ(xZ, "Move");
PZ(xZ, "Speed", "Speed");
nZ(xZ, "Speed Value", "SpeedValue", 16, 80, 1);
PZ(xZ, "Noclip", "Noclip");
PZ(xZ, "Anti-Bow", "AntiBow");
rZ(xZ, "Screen Stretch");
PZ(xZ, "Screen Stretch", "ScreenStretch");
nZ(xZ, "Stretch Amount", "StretchAmount", .3, 1, .01);
rZ(dZ, "Staff");
PZ(dZ, "Detect", "StaffDetect");
PZ(dZ, "Leave", "StaffLeave");
rZ(vZ, "Mobile Aim");
PZ(vZ, "Mobile Aim ON", "MobileAim");
nZ(vZ, "Smooth", "MobileSmooth", .1, 1, .05);
nZ(vZ, "FOV", "MobileFOV", 40, 350, 1);
PZ(vZ, "Show FOV", "MobileShowFOV");
rZ(LZ, "ESP");
PZ(LZ, "ESP Enabled", "ESP");
PZ(LZ, "Boxes", "ShowBoxes");
TZ(LZ, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
PZ(LZ, "Names", "ShowNames");
PZ(LZ, "Distance", "ShowDistance");
PZ(LZ, "Health", "ShowHealth");
PZ(LZ, "Head Dot", "ShowHeadDot");
PZ(LZ, "Chams ESP", "Chams");
PZ(LZ, "Gadget ESP", "GadgetESP");
PZ(LZ, "Bomb ESP", "BombESP");
ZZ(LZ, "Force Refresh ESP", oE);
rZ(LZ, "ESP Color");
PZ(LZ, "RGB ESP", "RGBESP");
nZ(LZ, "Red", "ESPColorR", 0, 255, 1);
nZ(LZ, "Green", "ESPColorG", 0, 255, 1);
nZ(LZ, "Blue", "ESPColorB", 0, 255, 1);
rZ(LZ, "Radar");
PZ(LZ, "Radar", "Radar");
nZ(LZ, "Radar Size", "RadarSize", 80, 220, 5);
nZ(LZ, "Radar Range", "RadarRange", 50, 400, 10);
rZ(LZ, "Cursor");
TZ(LZ, "Cursor", "CursorName", X);
nZ(LZ, "Cursor Size", "CursorSize", 8, 128, 1);
for r, P in ipairs(S) do
	ZZ(LZ, P.Name, function()
		rE(P.Name);
		b();
	end);
end;
rZ(fZ, "Config");
JZ(fZ, "Name", "ConfigName", "default");
ZZ(fZ, "Save", b);
ZZ(fZ, "Load", function()
	H();
end);
PZ(fZ, "FPS + MS", "ShowPerf");
PZ(fZ, "Potato", "Potato");
PZ(fZ, "Anti-Cheat Bypass", "AntiCheatBypass");
PZ(fZ, "Console Silent", "ConsoleSilent");
rZ(fZ, "Status");
local aZ = Instance.new("TextLabel");
aZ.LayoutOrder = QE(fZ);
aZ.Size = UDim2.new(1, 0, 0, 40);
aZ.BackgroundColor3 = M;
aZ.BorderSizePixel = 0;
aZ.Text = "Executor: " .. w;
aZ.TextColor3 = k;
aZ.TextSize = 12;
aZ.Font = i;
aZ.Parent = fZ;
(Instance.new("UICorner", aZ)).CornerRadius = UDim.new(0, 8);
yE("Combat");
local OZ = Instance.new("TextButton");
OZ.Size = UDim2.new(0, 60, 0, 40);
OZ.Position = UDim2.new(1, -70, 0, 10);
OZ.BackgroundColor3 = Color3.fromRGB(50, 0, 0);
OZ.Text = "OPEN";
OZ.TextColor3 = A;
OZ.TextSize = 14;
OZ.Font = i;
OZ.Visible = true;
OZ.Parent = HE;
(Instance.new("UICorner", OZ)).CornerRadius = UDim.new(0, 8);
OZ.MouseButton1Click:Connect(function()
	AE.Visible = true;
	OZ.Visible = false;
end);
local function DZ()
	OZ.Visible = not AE.Visible;
end;
local zZ, IZ, wZ;
KE.InputBegan:Connect(function(r)
	if r.UserInputType == Enum.UserInputType.MouseButton1 or r.UserInputType == Enum.UserInputType.Touch then
		zZ = true;
		IZ = r.Position;
		wZ = AE.Position;
	end;
end);
KE.InputEnded:Connect(function(r)
	if r.UserInputType == Enum.UserInputType.MouseButton1 or r.UserInputType == Enum.UserInputType.Touch then
		zZ = false;
	end;
end);
n.InputChanged:Connect(function(r)
	if zZ and ((r.UserInputType == Enum.UserInputType.MouseMovement or r.UserInputType == Enum.UserInputType.Touch)) then
		local P = r.Position - IZ;
		AE.Position = UDim2.new(wZ.X.Scale, wZ.X.Offset + P.X, wZ.Y.Scale, wZ.Y.Offset + P.Y);
	end;
end);
ME.MouseButton1Click:Connect(function()
	AE.Visible = false;
	DZ();
end);
n.InputBegan:Connect(function(r)
	if r.KeyCode == Enum.KeyCode.RightControl or r.KeyCode == Enum.KeyCode.LeftControl then
		AE.Visible = not AE.Visible;
		DZ();
		Y();
	end;
end);
local gZ = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local UZ = false;
local jZ;
local function tZ(r)
	local P = gZ[s.AimKey] or Enum.UserInputType.MouseButton2;
	local n = tostring(P);
	if string.find(n, "MouseButton", 1, true) then
		return r.UserInputType == P;
	end;
	if string.find(n, "KeyCode", 1, true) then
		return r.KeyCode == P;
	end;
	return false;
end;
n.InputBegan:Connect(function(r, P)
	if not s.Aimbot or s.MobileAim then
		return;
	end;
	if not tZ(r) then
		return;
	end;
	if s.AimMode == "Hold" then
		UZ = true;
	elseif s.AimMode == "Toggle" then
		UZ = not UZ;
	end;
end);
n.InputEnded:Connect(function(r)
	if s.AimMode == "Hold" and tZ(r) then
		UZ = false;
	end;
end);
local function qZ(r)
	if jZ then
		jZ:Disconnect();
		jZ = nil;
	end;
	if not r then
		local r = WE(f);
		if r then
			for r, P in ipairs(r:GetDescendants()) do
				if P:IsA("BasePart") then
					P.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	jZ = T.Stepped:Connect(function()
			local r = WE(f);
			if not r then
				return;
			end;
			for r, P in ipairs(r:GetDescendants()) do
				if P:IsA("BasePart") then
					P.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if s.AntiBow then
			pcall(function()
				local r = WE(f);
				if not r then
					return;
				end;
				local P = r:FindFirstChild("HumanoidRootPart");
				local n = r:FindFirstChildOfClass("Humanoid");
				if not P or not n or n.Health <= 0 then
					return;
				end;
				local T = n:GetState();
				if T == Enum.HumanoidStateType.Jumping or T == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if P.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local J, Z = P.CFrame:ToOrientation();
				P.CFrame = CFrame.new(P.Position) * CFrame.Angles(0, Z, 0);
			end);
		end;
	end;
end);
local oZ = 12471718;
local hZ = {};
task.spawn(function()
	while true do
		task.wait(2);
		if s.StaffDetect then
			for r, P in ipairs(P:GetPlayers()) do
				if P ~= f then
					local r, n = pcall(function()
							return P:GetRankInGroup(oZ);
						end);
					if r and type(n) == "number" then
						if n >= 51 then
							if not hZ[P.UserId] then
								hZ[P.UserId] = true;
								if s.StaffLeave then
									pcall(function()
										f:Kick("Staff");
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
local CZ = Instance.new("ScreenGui");
CZ.Name = "OpSiegeFOVGui";
CZ.ResetOnSpawn = false;
CZ.IgnoreGuiInset = true;
CZ.DisplayOrder = 99999;
CZ.Parent = D;
local FZ = Instance.new("Frame");
FZ.AnchorPoint = Vector2.new(.5, .5);
FZ.Size = UDim2.new(0, 300, 0, 300);
FZ.Position = UDim2.new(.5, 0, .5, 0);
FZ.BackgroundTransparency = 1;
FZ.BorderSizePixel = 0;
FZ.Visible = false;
FZ.ZIndex = 999;
FZ.Parent = CZ;
pcall(function()
	(Instance.new("UICorner", FZ)).CornerRadius = UDim.new(1, 0);
end);
local VZ;
pcall(function()
	VZ = Instance.new("UIStroke");
	VZ.Color = Color3.new(1, 0, 0);
	VZ.Thickness = 1.5;
	VZ.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	VZ.Parent = FZ;
end);
local eZ, EZ, cZ, pZ = 0, tick(), 0, 0;
T.Heartbeat:Connect(function()
	local r = WE(f);
	if r then
		local P = r:FindFirstChildOfClass("Humanoid");
		if s.Speed and (P and P.Health > 0) then
			P.WalkSpeed = s.SpeedValue or 24;
		end;
		if s.Noclip then
			if not jZ then
				qZ(true);
			end;
		elseif jZ then
			qZ(false);
		end;
	end;
	bE(s.Potato == true);
end);
T.RenderStepped:Connect(function()
	pcall(function()
		eZ = eZ + 1;
		if tick() - EZ >= 1 then
			cZ = eZ;
			eZ = 0;
			EZ = tick();
		end;
		if R.Visible then
			local r = n:GetMouseLocation();
			R.Position = UDim2.new(0, r.X, 0, r.Y);
		end;
		if s.CustomFOV then
			nE();
		end;
		TE = false;
		local r, P, T = false, s.AimSmooth or .95, s.AimFOV or 150;
		if s.MobileAim then
			r = true;
			P = s.MobileSmooth or .9;
			T = s.MobileFOV or 160;
		elseif s.Aimbot then
			r = UZ or s.AimMode == "Always";
			P = s.AimSmooth or .95;
			T = s.AimFOV or 150;
		end;
		if r then
			local r, n = DE(T, true);
			if n then
				TE = true;
				if P >= .98 then
					L.CFrame = CFrame.new(L.CFrame.Position, n);
				else
					L.CFrame = L.CFrame:Lerp(CFrame.new(L.CFrame.Position, n), math.clamp(P, .1, 1));
				end;
				ZE(n);
			end;
		end;
		JE();
		pcall(qE);
		pcall(FE);
		pcall(lE);
		pcall(sE);
		local J, Z = false, s.AimFOV or 150;
		if s.MobileAim then
			J = s.MobileShowFOV;
			Z = s.MobileFOV or 160;
		else
			J = s.ShowFOV;
			Z = s.AimFOV or 150;
		end;
		FZ.Size = UDim2.new(0, Z * 2, 0, Z * 2);
		FZ.Position = UDim2.new(.5, 0, .5, 0);
		FZ.Visible = J;
		if VZ then
			if s.RGBESP then
				VZ.Color = m();
			end;
		end;
	end);
end);
task.spawn(function()
	while true do
		task.wait(15);
		b();
	end;
end);
if s.CursorName and s.CursorName ~= "Off" then
	rE(s.CursorName);
end;
if s.CustomFOV then
	nE();
end;
if s.AntiCheatBypass then
	e();
end;
if s.ConsoleSilent then
	c(true);
end;
V(1, "Done");
task.wait(.35);
pcall(function()
	g:Destroy();
end);
AE.Visible = true;
OZ.Visible = false;
print("[Moon Hub] OPERATION SIEGE | " .. w);
