# "KIS projekt"
## Testelési terv
#### RIP csapat

**Minősítés: (állapot):** *Jóváhagyott*
**Verziószám:** *1.0*
**Projekt név:** *"KIS"*
**Készítette:** *RIP*
**Utolsó mentés kelte:** *2019.10.09 "Szerda"*
**Dokumentum célja:** *A projekt aktualis hibáinak feltárása*
**Fájlnév:** *Teszt terv.md*

|  Név | Szerepkör |
|---|:-:|
| Répás Kristóf  |  Projekt manager |
| Buros Bence  |  Vezető fejlesztő|
| Molnár Alex| Fejlesztő |
| Tolvaj Balázs:  | Fejlesztő |
| Kiss Mián | Fejlesztő |

## 1.0
#### Bevezetés
A projekt egy mySQL és C# alapú közösségi oldal.
Tesztelés célja a projektben megtalálható struktúrális és dizányn hibák feltárása.

### 1.1 
#### Tesztelési terv hatóköre, célja:
- A tesztelési terv célja a tesztelés teljes körűségének biztosítása, a tesztelés során alkalmazott eljárások és megoldások meghatározásával.
- A teszt végrehajtásáért projektben résztvevő fejlesztő *Tolvaj Balázs*, és a tesztekést azt általa összeállított tesztcsapat hajtja végre a 2.1. fejezetben meghatározott módon.

### 1.2 Elvárások
#### Az alábbi alap elvárások képezik ennek a teszttervnek az alapját:
- Az olvasó ismeri az alapdokumentumokat, amelyek meghatározzák a rendszert. 
- Az **RIP** szervezeti egység / projektcsapat felelős a tesztadatok előállításáért.
- A tesztprogram az ebben a dokumentumban meghatározott tesztterv alapján fut. 

## 2.0 
#### Szükséges erőforrások
Ez a fejezet a teszteléshez szükséges erőforrásokat fejti ki.

### 2.1 
#### Feladatkörök és felelősségek (tesztcsapat meghatározása)
| Feladatkör  |  Felelősség/tevékenység |  Személy  |
|---|---|---|
|**Tesztelő:**| A teszt végrehajtása. Észrevételek dokumentálása. Teszt dokumentáció archiválása. |  Kiss Milán |
|**Teszt-koordinátor:**| Teszt terv készítése. A tesztterv jóváhagyatása a projektmenedzserrel. Teszt forgatókönyvek létrehozása. Inkonzisztenciák kezelése. Helyes és időbeni hibakezelés. Szükség esetén problémák eszkalálása a projekt menedzsernek. Végső riport készítése. Teszt dokumentum archiválása. Az észrevételek státuszának követése, ill. dokumentálása. A teszt végrehajtása. Észrevételek dokumentálása. |  Tolvaj Balázs |
|**Szakértő:**  |  A szakértő az észrevételek elemzi és megoldást javasol. |  Burus Bence  |
|**Projektvezető:**| Teszt terv jóváhagyása  Teszt forgatókönyv (testscript)| Répás Kristóf |

### 2.2 
#### Tesztkörnyezet
Ebben a részben meg kell határozni, hogy a tesztelés milyen környezetben történjen (fejlesztői vagy tesztkörnyezet), a környezetek hogyan érhetőek el, továbbá a tesztelők milyen hozzáféréssel végezzék a tesztelést.

| Környezet neve és feladata  |  A hozzáférés módja | Konfiguráció  |
|---|---|---|
| MS Visual Studio  2017 Communtity| Lincencelt termék | Projekt alapértemezett beállításai |
| MARINADB | Szabad szoftware | Projekt alapértemezett beállításai |

### 2.3 
#### Tesztadatok
A teszt végrehajtásához szükséges rekordok (tesztadatok) száma: 1
A tesztadatok elkészítéséért és feltöltéséért felelős személy: Tolvaj Balázs

A tesztadatoknak az alábbi követelményeknek kell megfelelniük:
- 	Az alapadatok értékkészlete az éles rendszerrel megegyező kell, hogy legyen.

