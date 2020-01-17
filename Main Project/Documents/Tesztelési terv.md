# Tesztelési terv 
### Main Project

|  Dokumentum címe: (azonosítója) |  AFP-RIP - "Main Project" |
|---|:-:|
| **Minősítés: (állapot)**  |  Jóváhagyott |
| **Verziószám:**  |  ALFA 0.1 |
| **Projekt név:** |  Main Project |
| **Készítette:** | Rip team |
| **Utolsó mentés kelte:** | 2019.12.9 @ 15:47  |
| **Dokumentum célja:** | A projekt aktualis állapotának bemutatása   |
| **Fájlnév** | Tesztelesi_ter.md |

### Projektben résztvevő fejlesztők:

|  Név | Szerepkör |
|---|:-:|
| Répás Kristóf  |  Projekt manager |
| Buros Bence  |  Vezető fejlesztő|
| Molnár Alex| PHP fejlesztő |
| Kiss Mián |  CSS designer, Test manager |
| Tolvaj Balázs:  | CSS designer |

## 1. Bevezetés
Az adott projekt egy PHP / MYSQL alapú hírportál. Tesztelés célja a projektben megtalálható struktúrális és dizányn hibák feltárása.

### 1.1 Tesztelési terv hatóköre, célja:

- A tesztelési terv célja a tesztelés teljes körűségének biztosítása, a tesztelés során alkalmazott eljárások és megoldások meghatározásával.
- A teszt végrehajtásáért ez esetben a test manager fele (Kiss Milán), és a tesztekést azt általa összeállított tesztcsapat hajtja végre a 2.1. fejezetben meghatározott módon.

### 1.2 Elvárások
#### Az alábbi alap elvárások képezik ennek a teszttervnek az alapját:
- Az olvasó ismeri az alapdokumentumokat, amelyek meghatározzák a rendszert. 
- Az **AFP - RIP** szervezeti egység / projektcsapat felelős a tesztadatok előállításáért.

## 2 Szükséges erőforrások
Ez a fejezet a teszteléshez szükséges erőforrásokat fejti ki.

### 2.1 Feladatkörök és felelősségek (tesztcsapat meghatározása)
| Feladatkör  |  Felelősség/tevékenység |  Személy  |
|---|---|---|
|  **Tesztelő, Teszt-koordinátor:** |  A teszt végrehajtása, észrevételek dokumentálása, teszt dokumentáció archiválása.Teszt terv készítése.  A tesztterv jóváhagyatása a projektmenedzserrel.  Teszt forgatókönyvek létrehozása  Inkonzisztenciák kezelése.  Helyes és időbeni hibakezelés.  Szükség esetén problémák eszkalálása a projekt menedzsernek.  Végső riport készítése.  Teszt dokumentum archiválása.  Az észrevételek státuszának követése, ill. dokumentálása |  Kiss Milán |
| **Szakértő:**  |  A szakértő az észrevételek elemzi és megoldást javasol. |  Burus Bence  |
|**Projektvezető:**| Teszt terv jóváhagyása  Teszt forgatókönyv (testscript)| Répás Kristóf |

### 2.2 Tesztkörnyezet
| Környezet neve és feladata  |  A hozzáférés módja | Konfiguráció  |
|---|---|---|
| PHP 7.2 | Offline - Szabad szoftver | Windows 10 - alapértemezett beállítások |
| MYSQL workbench  | Offline - Szabad szoftver | Windows 10 - alapértemezett beállítások |

### 2.3 Tesztadatok
A teszt végrehajtásához szükséges rekordok (tesztadatok) száma: 3
A tesztadatok elkészítéséért és feltöltéséért felelős személy: Kiss Milán

A tesztadatoknak az alábbi követelményeknek kell megfelelniük:
- A weboldal tartalmaz egy szöveg szerkesztő modult a használhatához szükséges legalább egy a rendszer kitériumainak megfelelő "helyi" felhasználói fiók szügséges.
- A weboldal egyes funkcióit csak is a megfelő jogosultságú "helyi" fiókkal érhető el.
- Az adatbázisba felvitt adatoknak csak is az UTF-8 kódtáblában található karaktereket szabad tartalmaznia.

