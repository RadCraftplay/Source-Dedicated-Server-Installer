:: Path of SteamCMD directory
:: Or containing SteamCMD.exe file
:: For example: C:\steamcmd
set steamcmd_dir=steamcmd

:: Directory containing server files
:: For example: server
set installation_directory=csgo_ds

:: Aplication Id
:: Examples:
::     740 = CS:GO Dedicated Server
::     232250 = TF2 Dedicated Server
::     4020 = Garry's Mod Dedicated Server
:: More info: https://developer.valvesoftware.com/wiki/Dedicated_Servers_List
set appId=740

:: Game
:: Examples:
::     tf = Team Fortress 2
::     csgo = Counter-Strike: Global Offensive
::     hl2mp = Half-Life: Deathmatch
::     garrysmod = Garry's mod
::     cstrike = Counter-Strike: Source
set game=csgo

:: Map name
:: For example: de_dust2
set mapname=de_dust2

:: Players count
:: For example: 32
set player_count=32

:: CS:GO Dedicated Server ONLY
:: Game mode and game type
:: gm=0, gt=0 = Casual
:: gm=0, gt=1 = Competitive
:: gm=1, gt=0 = Arms Race
:: gm=1, gt=1 = Demolition
:: gm=1, gt=2 = Deathmatch
set game_mode=0
set game_type=0

:: CS:GO Dedicated Server ONLY
:: Use Game Server Login Token
:: More info: https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers#Registering_Game_Server_Login_Token
:: Values:
::     0 = GSLT disabled
::     1 = GSLT enabled
set Use_GSLT=0

:: CS:GO Dedicated Server ONLY
:: Game Server Login Token
:: More info: https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers#Registering_Game_Server_Login_Token
:: Get your token: http://steamcommunity.com/dev/managegameservers
set GSLT=

:: CS:GO Dedicated Server ONLY
:: Use custom map group?
:: Values:
::     0 = No (mapcycle.txt will be used instead)
::     1 = Yes
set use_custom_map_group=0

:: CS:GO Dedicated Server ONLY
:: Sets map group
:: Examples:
::     mg_active = Active map pool
::     mg_bomb = Defusal mode map pool
::     mg_dust = Dust map pool
::     mg_de_dust2 = Dust 2 map pool
::     mg_hostage = Hostage map pool
::     mg_armsrace = Arms Race map pool
::     mg_demolition = Demolition map pool
set map_group=mg_active

:: CSGO and TF2 dedicated server only (for now)
:: Sets bot difficulty
:: Values:
::     0 = easy
::     1 = normal
::     2 = hard
set bot_difficulty=1

:: For advanced users
:: Additional command line arguments to server executable
:: For example: +exec autoexec.cfg
set custom_arguments=