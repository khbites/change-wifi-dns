change-wifi-dns
===============

Windows Batch File to change between Google DNS and DHCP DNS (Documentation in German)

Da ich das Tool für mich und meine Frau geschrieben habe, folgt der Rest der Dokumentation auf Deutsch

= Wofür =

Gestern bin ich in einem Cafe mit WLAN gesessen und nicht in das Internet gekommen. Grund war, das ich zuerst die Datenschutzbestimmungen auf einer Splashpage bestätigen musste.
Da ich aber aus Geschwindigkeitsgründen für zu Hause die Google Public DNS Server (8.8.8.8 und 8.8.4.4 siehe https://developers.google.com/speed/public-dns/) eingerichtet habe, hat die Umleitung nicht funktioniert.
Mit diesem Tool kann man die DHCP DNS Server (das bedeutet meist der WLAN Router selbst) einstellen.
Sobald das Internet dann geht, kann man wieder auf die Google DNS umstellen.

= Beispiel =

```
PS C:\Users\khbites\Documents\change-wifi-dns> .\set-dns.bat
"Aktuelle Einstellung"

Configuration for interface "WiFi"
    Statically Configured DNS Servers:    8.8.8.8
                                          8.8.4.4
    Register with which suffix:           Primary only

(G)oogle oder (D)HCP DNS Name Server?
G oder D: d
"DHCP Nameserver weden eingestellt"

"Aktuelle Einstellung"

Configuration for interface "WiFi"
    DNS servers configured through DHCP:  10.0.0.138
    Register with which suffix:           Primary only

Press any key to continue . . .
```

= Benutzung =

Beim Aufruf zeigt das Skript die aktuelle DNS Einstellung an und fragt dann nach (G)oogle oder (D)hcp
Danach wird mit Hilfe des "netsh interface" Kommandos der DNS umgestelt und das Ergebnis angezeigt.

= WiFi Wlan Name =

Aktuell geht das Skript davon aus, dass der Name deines WLAN "WiFi" ist.
Entweder du änderst den entsprechenden Text in der BAT Datei, oder du änderst den Namen deines WLAN:

Für Windows 8.1
1) Rechte Maustaste auf das WLAN Symbol im System Tray
2) Letzte Option (Open Network and Sharing Center) wählen
3) Auf der rechten Seite "Change Adapter Settings" im nun erscheinenden Fenster wählen
4) Rechte Maustaste auf das WLAN und Umbennen (Rename) auswählen
5) WLAN auf "WiFi" umbenennen und ENTER drücken
