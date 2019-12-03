0. Vezetői összefoglaló
Egy cég szeretné feldobni a hírközlő oldalát. Szeretné teljes mértékben újragondolni a kinézetet, a funkcionalitást, és a mai modern technika segítségével szeretné majd felvértezni az oldalát, hogy elsőként értesülhessenek a felhasználók a különböző kategóriájú hírekről. Szeretné lehetővé tenni a social media share-t, illetve a közvetlen hibabejelentő funkciót, hogy az oldaluk naprakész legyen, hibamentesen és gördülékenyen tudjon működni. Oldalukat teljesen a fehasználók igényei szerint szeretnék fejleszteni.

1. A rendszer céljai, és nem céljai
A rendszer célja a meglévő oldal rekreálása, modernebbé tétele, interaktívabbá, és felhasználóbaráttá váljon. A Social media platformok összekapcsolása az oldallal, szerkeszthetőség, illetve áttekinthetőbbé tétele.

2. Jelenlegi helyzet leírása
Egy hírszerkesztő, hírközlő oldal szeretné újragondolni az egész oldalának működését, és kinézetét.
Szeretné nyílvánosságra hozni hogy ki írta a cikket, mikor, hányan olvasták.
Szeretnék lehetővé tenni az olvasóik számára a regisztrációt, bejelentkezést.

3. A vágyálomrendszer leírása
Az oldal tegye lehetővé a trágár, obszcén kifejezések szűrését a kommentszekcióban. Az adminok moderálják a cikkeket. Lehessen keresni az oldalon szavak szerint, cikkekben, címekben. A cikkeket tetszés szerint lehessen értékelni. Legyen vendég oldal is melyen csak olvasni lehessen, módosítani, létrehozni ne.

4. A rendszerre vonatkozó külsõ megszorítások
A rendszerre vonatkozó külsö megszorítások közé tartoznak az alábbiak: - pályázat - törvények - rendeletek - szabványok és ajanlások Tekintsük először a pályázatot. Pályázat elnyerése esetén eleget kell tenni a pályázatban leírt feltételeknek is. Nem elegendő a saját magunk elé kitűzott céldátum, hanem figyelembe kell venni azt is, hogy a pályázat mennyi időre szól és mikor jár le. Mindezek mellett pályázat esetén meghatározottak azok is, hogy a pályázaton elnyert pénzt, a projekt mely részében, a projekt mely elemeire használhatjuk fel. Törvény esetében figyelembe kell venni azt a tényt, hogy a projekt mely országon belül készül és mely országban/országokban szeretnék a későbbiekben ezt forgalmazni és használni. A programnak eleget kell tennie az összes forgalmazni kívánt ország törvényeinek. Esetünkben, mivel egy játékos oktatásról van szó, így korhatáros tartalmakat nem tartalmazhat, illetve egyéb olyan ábrákat, szövegeket sem, amelyek a gyermekre káros hatással vannak és befolyásolják őt fejlődésében. Ezeken kívül még lehetnek külön erre a célra alkalmazott rendeletek, amelyeket szinten figyelembe kell venni. Mivel Magyarországon készül el a program, így ez esetben törvényileg a MAGYAR törvénykönyv szabályozásainak is meg kell felelnie. Összességét tekintve a gonololatjelek között és kapcsolat van, vagyis mindennek érvényesülnie kell egyszerre. Figyelembe kell venni a pályázati feltételeket, a törvényeket és rendeleteket és ügyeli kell a szabványokra. Ha az összes tényező közül bármelyik is hiányzik vagy hibás, akkor a projekt nem megfelelő és nem tökéletes.

5. Jelenlegi üzleti folyamatok modellje

	1. Rosszul optimalizált weboldal.
	2. Cikkek adatai nem nyilvánosak.
	3. Nincs bejelentkezési lehetőség az olvasóknak.
	4. Nincs kommentelési lehetőség.
	5. Url cím nem egyértelmű.

6. Igényelt üzleti folyamatok modellje

	1. Egy hírszerkesztő oldal szeretné újragondolni az egész oldalának működését, és kinézetét.
	2. Szeretné nyílvánosságra hozni hogy ki írta a cikket, mikor, hányan olvasták.
	3. Szeretnék lehetővé tenni a szerkesztők számára a regisztrációt, bejelentkezést.
	4. Szeretnének az olvasóknak bejelentkezés utáni kommentelési lehetőséget biztosítani.
	5. Szeretnének a kommentelésnél SQL injection elleni védelmet.
	6. A kommentelésnél szeretnék szűrni a vulgáris kifejezéseket.