### 2.4 
#### Leszállítandó teszt dokumentumok
Az összes teszt dokumentáció és leszállítandó a következő helyen érhető el: [LINK](https://github.com/afplabor2019/rip/tree/master/Kis%20projekt)

| Cím  |  Felelős személy | Szállítási gyakorisága  | Szállítás módja |
|---|---|---|---|
|  **Teszt terv:** |  Tolvaj Balázs |  Egyszeri |  github repository |
|  **Teszt-esetek:** | Tolvaj Balázs  |  3 naponta | github repository  |
|  **Tesztjegyzőkönyvek:** |  Tolvaj Balázs |  3 naponta |  github repository |
|  **Tesztelési jelentés:** |  Tolvaj Balázs |  Hetente  |  github repository |

### 2.5 
#### Tesztelési eszközök
- XAMPP *webszerver-szoftvercsomag* [LINK](https://www.apachefriends.org/hu/index.html)
  - PHP MyAdmin (MarinaDB)
- MS Visual Studio 2017 Communtity *C# IDEA*

## 3.0 
### Tesztelési terv
Ez a fejezet leírja a teszt típusát, a metodológiáját és a riport készítés módszerét. Emellett meghatározza a teszt elvárásokat, a teszt-esetek elvárt eredményeit, sikerességének kritériumait, a kockázatok kezelését és a hatáskörön kívül eseteket.

### 3.1 
#### Fejlesztői teszt
A fejlesztői tesztelés célja a rendszer alapvető funkcióinak ellenőrzése, a hibakezelés és az alapvető funkciók működésének vizsgálata
**Módszere:**
A webalkalmazsá SQL adatbázisa "DUMMY" (*Nem valós*) adatokkal kerül feltültésre a tesztelés adat.
Ezen adatok többségét úgynevett "Lorem Ipsum" típusú véletlenül generált szöveg teszi ki.

### 3.2
#### Prototípus (modul) teszt
A prototípustesztelés (vagy másik nevén modultesztelés) célja a rendszer már működő moduljainak önálló tesztelése, a modulon belüli hibák azonosításának és kiküszöbölésének érdekében. 
**Módszere:** 
A tesztelés a program összes osztályára és moduljára ki terjed.

### 3.3 
#### Integrációs teszt
Az integrációs teszt célja a rendszer más rendszerekhez történő illesztésének vizsgálata, a több rendszereken keresztül átívelő funkciók tesztelésének érdekében. Az adatmigrációs tesztelés az integrációs teszteléshez tartozik, ennek lényege, hogy a bevezetendő rendszerbe áttöltik azokat az adatokat, amelyekkel a rendszer dolgozni fog és letesztelik a betöltött adatok, illetve az adatokat kezelő funkciók helyességét. 
**Módszere:**
Az alkalmazás adatbázisába valós adatok kerülnek betöltésre.

### 3.4 
#### Elfogadási teszt
Az elfogadási teszt (angolul User Acceptance Test) célja a rendszer teljes funkcionalitásának vizsgálata a felhasználók szemszögéből
**Módszere:**
A teszt egy kontrol csoportal zajlik, egy külső cégen keresztül.

### 3.5 
#### Terheléses teszt
A terheléses teszt célja a tervezett kapacitások, valamint a rendelkezésre álló növekedési potenciál meghatározása.
**Módszere:**
A próba telepítést követően egy meghívott teszt közönéggel zajlik, szimulálva egy átlagos napi használatot.

### 3.6 
#### Biztonsági teszt (audit):
Biztonsági tesztelésre akkor van szükség, ha a rendszer szenzitív (pl. személyes vagy pénzügyi) adatokat kezel, vagy szabadon elérhető az internetről. 
**Módszere:**
A tesztett egy megbízott külső cég végzi.

### 3.7
#### Go live teszt
A go-live teszt egy próbaélesítés, melynek során a korábbi rendszerek továbbra is üzemelnek annak érdekében, hogy az élesítéskor keletkező problémák ne befolyásolják a normál üzemi működést.
**Módszere:**
A próba telepítés a megrendelő által választott webtárhelyen történik, a weboldalt a jövőben üzemeltető adminisztrátorok közreműködésével.
Továbbá a BETA tesztelők számárá elérhető az alkalmazás tesztelési célokból.

### 3.8 
#### Tesztelési feladatok, teszt-esetek leírása
A tesztelési feladat a következő teszt-eseteket foglalja magában:
- Fejlesztői teszt
- Prototípus (modul)

## 4.0 
### Tesztelési ütemterv, függőségek – tesztforgatókönyv

### 4.1 
#### Tesztelési jegyzőkönyv
A tesztelők a tesztforgatókönyvnek megfelelően elvégzik a tesztelést és az eredményt tesztjegyzőkönyvekben dokumentálják. A teszt kimenetelést minden esetben jelenteni kell a tesztkoordinátornak. A tesztkoordinátor a szakértőkkel együtt megoldást keres a problémákra, majd frissíti a tesztforgatókönyvet. Ha a problémát megoldották, a tesztelő újrakezdheti a tesztelést, majd dokumentálja az eredményeket. Ha a hiba továbbra is fennáll, és harmadik félen múlik a megoldása eszkalálni kell a problémát a projekt menedzsernek. 

### 4.2 
#### Tesztelési jelentés
A tesztelési jelentést a tesztkoordinátor készíti el. Ez egy részletes áttekintése a lefutott teszteknek, azok eredményeinek, státuszának és a megjegyzéseknek.
A tesztkoordinátor juttatja el a projektmenedzsernek a tesztelési jelentést. 

### 4.3 
#### Tesztelt elvárások 

Az alábbi funkcionális elvárások szerepelnek az üzleti illetve fejlesztői specifikációban, amelyek tesztelésre is kerültek: 
| #  | Leírás |
|---|---|
| 1. |  Felhasználó felület elemei |
| 2. |  bejletkezés,regisztráció funkcó tesztelése|
| 3. |  alap funkcók és megosztás |

### 4.4 
#### Elfogadási kritériumok
- Technikai, a teszt forgatókönyvben leírtak szerint.
- A projekt menedzser jóváhagyása a teszt leszállítandókra

## 5.0
### Tesztjegyzőkönyv

### 5.1 
#### Tesztelési jegyzőkönyv 

#### 1. felhasználói felület elemei

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A Windows FORM felhasználó felület hibáinak feltárása |
| A tesztelt folyamat/funkció leírása:  |  A teszt során lépésről lépésre tesztelésre kerülnek a menü pontok továbbá az esetleges esztétikai hibák feltárása. |
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal |
| A tesztelés dátuma és időpontja:  |  2020.01.11 11:00 |
| A tesztadatok típusa:  | SQL  |
| A tesztet végző személy(ek):  | Kiss Milán, Tolvaj Balázs  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  Megfelelő formázás |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | További finomhangolás szükséges |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Tolvaj Balázs |
|  Szervezeti egység/ beosztás: | Fejlesztő  |
|  Dátum: |  2020.01.11 13:00  |

#### 2. bejletkezés, regisztráció funkcó tesztelése

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A bejelentkezés menüpont tesztelése |
| A tesztelt folyamat/funkció leírása:  |  A felület viselkedése hibás felhasználónév / jelszó megadása esetén, megfelelő adatok esetén illetve többszöri hibás bevitelekor, továbbá új felhasználó fiók sikeres-e regisztrálása  |
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal |
| A tesztelés dátuma és időpontja:  |  2020.01.13 13:21 |
| A tesztadatok típusa:  | Szöveg  |
| A tesztet végző személy(ek):  | Tolvaj Balázs  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  A specifikációban taglalt viselkedés |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Tolvaj Balázs |
|  Szervezeti egység/ beosztás: | Fejlesztő  |
|  Dátum: |  2020.01.13 14:22  |

#### 3. alap funkcók és megosztás

|   |   |
|---|---|
| A teszt-eset leírás és célja:  | A rendszer specifikáciban taglalt alap funkciók tesztelése a jelenlegi állapot alapján |
| A tesztelt folyamat/funkció leírása:  |  A rendszer működésének esetleges kirtikus hibáinak, és hibás viselkedési hibák feltárása  |
| A tesztelés előfeltételei:  |  A programnak rendelkeznie kell minimum egy dummy adatbázissal |
| A tesztelés dátuma és időpontja:  |  2020.01.13 15:30 |
| A tesztadatok típusa:  | Szöveg  |
| A tesztet végző személy(ek):  | Tolvaj Balázs  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A teszt-eset elvárt eredménye:  |  A specifikációban taglalt viselkedés |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Tolvaj Balázs |
|  Szervezeti egység/ beosztás: | Fejlesztő  |
|  Dátum: |  2020.01.13 15:30  |

### 5.2 
### Jóváhagyások

|   |   |
|---|---|
|  Név: |  Répás Kristóf |
|  Szervezeti egység/ beosztás: | Projekt Manager  |
|  Dátum: |  2020.01.18 11:00  |

## 6 Tesztelési jelentés 

### 6.1 
#### Tesztelési jelentés -  1. felhasználói felület elemei
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "A program az elvársoknak megfelelőenműködik visszont néhány "nem szolványos" felbontást visszont russzol kezel" |
| A tesztelt folyamatok/funkciók/modulok leírása: |  A teszt során lépésről lépésre tesztelésre kerültek a menü pontok továbbá az esetleges esztétikai és formázási hibák tesztelésre kerültek Modulok: N/A |
| A tesztadatok típusa:  | N/A  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Tolvaj Balázs |
|  Szervezeti egység/ beosztás: | Fejlesztő  |
|  Dátum: |  2020.01.13 15:30  |

### 6.2 
#### Tesztelési jelentés -  2. bejletkezés, regisztráció funkcó tesztelése 
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "A bejentkezés és regisztráció opció lépésről lépésre tesztelésre került hibás és megfelelő adatokkal" |
| A tesztelt folyamatok/funkciók/modulok leírása: | modulok: manager.cs  |
| A tesztadatok típusa:  | szöveg  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Tolvaj Balázs |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.17 12:15  |

### 6.3 
#### Tesztelési jelentés -  3. alap funkcók és megosztás 
|   |   |
|---|---|
| A hivatkozott tesztjegyzőkönyvek rövid leírása és eredménye:  | "A tesztelés a program minden kommponensére kiterjedt egy átlagos napi használatott szimulálva." |
| A tesztelt folyamatok/funkciók/modulok leírása: | N/A  |
| A tesztadatok típusa:  | N/A  |
| A tesztelt rendszer beállításai:  | A program specifikációjában szereplő alap beálítások  |
| A tesztelés eredménye:  | **Megfelelt/élesíthető**  |
| Megjegyzések:  | -  |

**Tesztelést elvégezte**
|   |   |
|---|---|
|  Név: |  Tolvaj Balázs |
|  Szervezeti egység/ beosztás: | CSS designer, Test manager  |
|  Dátum: |  2020.01.13 15:30  |

## 7 Jóváhagyások

|   |   |
|---|---|
|  Név: |  Répás Kristóf |
|  Szervezeti egység/ beosztás: | Projekt Manager  |
|  Dátum: |  2020.01.20 11:00  |