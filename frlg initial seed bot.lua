-- User Input
-- Please note the “Use GBA BIOS” option must be unselected for this script to work properly
-- Or the Disable BIOS INTRO option must be enabled
-- This program work for both Fire Red and Leaf Green without any modification

-- Start this script on either the screen that shows Charizard or Venasaur depending on which game

-- Please enter the seed from IVs to PID in the form 0x******** where the stars are the seed     
targetSeed = 0x4392600E  

-- Max amount of frames you are willing to wait
maxFrame = 5000000        



--Don’t edit anything below this unless you know what you are doing


--Function that does the LCRNG math
function LCRNG(a)
	local a = 0x41C6 * band(s, 0xffff) + rshift(s, 16) * 0x4E6D
	local b = 0x4E6D * band(s, 0xffff) + band(a, 0xffff) * 0x10000 + 0x6073
	return b
end



initialState=savestate.create()
targetHit = 0

while targetHit == 0 do
  -- Advances frame to title screen
	titleScreen = 0
	while  titleScreen < 1760 do
		emu.frameadvance()
		titleScreen = titleScreen + 1
	end

	savestate.save(initialState)
	
	-- Main loop for advancing frame and taking the base seed to test
	cutSceneCounter = 0
	while (cutSceneCounter < 2370) and targetHit == 0 do
		cutSceneCounter=cutSceneCounter+1
		savestate.load(initialState)
		emu.frameadvance()
		savestate.save(initialState)
		
		frameCounter=1
		
		joypad.set(1,{A=true})
		a = 0
		while  a < 230 do
			emu.frameadvance()
			a=a+1
		end
		baseSeed=memory.readwordunsigned(0x02020000)
		PRNG=baseSeed
			
		currentFrame = 0
		--Calls the LCRNG math and checks for a match
		while (maxFrame > currentFrame) and targetHit == 0 do
			PRNG=LCRNG(PRNG)
			
			frameCounter=frameCounter + 1
		
			if targetSeed == PRNG then
				print("Finished. Your base seed is "..string.format("%04X", baseSeed).." And it happens on frame "..string.format("%04d", frameCounter)..".")
				print("Please stop the script before unpausing.")
				emu.pause()
				targetHit=1
			end
			currentFrame = currentFrame + 1  
			
		end
	end
	--Resets game after all frames have been tested for a given SR
	if targetHit == 0 then
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
		joypad.set(1,{A=true,B=true,select=true,start=true})
		emu.frameadvance()
	end
end