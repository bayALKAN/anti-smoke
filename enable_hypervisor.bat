@echo off
echo ================================================
echo Android Emulator Hypervisor Sorunu Cozum
echo ================================================
echo.
echo Bu script YONETICI olarak calistirilmalidir!
echo.
echo Lutfen sag tiklayin ve "Yonetici olarak calistir" secin.
echo.
pause
echo.
echo Windows Hypervisor ozellikleri etkinlestiriliyor...
echo.

dism.exe /Online /Enable-Feature /FeatureName:HypervisorPlatform /All /NoRestart
dism.exe /Online /Enable-Feature /FeatureName:VirtualMachinePlatform /All /NoRestart

echo.
echo ================================================
echo TAMAMLANDI!
echo ================================================
echo.
echo Simdi bilgisayari YENIDEN BASLATIN.
echo.
echo Yeniden baslatma sonrasi emulator calisacak.
echo.
pause
