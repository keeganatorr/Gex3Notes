local x = 0
local y = 36
local xpos
local ypos
local zpos

local moonJ

local xLoc = 0x0A2858
local yLoc = 0x0A285A
local zLoc = 0x0A285C

local moonJump = 0x0A290C

local buttons={}
local xpressed = 0

local func = 0
local funcname = "Off"

local pressed = 0
local held = 0
local released = 1

while true do
	xpos = memory.read_s16_le(xLoc)
	ypos = memory.read_s16_le(yLoc)
	zpos = memory.read_s16_le(zLoc)
	moonJ = memory.read_s32_le(moonJump)
	gui.text(x,    y, 'X: ' .. xpos)
	gui.text(x, y+16, 'Y: ' .. ypos)
	gui.text(x, y+32, 'Z: ' .. zpos)
	gui.text(x, y+48, 'Moon: ' .. moonJ)

	gui.text(x, y+64, 'pressed: ' .. pressed)
	gui.text(x, y+64+16, 'held: ' .. held)
	gui.text(x, y+64+32, 'released: ' .. released)
	gui.text(x, y+128, 'func: ' .. func)
	gui.text(x, y+128+16, 'funcname: ' .. funcname)

	gui.text(x, y+128+64, 'Move: ' .. memory.readbyte(0x0A3E24))
	--[[gui.text(x, y+64, 'SetGraphDebug:level:' .. memory.read_s16_le(0x09A32E))
	gui.text(x, y+64+16, 'SetGraphDebug:type:' .. memory.read_s16_le(0x09A32C))
	gui.text(x, y+64+32, 'SetGraphDebug:reverse:' .. memory.read_s16_le(0x09A32F))]]
	
	local keys = input.get()
	buttons = joypad.get()
	--[[if keys.Z then --[Change this for moonjump]
		--[memory.write_s16_le(zLoc,zpos+128)]
		memory.write_s32_le(moonJump,0x0000006F)
	end]]
	if keys.Y then --[[Change this for x Subtract]]
		memory.write_s16_le(xLoc,xpos-128)
	end
	if keys.H then --[[Change this for x Add]]
		memory.write_s16_le(xLoc,xpos+128)
	end
	if keys.G then --[[Change this for y Subtract]]
		memory.write_s16_le(yLoc,ypos-128)
	end
	if keys.J then --[[Change this for y Add]]
		memory.write_s16_le(yLoc,ypos+128)
	end

	--[Controller View]

	local controllerAddy = 0x0A3E24

	local controllerRead = memory.readbyte(controllerAddy)

	local PressedX = bit.band(controllerRead, 0x80)

	if PressedX == 0x80 then
		--[gui.text(0,0,PressedX)]
		memory.write_s32_le(moonJump,0x0000006F)
	end

	local smallVelAddy = 0x0B3778
	local smallVel = memory.readbyte(smallVelAddy)
	
	gui.text(0,0,'smallVel: ' .. smallVel)

	local bigVelAddy = 0x0B377A
	local bigVel = memory.readbyte(bigVelAddy)
	
	gui.text(0,0+16,'bigVel: ' .. bigVel)

	local maxVelAddy = 0x0B377C
	local maxVel = memory.readbyte(maxVelAddy)
	
	gui.text(0+200,0+16,'maxVel: ' .. maxVel)


	local PressedUp = bit.band(controllerRead, 0x01)

	local PressedLeft = bit.band(controllerRead, 0x02)

	local PressedRight = bit.band(controllerRead, 0x08)

	local PressedDown = bit.band(controllerRead, 0x02)

	--[local tempPos = memory.read_s16_le(0x0B3778)]

	if PressedUp == 0x01 or PressedLeft == 0x02 or PressedRight == 0x08 or PressedDown == 0x02 then
		--[gui.text(0,0+32,'tempPos: ' .. bigVel)]
		memory.writebyte(smallVelAddy,0x10)
		memory.writebyte(bigVelAddy,0xFE)
		memory.writebyte(maxVelAddy,0xFF)
	end

	--[[if not PressedUp then
		gui.text(0,0,PressedUp)
		memory.write_s32_le(0x8007FD90,0x00431021)
	end
		gui.text(0,0,PressedUp)
		memory.write_s32_le(0x8007FD90,0x00431021)
	end]]


	--[Cheat Handler]

	if keys.C and held == 0 then
		released = 0
		--[pressed = 1]
		func = func + 1
		held = 1
	end

	--[[if keys.C and held == 1 then
		--[here if needed, this happens but we cant see it]
		pressed = 0
	end]]

	if not keys.C and held == 1 then
		held = 0
		released = 0
	end

	--[[if func == 1 then
		funcname = "Move"
		memory.write_s32_le(0x0A3E24,0x00000001)
	end]]

	
	if func == 1 then
		funcname = "Invincible"
		memory.write_s32_le(0x0B37B8,0x0000002E)
	end

	if func == 2 then
		funcname = "Infinith Health"
		memory.write_s32_le(0x0AA5D0,0x00000005)
	end

	if func == 3 then
		funcname = "Infinith Lives"
		memory.write_s32_le(0x0AA5CC,0x00000064)
	end

	if func == 4 then
		funcname = "99 Coins"
		memory.write_s32_le(0x0AA5DC,0x00000063)
	end

	if func == 5 then
		funcname = "99 Paws"
		memory.write_s32_le(0x0AA5D8,0x00000063)
	end

	if func == 6 then
		funcname = "99 Flies"
		memory.write_s32_le(0x0AA5D4,0x00000063)
	end

	if func == 7 then
		funcname = "99 Remotes"
		memory.write_s32_le(0x0AA5E0,0x00000064)
	end

	if func == 8 then
		funcname = "All Special Remotes"
		memory.write_s32_le(0x0AA5EC,0xFFFFFFFF)
	end

	if func == 9 then
		funcname = "Infinite Air"
		memory.write_s32_le(0x0B38EA,0x0000032A)
	end

	if func == 10 then
		funcname = "Off"
		func = 0
	end



	
	
	emu.frameadvance();
end