### 2.4 Leszállítandó teszt dokumentumok
Az összes teszt dokumentáció és leszállítandó a következő helyen érhető el: [LINK](https://github.com/afplabor2019/rip/tree/master/Main%20Project/Documents)

| Cím  |  Felelős személy | Szállítási gyakorisága  | Szállítás módja |
|---|---|---|---|
|  **Teszt terv:** |  Kiss Milán |  Egyszeri |  github repository |
|  **Teszt-esetek:** | Kiss Milán  |  Heti | github repository  |
|  **Tesztjegyzőkönyvek:** |  Kiss Milán |  Heti |  github repository |
|  **Tesztelési jelentés:** |  Kiss Milán |  2 Hetente  |  github repository |

### 2.5 Tesztelési eszközök
- XAMPP *webszerver-szoftvercsomag* [LINK](https://www.apachefriends.org/hu/index.html)
  - PHP 7.2
  - PHP MyAdmin (MarinaDB)
- CSS validator *online css validator* [LINK](https://jigsaw.w3.org/css-validator/)

## 3 Tesztelési terv
Ez a fejezet leírja a teszt típusát, a metodológiáját és a riport készítés módszerét. Emellett meghatározza a teszt elvárásokat, a teszt-esetek elvárt eredményeit, sikerességének kritériumait, a kockázatok kezelését és a hatáskörön kívül eseteket.

### 3.1 Fejlesztői teszt
A fejlesztői tesztelés célja a rendszer alapvető funkcióinak ellenőrzése, a hibakezelés és az alapvető funkciók működésének vizsgálata
**Módszere:**
A webalkalmazsá SQL adatbázisa "DUMMY" (*Nem valós*) adatokkal kerül feltültésre a tesztelés adat.
Ezen adatok többségét úgynevett "Lorem Ipsum" típusú véletlenül generált szöveg teszi ki.

### 3.2 Prototípus (modul) teszt
A prototípustesztelés (vagy másik nevén modultesztelés) célja a rendszer már működő moduljainak önálló tesztelése, a modulon belüli hibák azonosításának és kiküszöbölésének érdekében. 
**Módszere:** 
A program több egymásal összefügő, össze hangolt PHP kódszegmenekből épül fel amelyek mindegyik egy önálló fájl. A szegmensek validálása egyénileg történik. A tesztelés visszont a szegmensek föggőségeire is ki terjed.

### 3.3 Integrációs teszt
Az integrációs teszt célja a rendszer más rendszerekhez történő illesztésének vizsgálata, a több rendszereken keresztül átívelő funkciók tesztelésének érdekében. Az adatmigrációs tesztelés az integrációs teszteléshez tartozik, ennek lényege, hogy a bevezetendő rendszerbe áttöltik azokat az adatokat, amelyekkel a rendszer dolgozni fog és letesztelik a betöltött adatok, illetve az adatokat kezelő funkciók helyességét. 
**Módszere:**
A webalkalmazás adatbázisába valós adatok kerülnek betöltésre.

### 3.4 Elfogadási teszt
Az elfogadási teszt (angolul User Acceptance Test) célja a rendszer teljes funkcionalitásának vizsgálata a felhasználók szemszögéből
**Módszere:**
A teszt egy kontrol csoportal zajlik, egy külső cégen keresztül.

### 3.5 Terheléses teszt
A terheléses teszt célja a tervezett kapacitások, valamint a rendelkezésre álló növekedési potenciál meghatározása.
**Módszere:**
A próba telepítést követően egy meghívott teszt közönéggel zajlik, szimulálva egy átlagos napi használatot.

### 3.6 Biztonsági teszt (audit):
Biztonsági tesztelésre akkor van szükség, ha a rendszer szenzitív (pl. személyes vagy pénzügyi) adatokat kezel, vagy szabadon elérhető az internetről. 
**Módszere:**
A tesztett egy megbízott külső cég végzi.

### 3.7 Go live teszt
A go-live teszt egy próbaélesítés, melynek során a korábbi rendszerek továbbra is üzemelnek annak érdekében, hogy az élesítéskor keletkező problémák ne befolyásolják a normál üzemi működést.
**Módszere:**
A próba telepítés a megrendelő által választott webtárhelyen történik, a weboldalt a jövőben üzemeltető adminisztrátorok közreműködésével.

### 3.8 Tesztelési feladatok, teszt-esetek leírása
A tesztelési feladat a következő teszt-eseteket foglalja magában:
- Fejlesztői teszt
- Prototípus (modul)

## 4 Tesztelési ütemterv, függőségek – tesztforgatókönyv
### 4.1 Tesztelési jegyzőkönyv
A tesztelők a tesztforgatókönyvnek megfelelően elvégzik a tesztelést és az eredményt tesztjegyzőkönyvekben dokumentálják. A teszt kimenetelést minden esetben jelenteni kell a tesztkoordinátornak. A tesztkoordinátor a szakértőkkel együtt megoldást keres a problémákra, majd frissíti a tesztforgatókönyvet. Ha a problémát megoldották, a tesztelő újrakezdheti a tesztelést, majd dokumentálja az eredményeket. Ha a hiba továbbra is fennáll, és harmadik félen múlik a megoldása eszkalálni kell a problémát a projekt menedzsernek. 

### 4.2 Tesztelési jelentés
A tesztelési jelentést a tesztkoordinátor készíti el. Ez egy részletes áttekintése a lefutott teszteknek, azok eredményeinek, státuszának és a megjegyzéseknek.
A tesztkoordinátor juttatja el a projektmenedzsernek a tesztelési jelentést. 

### 4.3 Tesztelt elvárások 
Az alábbi funkcionális elvárások szerepelnek az üzleti illetve fejlesztői specifikációban, amelyek tesztelésre is kerültek: 
> A dokumentum átdolgozás alatt (Hiányzó tesztelési elvárás a üzleti illetve fejlesztői specifikációban).

| #  | Leírás |
|---|---|
| 1. |   |
| 2. |   |
| 3. |   |

Az alábbi nem-funkcionális elvárások szerepelnek az üzleti illetve fejlesztői specifikációban, amelyek tesztelésre is kerültek: 
| #  | Leírás |
|---|---|
| 1. |  CSS integritás |
| 2. |  bejletkezés,regisztráció funkcó tesztelése|
| 3. |  cikk szerkesztő funkció tesztelése |
| 4. |  cikkek megfelő tárolás és megjelenítése |

Az alábbi elvárások szerepelnek az üzleti illetve fejlesztői specifikációban, amelyek nem kerültek tesztelésre: 
> A dokumentum átdolgozás alatt (Hiányzó tesztelési elvárás a üzleti illetve fejlesztői specifikációban).

| #  | Leírás |
|---|---|
| 1. |   |
| 2. |   |
| 3. |   |

### 4.4 Elfogadási kritériumok
- Technikai, a teszt forgatókönyvben leírtak szerint.
- A projekt menedzser jóváhagyása a teszt leszállítandókra

## 5 Tesztjegyzőkönyv
### 5.1 Tesztelési jegyzőkönyv - 1. CSS integritás

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A CSS formázó elemek, menü pontok és opciók ellenörzése |
| A tesztelt folyamat/funkció leírása:  |  A teszt során lépésről lépésre tesztelésre kerülnek a menü pontok továbbá az esetleges esztétikai és formázási hibák tesztelésre kerülnek |
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal |
| A tesztelés dátuma és időpontja:  |  2020.01.06 09:00 |
| A tesztadatok típusa:  | N/A  |
| A tesztet végző személy(ek):  | Kiss Milán  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  Megfelelő formázás |
| A tesztelés eredménye:  | **Nem felelt meg**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 09:00  |

### 5.2 Tesztelési jegyzőkönyv - 2. bejletkezés, regisztráció funkcó tesztelése

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A bejelentkezés menüpont tesztelése |
| A tesztelt folyamat/funkció leírása:  |  A felület viselkedése hibás felhasználónév / jelszó megadása esetén, megfelelő adatok esetén illetve többszöri hibás bevitelekor, továbbá új felhasználó fiók sikeres-e regisztrálása  |
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal |
| A tesztelés dátuma és időpontja:  |  2020.01.06 10:25 |
| A tesztadatok típusa:  | N/A  |
| A tesztet végző személy(ek):  | Kiss Milán  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  A specifikációban taglalt viselkedés |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 11:15  |

### 5.3 Tesztelési jegyzőkönyv - 3. cikk szerkesztő funkció tesztelése

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A szövegszerkesztő modul tesztelése |
| A tesztelt folyamat/funkció leírása:  |  A webolalhoz tartotó szövegszerkesztő funkcióinak teztelése  |
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal, szerkesztői joggal rendelkező felhasználói fiókkal |
| A tesztelés dátuma és időpontja:  |  2020.01.06 11:38 |
| A tesztadatok típusa:  | szöveg  |
| A tesztet végző személy(ek):  | Kiss Milán  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  A szovegszerkesztó optimális működése |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 12:15  |

### 5.4 Tesztelési jegyzőkönyv - 4. cikkek megfelő tárolás és megjelenítése

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A cikkek , és a felhasználók adatai megfelően vannak-e tárolva a program adatbázisában. |
| A tesztelt folyamat/funkció leírása:  | Ékzetes karakterek, hosszab szövegek illetve különleges karaktereket megfelelően kezeli-e a szoftver, SQL adapter|
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal szerkesztői joggal rendelkező felhasználói fiókkal |
| A tesztelés dátuma és időpontja:  |  2020.01.06 13:31 |
| A tesztadatok típusa:  | szöveg |
| A tesztet végző személy(ek):  | Kiss Milán  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  A specifikációban taglalt viselkedés |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 13:58  |

### 5.5 Jóváhagyások

|   |   |
|---|---|
|  Név: |  Répás Kristóf |
|  Szervezeti egység/ beosztás: | Projekt Manager  |
|  Dátum: |  2020.01.07 11:00  |

## 6 Tesztelési jelentés 

### 6.1 Tesztelési jelentés -  1. CSS integritás 
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "Több css formázó elem hiányzik, a weboldal bizonyos kijelző felbontások esetén hibásan tördel, a szerkesztés menüpont nem jelenik meg dinamikusa" |
| A tesztelt folyamatok/funkciók/modulok leírása: |  A teszt során lépésről lépésre tesztelésre kerültek a menü pontok továbbá az esetleges esztétikai és formázási hibák tesztelésre kerültek Modulok: default.css login.css |
| A tesztadatok típusa:  | N/A  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Nem felelt meg**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 09:00  |

### 6.2 Tesztelési jelentés -  2. bejletkezés, regisztráció funkcó tesztelése 
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "A bejentkezés és regisztráció opció lépésről lépésre tesztelésre került hibás és megfelelő adatokkal" |
| A tesztelt folyamatok/funkciók/modulok leírása: | modulok: login.php error.php edit_user.php login.css Auth.php  |
| A tesztadatok típusa:  | N/A  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 12:15  |


### 6.3 Tesztelési jelentés - 3. cikk szerkesztő funkció tesztelése
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "Tesztelés folyamán ellenőrzésre kerültek a szövegszerkesztő alap funkció" |
| A tesztelt folyamatok/funkciók/modulok leírása: | Címsor hozzáadás, karakter kiemelés, megdöntés, megfelelő mentés. modulok: edit.php  |
| A tesztadatok típusa:  | szöveg  |
| A tesztelt rendszer beállításai:  |A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 12:15  |


### 6.4 Tesztelési jelentés - 4. cikkek megfelő tárolás és megjelenítése 
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "Az sql adapter hibátlanul működik. A bevit adatok tárolás megfelelően megy végbe, továbbá az adatok kiolvasása az adatbázisból is megfelelően működik. " |
| A tesztelt folyamatok/funkciók/modulok leírása: | cikk szerkesztő, cikkek betöltése, bejeletkezés modulok: My_loader.php News.php  |
| A tesztadatok típusa:  | szöveg  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Kiss Milán |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.06 13:58  |

### 7 Jóváhagyások

|   |   |
|---|---|
|  Név: |  Répás Kristóf |
|  Szervezeti egység/ beosztás: | Projekt Manager  |
|  Dátum: |  2020.01.07 11:00  |