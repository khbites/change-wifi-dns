@echo off

echo "Aktuelle Einstellung"
 netsh interface ip show dnsservers "WiFi"

echo (G)oogle oder (D)HCP DNS Name Server?

set /P id=G oder D: %=%


if /i %id% EQU g goto :google
if /i %id% EQU d goto :dhcp

echo "Ungueltige Auswahl '%id%'"
goto :end

:google
echo "Google Nameserver werden eingestellt"
netsh interface ip add dns "WiFi" 8.8.8.8
netsh interface ip add dns "WiFi" 8.8.4.4 index=2
goto :end

:dhcp
echo "DHCP Nameserver weden eingestellt"
netsh interface ip set dns name="WiFi" dhcp
goto :end

:end
echo "Aktuelle Einstellung"
 netsh interface ip show dnsservers "WiFi"
pause