--[[
    TEO DOES NOT CARE PUBLIC LICENSE
        Version 1, July 18 2016
    Copyright (C) 2016 TeoTwawki <https://github.com/TeoTwawki>

       Everyone is permitted to copy and distribute verbatim or modified copies of this
       license document, and changing it is allowed as long as the name is changed and
       you neither claim nor imply it or the associated code to be your original work.

    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

    1. You may not represent the license or code this license applies to as your original work.
       This condition DOES NOT apply to any changes you make.

    2. Nothing! Do whatever you want!
       TEO DOES NOT CARE!
]]--

_addon.author   = "TeoTwawki & atom0s";
_addon.name     = "renamer";
_addon.version  = "1.1";

require("common")
require("mathex")

local renamer =
{
    listFile = nil;
    active = false;
}

ashita.register_event("command", function(cmd, nType)
    local args = cmd:args();
    if (#args <= 1 or args[1] ~= "/renamer") then
        return false;
    end

    -- Display current list, if we have one loaded.
    if (#args == 2 and args[2] == "status") then
        if (renamer.listFile ~= nil) then
            print(string.format("Renamer: names from '%s' currently loaded.", renamer.listFile));
        else
            print("Renamer: renaming is not active.");
        end
        return true;
    end

    -- Stop the addon.
    if (#args == 2 and (args[2] == "stop" or args[2] == "unload")) then
        renamer.active = false;
        renamer.listFile = nil;
        print("Renamer: renaming stopped.");
        return true;
    end

    if (#args == 2 and args[2] == "load") then
        print(string.format("Renamer: You must specify a file to load names from."));
        return false;
    end

    -- Load the list.
    if (#args == 3 and args[3] ~= nil and args[2] == "load") then
        -- if (io.open("lists/" .. args[3],"r") ~= nil) then
            package.loaded["lists/" .. args[3]] = nil;
            require("lists/" .. args[3]);
            renamer.active = true;
            print(string.format("Renamer: names from file '%s' loaded.", args[3]));
            if (renamer.listFile == nil) then
                print("Renamer: renaming activated.");
            end
            renamer.listFile = args[3];
            return true;
        --[[
        else
            print(string.format("Renamer: file '%s' not found.", args[3]));
            return false;
        end
        ]]
    end

    print("Usage:");
    print(" /renamer status");
    print("  Displays current loaded list, if any.");
    print(" /renamer load filename");
    print("  Load specified list file.");
    print(" /renamer unload (or) /renamer stop");
    print("  Stop renaming and unload the list.");
    return false;
end);

ashita.register_event("prerender", function()
    -- Don't run this if a name list isn't loaded!
    if (renamer.active == true) then
        local zone_id = AshitaCore:GetDataManager():GetParty():GetMemberZone(0);
        local targetObject = ObjectList[zone_id];
        if (targetObject ~= nil) then
            for _, v in pairs(targetObject) do
                -- Obtain the short ID (Nth object of zone) from its long ID (dat file index number).
                local index = bit.band(v[1], 0x0FFF);
                -- Getting the zone was considered to, but that"s too much extra
                -- processing so we specify zone IDs in our name lists instead.
                AshitaCore:GetDataManager():GetEntity():SetName(index, v[2]); -- Set entity name.
            end
        end
    end

    --[[
        Downside to this is it is called pretty constantly.
        It IS possible to get the objects in the clients memory as it sees them, and rename them on the spot.
        However we currently have no method to do that via ashita"s lua scripts.
    ]]
end);