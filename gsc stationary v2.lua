--Modified version of gsc_stationary.lua by AgentKazy
local pause = 1 -- Set to 0 to disable emulator pause at shiny encounter
--End of editing parameters
local electrode = 101; local lapras = 131; local snorlax = 143; local sudowoodo = 185; local lugia = 249; local hooh = 250; local celebi = 251
local atkdef
local spespc
local delay = 1000
local species
local catch_flag
local enemy_addr
local version = memory.readbyte(0x141)
local region = memory.readbyte(0x142)
if version == 0x54 then
    catch_flag = 0xc10a
    if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
        print("EUR Crystal detected")
        enemy_addr = 0xd20c
    elseif region == 0x45 then
        print("USA Crystal detected")
        enemy_addr = 0xd20c
    elseif region == 0x4A then
        print("JPN Crystal detected")
        enemy_addr = 0xd23d
    end
elseif version == 0x55 or version == 0x58 then
    catch_flag = 0xc00a
    if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
        print("EUR Gold/Silver detected")
        enemy_addr = 0xd0f5
    elseif region == 0x45 then
        print("USA Gold/Silver detected")
        enemy_addr = 0xd0f5
    elseif region == 0x4A then
        print("JPN Gold/Silver detected")
        enemy_addr = 0xd0e7
    elseif region == 0x4B then
        print("KOR Gold/Silver detected")
        enemy_addr = 0xd1b2
    end
else
    print(string.format("Unknown version, code: %4x", version))
    print("Script stopped")
    return
end

local species_addr = enemy_addr - 0x8
local dv_flag_addr = enemy_addr + 0x21

function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then
            return true
        end
    end
    return false
end

function press(button, delay)
    i = 0
    while i < delay do
        joypad.set(1, button)
        i = i + 1
        emu.frameadvance()
    end
end

local isshiny = 0
local state = savestate.create()
while true do
	if isshiny == 1 then
		break
    end
    savestate.save(state)
    while memory.readbyte(dv_flag_addr) ~= 0x01 do
        joypad.set(1, {A=true})
        emu.frameadvance()
    end
	
    atkdef = memory.readbyte(enemy_addr)
    spespc = memory.readbyte(enemy_addr + 1)
	species = memory.readbyte(species_addr)
	
    if shiny(atkdef, spespc) then
		print("")
        if electrode == species then
			print("Shiny Electrode!")
        elseif lapras == species then
			print("Shiny Lapras!")
        elseif snorlax == species then
			print("Shiny Snorlax!")
        elseif sudowoodo == species then
			print("Shiny Sudowoodo!")
		elseif hooh == species then
			print("Shiny Ho-Oh!")
        elseif lugia == species then
			print("Shiny Lugia!")
        elseif celebi == species then
			print("Shiny Celebi!")
        end
		print(string.format("Atk/Def/Spe/Spc: %d/%d/%d/%d", math.floor(atkdef/16), atkdef%16, math.floor(spespc/16), spespc%16))
		print(os.date ("%c")) --> 25/04/07 10:10:05
		print("")
        savestate.save(state)
        isshiny = 1
        break
    else
        savestate.load(state)
    end
    emu.frameadvance()
    emu.frameadvance()
end

-- Capture: make sure you have Poké Balls.
i = 0
while i < delay do
        i = i + 1
        emu.frameadvance()
end
if pause == 1 then
    print("Emulator paused. Press Ctrl + P to un-pause!")
    vba.pause()
end
press({A = true}, 200); press({A = false}, 200)
press({down = true}, 160); press({down = false}, 160)
press({A = true}, 16); press({A = false}, 16)
press({right = true}, 16); press({right = false}, 16)
press({A = true}, 16); press({A = false}, 16)

local state = savestate.create()
-- Start throwing balls
print("Attempting capture...")
local state = savestate.create()
while true do
    savestate.save(state)
    joypad.set(1, {A=true})
    for i = 1, delay do
        emu.frameadvance()
    end
    if memory.readword(catch_flag) ~= 0 then
        print("Gotcha!")
        return
    else
        savestate.load(state)
    end
    emu.frameadvance()
end
