@echo off 
:Main
echo **************************************
echo *           �۰������u��             *
echo *           �@��: ���v��             *
echo *           ����: 1.0                *
echo **************************************
@echo:

echo ��ܥ\��
echo a.�]�w�۰������ɶ�
echo b.�����۰�����
echo c.��������
echo d.����
@echo:

set /p input=�п�J��ܥ\��N���G
if "%input%"=="a" goto SetShutDown
if "%input%"=="b" goto Cancel
if "%input%"=="c" goto ShutDown
if "%input%"=="d" goto Close
goto Error
pause
exit 

:SetShutDown
cls
echo a.�]�w�۰������ɶ�
set /p var=�п�J���� : 
set /a digit=%var%*60
if %digit%==0 goto Error
shutdown /s /t %digit%
echo �]�w�����ɶ��� %var% ����
pause
cls
goto Main
exit 

:Cancel 
cls
echo B.�����۰�����
shutdown /a
echo �w��������
pause
cls
goto Main
exit

:ShutDown
cls
echo c.��������
Set /p ask=�O�_��������(y/n)
if "%ask%"=="y" shutdown -s -t 0
if "%ask%"=="y" goto Main
goto Error

:Close
echo d.����
echo �Y�N����
pause
exit

:Error
cls
echo ********************
echo ��J���~�^���ܥ\��
echo ********************
@echo:
goto Main
pause