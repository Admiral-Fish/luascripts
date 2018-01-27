--User input

--Please input your desired PID
targetPID = 0xACA5b8a9

--Please enter the 16bit seed your PID occurs
target16Bit = 0x1446

--Please enter your target frame
targetFrame = 116887

--Ruby/Sapphire is 0, FireRed/LeafGreen is 1, Emerald is 2
--If you don't set it properly the script won't work as intened
gameVersion=0

--Instructions
--Only tested on stationary pokemon(aka Method 1 only)
--Be on the last dialog/screen before the battle starts then start the script




--Don't change anything below this line unless you know what you are doing.

rshift = bit.rshift
lshift = bit.lshift
band = bit.band
mdword = memory.readdwordunsigned


--Formula for LCRNG(R)
function back(a)
	local a = 0xEEB9 * band(s, 0xffff) + rshift(s, 16) * 0xEB65
	local b = 0xEB65 * band(s, 0xffff) + band(a, 0xffff) * 0x10000 + 0xA3561A1
	return b
end

--Formula for LCRNG
function forward(a)
	local a = 0x41C6 * band(s, 0xffff) + rshift(s, 16) * 0x4E6D
	local b = 0x4E6D * band(s, 0xffff) + band(a, 0xffff) * 0x10000 + 0x6073
	return b
end

--Formula for origin seed from PID
function originSeed(pid)

	local pidH = rshift(pid, 16)
	local pidL = band(pid, 0xFFFF)
	
	local i=0
	local test = lshift(pidh, 16)
	while i < 0x10000 do
		local testseed = test + i
		local prevseed = (back(testseed))
		if rshift(prevseed, 16) == pidL then
			local t = back(prevseed)
			if validationSeed(t) == target16Bit then
				return t
			end
		end
    i=i+1
	end
end

--Reverses base seed until it encounters first 16bit seed
function validationSeed(s)
	while s > 0xffff do
		s = back(s)
	end
	return s
end

--Start script
initialState=savestate.create()
savestate.save(initialState)
joypad.set(1,{A=true})

x = 0
while x < 2000 do
	emu.frameadvance()
	x = x + 1
end

--Ruby/Sapphire
if gameVersion == 0 then
	actualPID = mdword(0x030045C0)
end

--FireRed/LeafGreen
if gameVersion == 1 then
	actualPID = mdword(0x0202402C)
end
	
--Emerald
if gameVersion == 2 then
	actualPID = mdword(0x02024744)
end
	
print("Encountered PID of "..string.format("%08X", actualPID).." while calibrating.")
actualPRNG=originSeed(actualPID)
targetPRNG=originSeed(targetPID)
	
frameOffSet = 0
x = 0
while x < targetFrame do
	actualPRNG = forward(actualPRNG)
	frameOffSet = frameOffSet + 1
	if actualPRNG == targetPRNG then
		frameDifference = frameOffSet
	end
	x = x + 1
end
	
print("Your frame offset is "..string.format("%04d", frameDifference)..".")
	
savestate.load(initialState)
	
x = 0
while x < frameDifference do
	emu.frameadvance()
	x = x + 1
end
	
joypad.set(1,{A=true})
	
x = 0
while x < 2000 do
  emu.frameadvance()
  x = x + 1
end
  
print("Finished RNGing. Enjoy!")
emu.pause()