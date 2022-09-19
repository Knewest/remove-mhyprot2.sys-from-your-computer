set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
sc stop mhyprot2
sc delete mhyprot2
mshta.exe vbscript:Execute("msgbox ""You have successfully removed mhyprot2.sys from your computer.                                                                                                                                       If you get the error message                                                                            'The specified service does not exist as an installed service.'                    that means you did not have the mhyprot2.sys on your computer."",0,""Success!"":close")
exit