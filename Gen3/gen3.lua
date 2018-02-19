local natureorder={"Atk","Def","Spd","SpAtk","SpDef"}
local naturename={
 "Hardy","Lonely","Brave","Adamant","Naughty",
 "Bold","Docile","Relaxed","Impish","Lax",
 "Timid","Hasty","Serious","Jolly","Naive",
 "Modest","Mild","Quiet","Bashful","Rash",
 "Calm","Gentle","Sassy","Careful","Quirky"}
local typeorder={
 "Fighting","Flying","Poison","Ground",
 "Rock","Bug","Ghost","Steel",
 "Fire","Water","Grass","Electric",
 "Psychic","Ice","Dragon","Dark"}

 local speciesArray = {"None","Bulbasaur","Ivysaur","Venusaur","Charmander","Charmeleon","Charizard","Squirtle","Wartortle","Blastoise","Caterpie","Metapod","Butterfree","Weedle","Kakuna","Beedrill","Pidgey","Pidgeotto","Pidgeot","Rattata","Raticate","Spearow","Fearow","Ekans","Arbok","Pikachu","Raichu","Sandshrew","Sandslash","Nidoran♀","Nidorina","Nidoqueen","Nidoran♂","Nidorino","Nidoking","Clefairy","Clefable","Vulpix","Ninetales","Jigglypuff","Wigglytuff","Zubat","Golbat","Oddish","Gloom","Vileplume","Paras","Parasect","Venonat","Venomoth","Diglett","Dugtrio","Meowth","Persian","Psyduck","Golduck","Mankey","Primeape","Growlithe","Arcanine","Poliwag","Poliwhirl","Poliwrath","Abra","Kadabra","Alakazam","Machop","Machoke","Machamp","Bellsprout","Weepinbell","Victreebel","Tentacool","Tentacruel","Geodude","Graveler","Golem","Ponyta","Rapidash","Slowpoke","Slowbro","Magnemite","Magneton","Farfetch'd","Doduo","Dodrio","Seel","Dewgong","Grimer","Muk","Shellder","Cloyster","Gastly","Haunter","Gengar","Onix","Drowzee","Hypno","Krabby","Kingler","Voltorb","Electrode","Exeggcute","Exeggutor","Cubone","Marowak","Hitmonlee","Hitmonchan","Lickitung","Koffing","Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan","Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","Mr. Mime","Scyther","Jynx","Electabuzz","Magmar","Pinsir","Tauros","Magikarp","Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon","Porygon","Omanyte","Omastar","Kabuto","Kabutops","Aerodactyl","Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair","Dragonite","Mewtwo","Mew","Chikorita","Bayleef","Meganium","Cyndaquil","Quilava","Typhlosion","Totodile","Croconaw","Feraligatr","Sentret","Furret","Hoothoot","Noctowl","Ledyba","Ledian","Spinarak","Ariados","Crobat","Chinchou","Lanturn","Pichu","Cleffa","Igglybuff","Togepi","Togetic","Natu","Xatu","Mareep","Flaaffy","Ampharos","Bellossom","Marill","Azumarill","Sudowoodo","Politoed","Hoppip","Skiploom","Jumpluff","Aipom","Sunkern","Sunflora","Yanma","Wooper","Quagsire","Espeon","Umbreon","Murkrow","Slowking","Misdreavus","Unown","Wobbuffet","Girafarig","Pineco","Forretress","Dunsparce","Gligar","Steelix","Snubbull","Granbull","Qwilfish","Scizor","Shuckle","Heracross","Sneasel","Teddiursa","Ursaring","Slugma","Magcargo","Swinub","Piloswine","Corsola","Remoraid","Octillery","Delibird","Mantine","Skarmory","Houndour","Houndoom","Kingdra","Phanpy","Donphan","Porygon2","Stantler","Smeargle","Tyrogue","Hitmontop","Smoochum","Elekid","Magby","Miltank","Blissey","Raikou","Entei","Suicune","Larvitar","Pupitar","Tyranitar","Lugia","Ho-Oh","Celebi","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","? (glitch Pokémon)","Treecko","Grovyle","Sceptile","Torchic","Combusken","Blaziken","Mudkip","Marshtomp","Swampert","Poochyena","Mightyena","Zigzagoon","Linoone","Wurmple","Silcoon","Beautifly","Cascoon","Dustox","Lotad","Lombre","Ludicolo","Seedot","Nuzleaf","Shiftry","Nincada","Ninjask","Shedinja","Taillow","Swellow","Shroomish","Breloom","Spinda","Wingull","Pelipper","Surskit","Masquerain","Wailmer","Wailord","Skitty","Delcatty","Kecleon","Baltoy","Claydol","Nosepass","Torkoal","Sableye","Barboach","Whiscash","Luvdisc","Corphish","Crawdaunt","Feebas","Milotic","Carvanha","Sharpedo","Trapinch","Vibrava","Flygon","Makuhita","Hariyama","Electrike","Manectric","Numel","Camerupt","Spheal","Sealeo","Walrein","Cacnea","Cacturne","Snorunt","Glalie","Lunatone","Solrock","Azurill","Spoink","Grumpig","Plusle","Minun","Mawile","Meditite","Medicham","Swablu","Altaria","Wynaut","Duskull","Dusclops","Roselia","Slakoth","Vigoroth","Slaking","Gulpin","Swalot","Tropius","Whismur","Loudred","Exploud","Clamperl","Huntail","Gorebyss","Absol","Shuppet","Banette","Seviper","Zangoose","Relicanth","Aron","Lairon","Aggron","Castform","Volbeat","Illumise","Lileep","Cradily","Anorith","Armaldo","Ralts","Kirlia","Gardevoir","Bagon","Shelgon","Salamence","Beldum","Metang","Metagross","Regirock","Regice","Registeel","Kyogre","Groudon","Rayquaza","Latias","Latios","Jirachi","Deoxys","Chimecho","Pokémon Egg","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown","Unown"}


