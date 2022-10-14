set filedatetime=%date% // ou qualquer outra data
set filedatetime=%filedatetime:~6,4%%filedatetime:~3,2%%filedatetime:~0,2%
pause
net use x: \\Srv01\todos\Dados
pause
cd X:\
pause
mkdir X:\%filedatetime%
pause
systeminfo > X:/%filedatetime%/%username%.txt
pause
net use x: /delete
