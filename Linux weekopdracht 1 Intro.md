# Linux - Practicum week 1

In dit practicum gaan we werken aan de basisvaardigheden voor het gebruik van Linux (Unix) en leren we enkele essentiële systeembeheertaken uitvoeren. De opdracht richt zich op het vertrouwd raken met de kernprincipes en het zelfstandig kunnen uitvoeren van beheeractiviteiten binnen een Linux-omgeving. Dit omvat onder andere het werken met de terminal, navigeren door het bestandssysteem, en het uitvoeren van basiscommando’s om informatie op te vragen en systemen te beheren.

De onderdelen van dit practicum omvatten:

1. Basisvaardigheden in Linux (Unix): Hierbij leer je de kernvaardigheden om effectief met Linux (Unix) om te gaan. Dit omvat commando’s voor navigatie, bestandbeheer, en het aanpassen van gebruikersinstellingen.

2. Systeembeheer op Linux (Unix): Je voert enkele eenvoudige systeembeheeractiviteiten uit, zoals het beheren van processen, gebruikersrechten, en systeeminformatie. Dit onderdeel biedt je een fundament voor het beheren van een Linux-systeem.

**Belangrijk**: Bij elk commando dat je uitvoert om een resultaat of antwoord te verkrijgen, is het verplicht om een screenshot te maken van je scherm als bewijs van voortgang. Deze afbeeldingen tonen aan dat de opdracht correct is uitgevoerd en helpen je ook om je resultaten bij te houden.

Verder is het essentieel om al je voortgang en resultaten vast te leggen in een private Git-repository(Bijvoorbeeld op GitHub). Hiermee leer je niet alleen werken met versiebeheer, maar zorg je er ook voor dat alle stappen van je werk overzichtelijk en reproduceerbaar zijn.

