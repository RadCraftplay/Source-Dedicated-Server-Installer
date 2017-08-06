::    Source Dedicated Server Installer  Copyright (C) 2017 Distroir
::    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
::    This is free software, and you are welcome to redistribute it
::    under certain conditions; type `show c' for details.

::    This program is distributed in the hope that it will be useful,
::    but WITHOUT ANY WARRANTY; without even the implied warranty of
::    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
::    GNU General Public License for more details.

::    You should have received a copy of the GNU General Public License
::    along with this program.  If not, see <http://www.gnu.org/licenses/>.

:: Make output cleaner
@echo off
:: Get variables from config
call config.bat

:: Get path to server executable
set source_server_executable=%steamcmd_dir%\%installation_directory%\srcds.exe
:: Create variable for command line
set command_line=-console -game %game%

:: Add command line arguments specific for CS:GO DS
:: Map group
if %appId% == 740 (	
    if %use_custom_map_group% == 1 (
        set command_line=%command_line% +mapgroup %map_group%
    )
)
::GSLT Token
if %appId% == 740 (
    if %Use_GSLT% == 1 (
        set command_line=%command_line% +sv_setsteamaccount %GSLT% -net_port_try 1
    )
)
::Game mode and game type
if %appId% == 740 (
    set command_line=%command_line% +game_mode %game_mode% +game_type %game_type%
)

:: Add command line arguments
set command_line=%command_line% +map %mapname% +maxplayers %player_count% -autoupdate
:: Launch server
start %source_server_executable% %command_line% %custom_arguments%

::If there was en error - pause application
if ERRORLEVEL 2 pause