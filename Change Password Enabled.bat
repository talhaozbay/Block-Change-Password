@echo off
:: Yönetici olarak çalıştırmalısınız

echo Disabling Windows Hello for Business...
reg add "HKLM\SOFTWARE\Policies\Microsoft\PassportForWork" /v "Enabled" /t REG_DWORD /d 1 /f

echo Disabling Convenience PIN Sign-in...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowDomainPINLogon" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowSignInOptions" /t REG_DWORD /d 1 /f

echo Disabling Security Key Sign-in...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSecurityKeySignIn" /t REG_DWORD /d 1 /f

echo Disabling Picture Password Sign-in...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "BlockDomainPicturePassword" /t REG_DWORD /d 0 /f

echo Disabling Change Password Option from Ctrl+Alt+Del...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableChangePassword" /t REG_DWORD /d 0 /f

echo All policies applied. Please restart your PC for all changes to take effect.


IF %ERRORLEVEL% EQU 0 (
    echo [+] Basariyla guncellendi.
) ELSE (
    color 0C
    echo [X] Hata olustu! Yonetici olarak calistirdiginizdan emin olun.
    pause
    exit /b
)

color 0A
CHOICE /M "Bilgisayar yeniden baslatilsin mi?"

IF ERRORLEVEL 2 (
    echo [!] Yeniden baslatma iptal edildi.
) ELSE (
    echo [>] Bilgisayar yeniden baslatiliyor...
    shutdown /r /t 5
)


pause