Bij voorkeur gebruik je MarkDown, zodat het document ook nog enigszins oogt. Via deze link vind je meer informatie over Markdown op github:
[Basic writing and formatting syntax - GitHub Docs](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

Een manier om gemakkelijk met markdown en git te werken is door in Visual Studio Code(VS Code) een plug-in voor Markdown the instaleren, en vanuit VS Code commits te maken en deze te pushen naar je eigen private Git Repo.


## Inleveren
Zowel de tekstdocumenten als de geproduceerde scripts houden jullie bij op zowel jullie Git repo. De tekstdocumenten en Scripts leveren jullie ook in op de Elo omgeving.

# Opdracht 1 - Basis commando's

## 1 a) Listing:
Met welk commando kun je alle `.java` files op het systeem tonen die voldoen aan de volgende voorwaarden:
1. ze zijn de afgelopen week aangepast
2. ze bevatten de string "Main"

```sudo find / -type f -iname "main.js" -mtime -7```
![1.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\1.png)



## 1 b) Links:
Wat is het verschil tussen een symbolische link en een harde link?\
*Tip*: Wat gebeurt er in beide gevallen als je het doelbestand ('target') van de link verplaatst of verwijdert?

[1b]De hard link word gebruikt om de bestand informatie in tact te houden van het origineel. Het inode
nummer blijft hierbij het zelfde. Een symbolische maakt ook een bestand aan alleen dit bestand is
minder belangrijk omdat het een verwijzing is in plaats van het daadwerkelijke bestand. Een hard
link krijgt dus voorrang op een symbolische bestand ivm dat het naar de daadwerkelijke data kijk ipv
een verwijzing ervan.

## 1 c) Shell:
Hoe kun je zien welke Shell je gebruikt? Hoe heet het startup script?
[1c]Het startup script heet zsh.rc 
![2.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\2.png)
## 1 d) Piping:
Wat is het commando om alle processen met in de PID “100” te tonen?\
(gebruik hierbij o.a. `grep`)
[1d]Het commando ps aux | grep 100
![3.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\3.png)
## 1 e) Path:
Hoe kun je je PATH-variabele aanpassen zodat je niet steeds `./filenaam` hoeft te typen, maar simpelweg `filenaam` kunt gebruiken om een bestand in de huidige directory uit te voeren?\
Wat moet je toevoegen aan je shell startup script om deze wijziging permanent te maken?

[1e]Je kunt met de alias command aliasses aanmaken in de startup file voor command/directories die je
vaak gebruikt.

## 1 f) Manual page:
Hoe kun je in de manual-pagina (met het commando `man`) zoeken naar een specifieke string?\
*Tip*: Standaard gebruikt `man`  de '*less*' pager.\
Wat is het commando om verder te zoeken naar de volgende overeenkomst?\
Hoe kun je een pagina omhoog of omlaag scrollen?

[1f]![4.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\4.png)

## 1 g) default directories:
Wat is het doel van de volgende directories? Geef een korte beschrijving van wat er typisch in deze directories wordt opgeslagen:

`/bin`\bin is een standaard submap van de hoofdmap in Unix-achtige besturingssystemen die de uitvoerbare (dwz kant-en-klare) programma's bevat die beschikbaar moeten zijn om minimale functionaliteit te verkrijgen voor het opstarten (dwz starten) en repareren een systeem.
`/lib`\lib bevat alle bibliotheekbestanden die worden gebruikt
`/media`\Plek voor het overzetten van media bestanden
`/boot`\Het start command van linux voor de bepaalde versie
`/proc`\Word gebruikt bij VM's om informatie te krijgen over bestanden en componenten van de VM
`/mnt`\Is een punt waar bestanden aan koppelen om doorverbonden te worden voornamelijk media bestanden
`/dev`\Word aangemaakt bij het installeren van linux en bevat de standaard programma´s van linux
`/root`\/root laat je overal alles doen ipv sudo wat je maar 1x iets laat doen waardoor het veiliger is
`/sbin`\Staan uitvoerbare bestanden voor alleen de administratieve gebruiker
`/etc`\Bevat veel programma´s met veel gevoelige gegevens waarvan de waardes uit te lezen valt
`/usr`\/usr is een map waar standard programma's en bestanden van de gebruieker staan
`/usr/share`\Is een gelijke map over meerdere OS versies van linux voor geen gelijke behandeling van bestand
`/home`\Will go to the home of the user
`/usr/bin` en `/usr/sbin`\Hier staan alle bruikbare uitvoerbare bestanden
`/var`\Waar linux bestanden en gegevens opslaat tijden het gebruiken van programma's


[1g]

## 1 h) default directories:

Waar vind je de volgende bestanden en wat is hun functie in het systeem?

1. `mount`, `ping`, `rm`, `mkfs`, `fdisk`, `rsyslogd`, `grub` en/of `lilo`

\Deze zijn te vinden in de /etc locatie. /etc/program name

2. De `man`-pagina's (binaries en gecomprimeerde bestanden, zoals `*.gz`)

[1f]![5.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\5.png)

3. Configuratiebestanden voor netwerkinterfaces (interfaces) en hosts (hosts)

De interfaces heb ik niet kunnen vinden


[1h]

# Opdracht 2 - Systeembeheer

## 2 a) Alias instellen voor home-directory
Welk commando kun je gebruiken om ervoor te zorgen dat wanneer je `home` in de console invoert, de huidige directory automatisch navigeert naar je home-directory? Leg uit hoe dit werkt.

```Alias home=’cd/home/’```

## 2 b) Overzicht van gemounte bestandssystemen
Welk commando geeft een overzicht van alle gemounte bestandssystemen en de beschikbare opslagruimte?

![6.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\6.png)

## 2 c) Het doel van `/proc`
Waarvoor worden de bestanden in de `/proc` directory gebruikt? Beschrijf hun algemene functie binnen het systeem.

```/prov bevat bevat informatie over de huidig bezige programma's/functies```



## 2 d) Specifieke bestanden in `/proc`
In de directory `/proc` staan onder andere de volgende virtuele bestanden: `version`, `cpuinfo`, `meminfo`, en `ioports`. Welke informatie geven deze bestanden? Beschrijf kort de inhoud van elk bestand.

```/proc/cpuinfo geeft alle informatie weer over je hardware van je cpu van model tot versie van software```
```/proc/meminfo geeft elk detail weer van het werk geheugen van de pc```
```/proc/ioports geeft alle informatie weer over de alle soorten poorten van de pc ook wanneer er geen optie op de pc voor zit zoals floppy discs```

## 2 e) Device files voor harde schijven
Wat zijn de namen van de device files waarmee de kernel de harde schijven kan benaderen? Geef een overzicht van de naamgevingsconventies voor verschillende typen opslagapparaten (IDE, SATA, SCSI, NVMe).

![7.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\7.png)

## 2 f) Systeemmeldingen bekijken
Met welk commando kun je de laatste belangrijke systeemmeldingen (logs) bekijken? Beschrijf hoe je dit gebruikt om snel toegang te krijgen tot recente meldingen.

-Het top command
![8.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\8.png)

## 2 g) Processen overzicht
Met welk commando kun je een overzicht krijgen van alle lopende processen op het systeem? Leg uit hoe je hiermee processen kunt beheren of controleren.

![9.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\9.png)

## 2 h) Services starten en instellen bij opstarten
Hoe kun je een service starten op het systeem, en hoe stel je een service zo in dat deze automatisch start bij het opstarten van het systeem? Beschrijf de benodigde commando's en de instellingen die hiervoor nodig zijn.

Het commando ```"service (service naam) start"``` vervolgens ```"Sudo chkconfig (service naam)"``` om het aan de startup toe te voegen.

# Opdracht 3 - Performance Monitoring

## 3 a) Overzicht van processen in `top`
Het commando `top` geeft een overzicht van processen en hun resourcegebruik, waarbij standaard wordt gesorteerd op CPU-gebruik. Het sample-interval is standaard ingesteld op 5 seconden.

Met welke toets kun je een "toggle" uitvoeren tussen een enkel overzicht en de "alternate display"? Dit toont een gesorteerd overzicht van de belangrijkste "consumers" van verschillende systeemresources.
```Shift + A```

## 3 b) Analyse met `vmstat`
Het `vmstat`-commando geeft informatie over processen, geheugen, paging, block I/O, traps, en CPU-activiteit. Voer het `vmstat`-commando uit en bekijk de kolommen onder het gedeelte "procs".

1. Wat betekenen de velden "r" en "b" onder het gedeelte "procs"?

"r" het aantal processen in wachtrij voor run time
"b" het aantal processen in slaap

2. Hoeveel interrupts en context switches per seconde worden er ongeveer gemeten?

Er zijn 44 context switches en 27 interupts
![10.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\10.png)

## 3 c) Processor-informatie met `mpstat`
Run het commando `mpstat -A`.

Hoeveel processoren (CPU's) zijn er in je systeem?
Er zijn 4 processors beschikbaar
![11.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\11.png)

# Opdracht 4 - Users en permissies

## 4 a) Uitleg van `rwx` permissies voor directories
Leg uit wat de `rwx`-permissies betekenen wanneer ze worden toegepast op een directory. Beschrijf hoe deze rechten zich verhouden tot de toegangsmogelijkheden voor gebruikers.

Rwx staat voor r(read)w(write)x(execute) dus de volgorde en hoevaak rwx erin staat bepaald de
rechten bij een directory

## 4 b) Rechten instellen op `rwxrwxrwx`
Met welk commando kun je de rechten van een bestand instellen op `rwxrwxrwx`? Beschrijf de stappen en betekenis van de opdracht.

Ik heb een test map gebruikt om met de chmod 777 <map naam> command de map te veranderen
naar een 3x rwx folder te veranderen

## 4 c) Groep van een gebruiker aanpassen
Hoe kun je de primaire groep van een gebruiker wijzigen? Geef een voorbeeld van het commando en leg de syntaxis kort uit.

Deze kreeg ik niet aan het werk maar na wat opzoeken kwam ik dit tegen als het beste antwoord als
voorbeeld
commando's:
Groups gebruiker
Geeft de gebruiker met groep weer
Sudo usermod –g <groepnaam> <gebruiker>
Veranderd de groep van een gebruiker

## 4 d) Gebruikers met eigen SSH-sleutels aanmaken
Creëer drie gebruikers die elk met hun eigen SSH-sleutel kunnen inloggen. Beschrijf de stappen om de gebruikers aan te maken en de SSH-sleutels in te stellen.

![12.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\12.png)

## 4 e) Gebruiker toevoegen aan de `sudoers`-groep
Maak één van de eerder aangemaakte gebruikers lid van de `sudoers`-groep, zodat deze gebruiker beheerrechten krijgt. Geef het benodigde commando en leg uit hoe je kunt verifiëren dat de gebruiker lid is van `sudoers`.

```sudo usermod -a -g sudo lucas```

## 4 f) Gedeelde directory en groep aanmaken
1. Maak in de home-directory van alle drie de gebruikers een directory met de naam `shared_dir`.
2. Creëer een groep genaamd `shared_usr` en maak de drie gebruikers lid van deze groep.
3. Geef de groep lees- en schrijfrechten op de `shared_dir` in elke home-directory.
4. Controleer of de gebruikers elkaar toegang kunnen geven tot hun `shared_dir`-directory.


# Opdracht 5 - Installeren van applicaties

## 5 a) Extracten van `.tgz` en `.tar.gz` bestanden
Veel Linux-software wordt geleverd in een zogenaamde “tarball” met extensies zoals `.tgz` of `.tar.gz`. Welke commando's gebruik je om zo'n bestand uit te pakken? Geef een voorbeeld met uitleg.

```Tar –zxvf <filenaam>.tar.gz```

## 5 b) Overzicht van geïnstalleerde pakketten met `dpkg`
Met welk `dpkg`-commando kun je een lijst van alle geïnstalleerde pakketten opvragen? Beschrijf wat de output bevat en waarvoor dit handig is.

```Dpkg -I```

## 5 c) Bestanden in een pakket opvragen met `dpkg`
Met welk `dpkg`-commando kun je achterhalen welke bestanden er bij het pakket `apache2` horen? Geef een voorbeeld en beschrijf kort hoe de output te interpreteren is.

```Dpkg -p```

## 5 d) Locatie van `apache2` executable
Waar bevindt zich het uitvoerbare bestand (`executable`) voor `apache2`? Leg uit hoe je dit kunt achterhalen.

![13.png](C:\Users\theer\Documents\school\inhaaljaar\linux\Week1\13.png)

## 5 e) Locatie van de `DocumentRoot` variabele
In welk configuratiebestand wordt de `DocumentRoot`-variabele voor `apache2` gedefinieerd? Beschrijf kort hoe je dit bestand kunt vinden en openen.


