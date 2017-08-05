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

::Combine steam executable path
set steamcmd_executable=%steamcmd_dir%\steamcmd.exe

:: Update server
%steamcmd_executable% +login anonymous +force_install_dir %installation_directory% +app_update %appId% +quit

::If there was en error - pause application
if ERRORLEVEL 2 pause