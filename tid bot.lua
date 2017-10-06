--Author: Admiral_Fish

desiredTarget=01373

initialState=savestate.create()
savestate.save(initialState)

while desiredTarget~=actualTarget do
	savestate.load(initialState)
	emu.frameadvance()
	savestate.save(initialState)

	joypad.set(1,{A=true})
	a=0
	while a < 30 do
		emu.frameadvance()
		a=a+1
	end
  
	actualTarget=memory.readwordunsigned(0x02020000)
	if desiredTarget==actualTarget then
		emu.pause()
	end
end