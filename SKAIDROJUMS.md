# Skaidrojums par PowerShell praktisko darbu

01. uzdevums: Izvade parāda mana datora konkrēto nosaukumu, izmantotās operētājsistēmas versiju un aktuālo palaisto procesu skaitu skripta izpildes brīdī.
02. uzdevums: Tiek attēloti 10 procesi, kas patērē visvairāk RAM, sakārtoti augošā secībā no mazākā uz lielāko atmiņas apjomu megabaitos, precīzi parādot resursu patēriņu manā datorā.
03. uzdevums: Izmantojot ciklu un nosacījumus, tika saskaitīti darbojošos un apturēto servisu skaitļi, kuru summa pilnībā atbilst kopējam sistēmas servisu saraksta garumam.
04. uzdevums: Skripts atrada automātiskos servisus, kas bija apturēti; simulācijas režīmā ar -WhatIf tika saglabāts fails whatif.txt, savukārt reālā palaišana parādīja, ka daudzus ražotāja fona servisus Windows liedz palaist manuāli.
05. uzdevums: Žurnāla analīze parādīja 20 kļūdu ierakstus pēdējo 48 stundu laikā, no kuriem visbiežāk atkārtojas VBoxNetLwf avots, kas liecina par stabilu datora darbību un virtuālo mašīnu tīkla adapteru specifiku.
06. uzdevums: Visi draiveri, kuru izgatavotājs nav Microsoft, tika eksportēti uz CSV failu, un izvades failā tika norādīts kopējais rindu skaits tajā, kur starp trešo pušu draiveriem izceļas NVIDIA videokartes draiveris.
07. uzdevums: Tika nolasīti datora lokālie diski, izvadīta to brīvā vieta gigabaitos un nostrādāja brīdinājuma nosacījums, ja vieta bija zem izvēlētās robežas.
08. uzdevums: Salīdzinot Get-Service un Get-CimInstance darbības ātrumu, tika iegūti laiki milisekundēs, kas pierādīja, ka specializētā Get-Service komanda manā datorā darbojās ievērojami ātrāk.
09. uzdevums: Mēģinot nolasīt procesu īpašniekus parastajā logā bez administratora tiesībām, sistēma atgrieza ierobežojumus, fiksējot kļūdas paziņojumus un parādot, ka šim uzdevumam pietrūkst paaugstinātu privilēģiju.
10. uzdevums: Apkopojot datus no jauna, iegūtie skaitļi nedaudz atšķīrās no iepriekšējo uzdevumu izvadēm laika nobīdes, fona procesu izmaiņu un sistēmas darbības dinamikas dēļ.
