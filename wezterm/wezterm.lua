-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.window_background_opacity = 0.98

config.color_scheme = "Sonokai (Gogh)"

-- config.font = wezterm.font("Iosevka Term Extended")
-- config.font = wezterm.font("Fira Code", { weight = "Regular", stretch = "Normal", style = "Normal" })
-- wezterm.font("Overpass Nerd Font", {weight="Light", stretch="Normal", style="Italic"})
wezterm.font = wezterm.font("OverpassM Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.font_size = 14.5

local function arrContains(arr, val)
	for _, v in ipairs(arr) do
		if v == val then
			return true
		end
	end

	return false
end

-- local nonpadded_apps = { "nvim", "btop", "btm" }
-- wezterm.on("smartpadding", function(window, pane)
-- 	local fgp = pane:get_foreground_process_info()
-- 	if fgp == nil then
-- 		return
-- 	end
--
-- 	if arrcontains(nonpadded_apps, fgp.name) then
-- 		window:set_config_overrides({
-- 			window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
-- 		})
-- 	else
-- 		window:set_config_overrides({
-- 			window_padding = wezterm.global.smart_padding,
-- 		})
-- 	end
-- end)
--
-- config.keys = {
-- 	{
-- 		key = "F11",
-- 		mods = "ALT",
-- 		action = wezterm.action.EmitEvent("smartpadding"),
-- 	},
-- }
--
return config