local version=memory.readbyte(0x080000AE)
local region=memory.readbyte(0x080000AF)
local tid
local sid
local party

if version == 0x50 then
	if region == 0x45 then
    party=0x03004360
    wild=0x030045C0
    tid=memory.readwordunsigned(0x02024EAE)
    sid=memory.readwordunsigned(0x02024EB0)
		print("USA Sapphire detected")

	elseif region == 0x49 then
		print("ITA/FRE/GER Sapphire detected")

	elseif region == 0x4A then
		print("JPN Sapphire detected")

	end
elseif version == 0x56 then
	if region == 0x45 then
    party=0x03004360
    wild=0x030045C0
    tid=memory.readwordunsigned(0x02024EAE)
    sid=memory.readwordunsigned(0x02024EB0)
		print("USA Ruby detected")

	elseif region == 0x49 then
		print("ITA/FRE/GER Ruby detected")

	elseif region == 0x4A then
		print("JPN Ruby detected")

	end
elseif version == 0x45 then
	if region == 0x45 then
    party=0x020244EC
    wild=0x02024744
		print("USA Emerald detected")

	elseif region == 0x49 then
		print("ITA/FRE/GER Emerald detected")

	elseif region == 0x4A then
    party=0x02024190
		print("JPN Emerald detected")

	end
elseif version == 0x52 then
	if region == 0x45 then
    party=0x02024284
    wild=0x0202402C
		print("USA FireRed detected")

	elseif region == 0x49 then
		print("ITA/FRE/GER FireRed detected")

	elseif region == 0x4A then
		print("JPN FireRed detected")

	end
elseif version == 0x47 then
	if region == 0x45 then
    --party=0x02024284
    party=0x020241E4
		print("USA LeafGreen detected")

	elseif region == 0x49 then
		print("ITA/FRE/GER LeafGreen detected")

	elseif region == 0x4A then
		print("JPN LeafGreen detected")

	end

else
    print(string.format("Unknown version, code: %4x", version))
    return
end

local personality
local trainerid
local magicword
local growthoffset
local miscoffset
local i

local species
local ivs
local hpiv
local atkiv
local defiv
local spdiv
local spatkiv
local spdefiv
local nature
local natinc
local natdec
local hidpowbase
local hidpowtype

personality=memory.readdwordunsigned(party)

trainerid=memory.readdwordunsigned(party+4)

magicword=bit.bxor(personality, trainerid)

seed=memory.readdwordunsigned(0x03004818)

i=personality%24

if i<=5 then
 growthoffset=0
elseif i%6<=1 then
 growthoffset=12
elseif i%2==0 then
 growthoffset=24
else
 growthoffset=36
end

if i>=18 then
 miscoffset=0
elseif i%6>=4 then
 miscoffset=12
elseif i%2==1 then
 miscoffset=24
else
 miscoffset=36
end

species=bit.band(bit.bxor(memory.readdwordunsigned(party+32+growthoffset),magicword),0xFFF)
level=party+84

ivs=bit.bxor(memory.readdwordunsigned(party+32+miscoffset+4),magicword)

hpiv=bit.band(ivs,0x1F)
atkiv=bit.band(ivs,0x1F*0x20)/0x20
defiv=bit.band(ivs,0x1F*0x400)/0x400
spdiv=bit.band(ivs,0x1F*0x8000)/0x8000
spatkiv=bit.band(ivs,0x1F*0x100000)/0x100000
spdefiv=bit.band(ivs,0x1F*0x2000000)/0x2000000

nature=personality%25
natinc=math.floor(nature/5)
natdec=nature%5

hidpowtype=math.floor(((hpiv%2 + 2*(atkiv%2) + 4*(defiv%2) + 8*(spdiv%2) + 16*(spatkiv%2) + 32*(spdefiv%2))*15)/63)
hidpowbase=math.floor(((bit.band(hpiv,2)/2 + bit.band(atkiv,2) + 2*bit.band(defiv,2) + 4*bit.band(spdiv,2) + 8*bit.band(spatkiv,2) + 16*bit.band(spdefiv,2))*40)/63 + 30)

originaltrainer=(party+20)
print("OT:  " ..string.format("%X", originaltrainer))