7. Követelménylista
K1: Regisztrációs felület: A programnak lehetővé kell tennie a szerkesztők számára a regisztrációt. Kötelező mezők: Név, email cím.	
K2: A cikkek adatainak megjelenítése: ki írta és mikor, hányan olvasták.
K3: Az oldal designjának újragondolása.
K4: Hibabejelentő funkció.
K5: Login oldal, Error oldal.
K6: Tag-ek,cimkék: "Sci-fi, history, book",Social media share
K7: Legördülő menüben kategóriánként való listázás
K8: Társoldalakra való navigálás. 

8. Szereplők: - Felhasználó, vendég, szerkesztő

Felhasználó használati esetei: - Regisztráció: A felhasználó tud regisztrálni. - Bejelentkezés: A felhasználó be tud jelentkezni, ha már regisztrált. - A felhasználó közvetlen email-t küldhet az adminoknak hiba esetén. - Jelentést tehet közvetlen emailen keresztül az szerkesztők felé, helytelen, obszcén kifejezések észlelésekor, felülvizsgálatra. - Kommentelni képes, véleményt képes formálni az adott cikkről.

Szerkesztő használatai esetei: A szerkesztő tud regisztrálni. - Bejelentkezés: A szerkesztő be tud jelentkezni, ha már regisztrált. - A szerkesztő képes cikket/cikkeket írni és módosítani.  - A szerkesztő közvetlen email-t küldhet az adminoknak hiba esetén.

Admin használati esetei: - Új szerkesztők felvétele a rendszerbe.

Vendég használati esetei: Csak olvasni tud, hozzászólni, kommentelni, módosítani, létrehozni nem.

9. Követelményspecifikáció megfeleltetése
☑ - Elkészül	? - Nem biztos, hogy release napi funkció	☒ - Nem készül el a release napig

☑ - Regisztráció
☑ - Bejelentkezés
☑ - Vendég felület
☑ - Admin felület
☑ - Adatbázis feltöltése adatokkal
☑ - Főoldal
☑ - Cikkoldal

? - Cikkszerkesztő oldal

☒  - Jelszavak titkosítása
☒  - Keresés funkció
☒  - Felhasználói jogosultságokhoz tartozó funkciók (kommentelés, like-olás)

10. Képernyőtervek

11. Forgatókönyvek:

Felhasználó: ellátogat az url-re és megnézni az aktuális híreket. Ezután megnyithat egy adott cikket és a vágyálomrendszer szerint regisztráció után kommentelhet és like-olhat.
Szerkesztő: feltölthet, letörölhet, módosíthat cikkeket.
Admin: az oldal felhasználóinak jogköreiért, az oldal működésért felel. Az adminfelülethez csak ő fér hozzá.
KIEGÉSZÍTENI: OLYAN SZINTEN LE KELLENE ÍRNI, HOGY MIKOR HOVA KATTINT, LÉPÉSRŐL LÉPÉSRE HOGYAN NYIT MEG A FELHASZNÁLÓ EGY CIKKET, VAGY A SZERKESZTŐ HOGYAN TÖLT FEL EGY CIKKET.
FOLYAMATLEÍRÁS SZÖVEGESEN VAGY ÁBRÁVAL

12. fejezet
Fogalomszótár:
-[bug]: fejlesztési hiba ami által a program nem a várt eredményt hozza 
-[backend]: A kiszolgáló, ahonnan az alkalmazást el lehet érni 
-[frontend]:  egy réteg ami feladata a rendszerbõl kijutó adatok prezentálása, illetve a bejövõ adatok fogadása
-[web-service]:különbözõ programnyelveken írt és különbözõ platformokon futó szoftveralkalmazások interneten keresztül történõ adatcseréjére használt webszolgáltatások.
-[felhasználó felület]: A felhasználónak lehetősége van cikket publikálni, módosítani.
-[admin felület]: A admin módosításokra moderálásra képes.
KIEGÉSZÍTENI ONLINE CIKKÍRÁS FOGALMAIVAL
