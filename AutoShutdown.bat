@echo off 
:Main
echo **************************************
echo *           自動關機工具             *
echo *           作者: 江宗寰             *
echo *           版本: 1.0                *
echo **************************************
@echo:

echo 選擇功能
echo a.設定自動關機時間
echo b.取消自動關機
echo c.直接關機
echo d.關閉
@echo:

set /p input=請輸入選擇功能代號：
if "%input%"=="a" goto SetShutDown
if "%input%"=="b" goto Cancel
if "%input%"=="c" goto ShutDown
if "%input%"=="d" goto Close
goto Error
pause
exit 

:SetShutDown
cls
echo a.設定自動關機時間
set /p var=請輸入分鐘 : 
set /a digit=%var%*60
if %digit%==0 goto Error
shutdown /s /t %digit%
echo 設定關機時間為 %var% 分鐘
pause
cls
goto Main
exit 

:Cancel 
cls
echo B.取消自動關機
shutdown /a
echo 已取消關機
pause
cls
goto Main
exit

:ShutDown
cls
echo c.直接關機
Set /p ask=是否直接關機(y/n)
if "%ask%"=="y" shutdown -s -t 0
if "%ask%"=="y" goto Main
goto Error

:Close
echo d.關閉
echo 即將關閉
pause
exit

:Error
cls
echo ********************
echo 輸入錯誤回到選擇功能
echo ********************
@echo:
goto Main
pause