function switch()

local keys= input.get()
if keys["1"] then
  partyview()
  print("party")
elseif keys["2"]  then
  wildview()
  print("wild")
end

end

function partyview()
  personality=memory.readdwordunsigned(party)
  print("PID:  "..string.format("%08X", personality))
  level=party+84
  ivs=bit.bxor(memory.readdwordunsigned(party+32+miscoffset+4),magicword)
  trainerid=memory.readdwordunsigned(party+4)
  magicword=bit.bxor(personality, trainerid)
  ivs=bit.bxor(memory.readdwordunsigned(party+32+miscoffset+4),magicword)
  hpiv=bit.band(ivs,0x1F)
  atkiv=bit.band(ivs,0x1F*0x20)/0x20
  defiv=bit.band(ivs,0x1F*0x400)/0x400
  spdiv=bit.band(ivs,0x1F*0x8000)/0x8000
  spatkiv=bit.band(ivs,0x1F*0x100000)/0x100000
  spdefiv=bit.band(ivs,0x1F*0x2000000)/0x2000000

  i=personality%24

  if i<=5 then
   growthoffset=0
  elseif i%6<=1 then
   growthoffset=12
  elseif i%2==0 then
   growthoffset=24
  else
   growthoffset=36
  end

  if i>=18 then
   miscoffset=0
  elseif i%6>=4 then
   miscoffset=12
  elseif i%2==1 then
   miscoffset=24
  else
   miscoffset=36
  end

  nature=personality%25
  natinc=math.floor(nature/5)
  natdec=nature%5

  hidpowtype=math.floor(((hpiv%2 + 2*(atkiv%2) + 4*(defiv%2) + 8*(spdiv%2) + 16*(spatkiv%2) + 32*(spdefiv%2))*15)/63)
  hidpowbase=math.floor(((bit.band(hpiv,2)/2 + bit.band(atkiv,2) + 2*bit.band(defiv,2) + 4*bit.band(spdiv,2) + 8*bit.band(spatkiv,2) + 16*bit.band(spdefiv,2))*40)/63 + 30)

  species=bit.band(bit.bxor(memory.readdwordunsigned(party+32+growthoffset),magicword),0xFFF)

end

function wildview()
  personality=memory.readwordunsigned(wild)
  print("PID:  "..string.format("%08X", personality))
  level=wild+84
  trainerid=memory.readdwordunsigned(wild+4)
  magicword=bit.bxor(personality, trainerid)
  ivs=bit.bxor(memory.readdwordunsigned(wild+32+miscoffset+4),magicword)
  hpiv=bit.band(ivs,0x1F)
  atkiv=bit.band(ivs,0x1F*0x20)/0x20
  defiv=bit.band(ivs,0x1F*0x400)/0x400
  spdiv=bit.band(ivs,0x1F*0x8000)/0x8000
  spatkiv=bit.band(ivs,0x1F*0x100000)/0x100000
  spdefiv=bit.band(ivs,0x1F*0x2000000)/0x2000000

  i=personality%24

  if i<=5 then
   growthoffset=0
  elseif i%6<=1 then
   growthoffset=12
  elseif i%2==0 then
   growthoffset=24
  else
   growthoffset=36
  end

  if i>=18 then
   miscoffset=0
  elseif i%6>=4 then
   miscoffset=12
  elseif i%2==1 then
   miscoffset=24
  else
   miscoffset=36
  end

  species=bit.band(bit.bxor(memory.readdwordunsigned(wild+32+growthoffset),magicword),0xFFF)

  nature=personality%25
  natinc=math.floor(nature/5)
  natdec=nature%5

  hidpowtype=math.floor(((hpiv%2 + 2*(atkiv%2) + 4*(defiv%2) + 8*(spdiv%2) + 16*(spatkiv%2) + 32*(spdefiv%2))*15)/63)
  hidpowbase=math.floor(((bit.band(hpiv,2)/2 + bit.band(atkiv,2) + 2*bit.band(defiv,2) + 4*bit.band(spdiv,2) + 8*bit.band(spatkiv,2) + 16*bit.band(spdefiv,2))*40)/63 + 30)

end



while true do
  switch()

gui.text(5,25,"TID: " ..string.format("%05d", tid))
gui.text(5,35,"SID: " ..string.format("%05d", sid))

gui.text(5, 90, "Species: " ..speciesArray[species+1])
gui.text(5,100, "Lv. " ..string.format("%03d", memory.readbyte(level)))

gui.text(5,110, "PID: " ..string.format("%08X", personality))

gui.text(5,120,"IVs: " ..string.format("%02d/%02d/%02d/%02d/%02d/%02d" ,hpiv, atkiv, defiv, spatkiv, spdefiv, spdiv))

gui.text(5,130,"HP: "..typeorder[hidpowtype+1].." "..hidpowbase)

gui.text(5,140,"Nature: "..naturename[nature+1])

gui.text(5,50,vba.framecount())

gui.text(5,60,"Seed: "..string.format("%8X", seed))

emu.frameadvance()
end
