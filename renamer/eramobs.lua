--[[
    --------------------------------------------------------------------------
    Notes:

      Each zone has a maximum of 4095 entities.
      The first entry of each zone is a Dummy, the next 1023 are usable as NPC's or Monsters.
      Most zones don't even come anywhere close to using even half that.
      After that are 2 more segments, one for players and one for temporary objects (like pets).

      I have marked the "Dummy" and the last ID that can be a MOB/NPC for example purposes.
      Simply add additional lines between them to rename the object with the matching ID.
      Maximum name length is 28 characters. Don't forget the comma after each entry!

    --------------------------------------------------------------------------
]]

ObjectList =
{
    --[[
    [zone ID] =
    -- EXAMPLE
    {
        { object ID, "name" },
        { object ID, "name" },
        { object ID, "name" }
    },
    ]]
    [4] =
    -- Bibiki Bay
    {
        {16793802, "Tropical_Rarab"},
        {16793804, "Tropical_Rarab"},
        {16793807, "Tropical_Rarab"},
        {16793808, "Tropical_Rarab"},
        {16793809, "Tropical_Rarab"},
        {16793814, "Tropical_Rarab"},
        {16793841, "Tropical_Rarab"},
        {16793842, "Tropical_Rarab"},
        {16793848, "Tropical_Rarab"},
        {16793803, "Catoblepas"},
        {16793806, "Catoblepas"},
        {16793812, "Catoblepas"},
        {16793813, "Catoblepas"},
        {16793815, "Catoblepas"},
        {16793816, "Catoblepas"},
        {16793817, "Catoblepas"},
        {16793821, "Catoblepas"},
        {16793822, "Catoblepas"},
        {16793839, "Catoblepas"},
        {16793840, "Catoblepas"},
        {16793823, "Tartarus_Eft"},
        {16793824, "Tartarus_Eft"},
        {16793825, "Tartarus_Eft"},
        {16793826, "Tartarus_Eft"},
        {16793829, "Tartarus_Eft"},
        {16793830, "Tartarus_Eft"},
        {16793831, "Tartarus_Eft"},
        {16793832, "Tartarus_Eft"},
        {16793835, "Tartarus_Eft"},
        {16793836, "Tartarus_Eft"},
        {16793843, "Tartarus_Eft"},
        {16793844, "Tartarus_Eft"},
        {16793849, "Tartarus_Eft"},
        {16793854, "Tartarus_Eft"},
        {16793855, "Tartarus_Eft"},
        {16793856, "Tartarus_Eft"}
    },
    [5] =
    -- Uleguerand Range
    {
        {16797929, "Smolenkos"},
        {16797930, "Smolenkos"},
        {16797931, "Smolenkos"},
        {16797932, "Smolenkos"},
        {16797933, "Smolenkos"},
        {16797934, "Smolenkos"},
        {16797935, "Smolenkos"},
        {16797936, "Smolenkos"},
        {16797937, "Smolenkos"},
        {16797938, "Smolenkos"},
        {16797939, "Smolenkos"},
        {16797940, "Smolenkos"},
        {16797941, "Smolenkos"},
        {16797942, "Smolenkos"},
        {16797943, "Smolenkos"},
        {16797944, "Smolenkos"},
        {16797945, "Smolenkos"},
        {16797946, "Smolenkos"},
        {16797947, "Smolenkos"},
        {16797948, "Smolenkos"},
        {16797949, "Smolenkos"},
        {16797950, "Smolenkos"},
        {16797951, "Smolenkos"},
        {16797952, "Smolenkos"},
        {16797953, "Smolenkos"},
        {16797954, "Smolenkos"},
        {16797955, "Smolenkos"}
    },
    [153] = 
    -- The Boyahda Tree
    {
        {17404236, "Processionaire"},
        {17404237, "Processionaire"},
        {17404238, "Processionaire"},
        {17404241, "Processionaire"},
        {17404242, "Processionaire"},
        {17404243, "Processionaire"},
        {17404245, "Processionaire"},
        {17404246, "Processionaire"},
        {17404247, "Processionaire"},
        {17404239, "Darter"},
        {17404240, "Darter"},
        {17404244, "Darter"},
        {17404248, "Darter"},
        {17404249, "Darter"},
        {17404252, "Darter"},
        {17404253, "Darter"},
        {17404256, "Darter"},
        {17404260, "Darter"},
        {17404264, "Darter"},
        {17404265, "Darter"},
        {17404250, "Blood_Ball"},
        {17404251, "Blood_Ball"},
        {17404254, "Blood_Ball"},
        {17404255, "Blood_Ball"},
        {17404258, "Blood_Ball"},
        {17404259, "Blood_Ball"},
        {17404262, "Blood_Ball"},
        {17404263, "Blood_Ball"}
    },
    [173] =
    -- Korroloka_Tunnel
    {
        {17486103, "Thread_Leech"},
        {17486104, "Thread_Leech"},
        {17486105, "Thread_Leech"},
        {17486106, "Thread_Leech"},
        {17486107, "Thread_Leech"},
        {17486108, "Thread_Leech"},
        {17486109, "Thread_Leech"},
        {17486140, "Thread_Leech"},
        {17486141, "Thread_Leech"},
        {17486097, "Clipper"},
        {17486098, "Clipper"},
        {17486099, "Clipper"},
        {17486100, "Clipper"},
        {17486101, "Clipper"},
        {17486102, "Clipper"},
        {17486110, "Clipper"},
        {17486131, "Clipper"},
        {17486132, "Clipper"},
        {17486133, "Clipper"},
        {17486134, "Clipper"},
        {17486135, "Clipper"},
        {17486136, "Clipper"},
        {17486137, "Clipper"},
        {17486138, "Clipper"},
        {17486139, "Clipper"},
        {17486142, "Clipper"},
        {17486143, "Clipper"}
    },
    [174] = 
    -- Kuftal Tunnel
    {
        {17490113, "Ovinnik"},
        {17490114, "Ovinnik"},
        {17490119, "Ovinnik"},
        {17490121, "Ovinnik"},
        {17490123, "Ovinnik"},
        {17490124, "Ovinnik"},
        {17490127, "Ovinnik"},
        {17490128, "Ovinnik"},
        {17490131, "Ovinnik"},
        {17490132, "Ovinnik"},
        {17490134, "Ovinnik"},
        {17490135, "Ovinnik"},
        {17490136, "Ovinnik"},
        {17490111, "Kuftal Digger"},
        {17490112, "Kuftal Digger"},
        {17490115, "Kuftal Digger"},
        {17490116, "Kuftal Digger"},
        {17490117, "Kuftal Digger"},
        {17490118, "Kuftal Digger"},
        {17490120, "Kuftal Digger"},
        {17490122, "Kuftal Digger"},
        {17490125, "Kuftal Digger"},
        {17490126, "Kuftal Digger"},
        {17490129, "Kuftal Digger"},
        {17490130, "Kuftal Digger"},
        {17490133, "Kuftal Digger"},
        {17490137, "Kuftal Digger"},
        {17490138, "Kuftal Digger"},
    },
    [178] = 
    -- The Shrine of Ru'Avitau
    {
        {17506650, "Aura Statue"},
        {17506655, "Aura Statue"},
        {17506656, "Aura Statue"},
        {17506661, "Aura Statue"},
        {17506666, "Aura Statue"},
    },
    [212] = 
    -- Gustav Tunnel
    {
        {17645680, "Demonic Pugil"},
        {17645688, "Demonic Pugil"},
        {17645689, "Demonic Pugil"},
        {17645690, "Demonic Pugil"},
        {17645678, "Doom Warlock"},
        {17645682, "Doom Warlock"},
        {17645684, "Doom Warlock"},
        {17645686, "Doom Warlock"},
        {17645692, "Doom Warlock"},
        {17645674, "Doom Guard"},
        {17645677, "Doom Guard"},
        {17645683, "Doom Guard"},
        {17645685, "Doom Guard"},
        {17645696, "Doom Guard"},
        {17645676, "Typhoon Wyvern"},
        {17645681, "Typhoon Wyvern"},
        {17645691, "Typhoon Wyvern"},
        {17645693, "Erlik"},
        {17645694, "Erlik"},
        {17645695, "Erlik"},
    },
    [213] = 
    -- Labyrinth of Onzozo
    {
        {17649847, "Goblin Shepherd"},
        {17649849, "Goblin Shepherd"},
        {17649848, "Goblin Mercenary"},
        {17649853, "Goblin Mercenary"},
        {17649854, "Goblin Bandit"},
        {17649855, "Goblin Bandit"},
        {17649850, "Goblin Bandit"},
        {17649851, "Goblin Alchemist"},
        {17649856, "Goblin Alchemist"}
    },
};