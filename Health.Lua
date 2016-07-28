surface.CreateFont( "Whatever", {
	font = "Arial",
	size = 100,
	weight = 500,
} )

hook.Add("HUDPaint" , "DrawMyHud", function()

	local health = LocalPlayer():Health()
	local armor = LocalPlayer():Armor()
	
	
	draw.RoundedBox(0,8,8,300 + 4 , 30 + 4, Color(40,40,40))
	draw.RoundedBox(0,10,10,health * 3,30,Color(255,120,120))
	
	draw.RoundedBox(0,8,98,300 + 4 , 30 + 4, Color(40,40,40))
	draw.RoundedBox(0,8,100,armor * 3,30,Color(120,120,255))
	
end)

function HideHud(name)
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo"}) do
	if name == v then
		return false
		end
	end
end
hook.Add("HUDShouldDraw", "HideDefaultHud", HideHud)
