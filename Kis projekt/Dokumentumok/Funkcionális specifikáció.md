0. Vezetői összefoglaló

Ennek a programnak a célja, hogy egy zenészekre és bandákra dedikált szoftverrel egyszerűbbé tegye a felhasználók kapcsolatfelvételét. 

1. A rendszer céljai, és nem céljai

A rendszer célja, hogy egy vagy több hangszeren játszó zenészek könnyebben találják meg azokat a bandákat, akik adott hangszeren játszó zenészt keresnek, illetve ez fordítva is működjön: a bandák is tudjanak hangszer alapján potenciális tagokat keresni. A rendszer célja, hogy a bandát kereső zenészek és a zenészeket kereső bandák rövid referenciáit megjelenítse a következő bekezdésben foglalt korláttal.
A rendszernek nem célja, hogy jogi támogatást nyújtson a bandáknak és zenészeknek, nem célja továbbá a bandák és zenészek reklámjainak megjelenítése.

2. Jelenlegi helyzet leírása

1. Egy közvetítő oldal szeretné kibővíteni kínálatát, zenészekre specializálva. 
2. A zenészek az általános közvetítő oldalon találhatnak egymásra, vagyis a keresés nincs zenészekre specializálva.
3. A megrendelő keresőmotorja fejletlen, ezért a zenészekre szűrés esetén is jelennek meg nem oda tartozó találatok.

3. A vágyálomrendszer leírása

A kliensprogram teremtse meg a zenészek és bandák közötti minél könnyebb kapcsolatfelvételt. A zenész szakma követelményeinek figyelembevételével tartalmazzon a zenészekről és a bandákról minden szükséges információt. Ezen felül létre kell hozni egy olyan felületet, ahol a felhasználók megjeleníthetik a referenciájukat videó vagy hangfelvétel formájában.
A rendszer már a bejelentkezésnél tegyen különbséget a zenészek és bandák között és az ennek megfelelő felhasználói felületet jelenítse meg.
Az ideális rendszer tartalmaz egy privát és egy publikus chat-et is.

4. A rendszerre vonatkozó külsõ megszorítások

A rendszerre vonatkozó külsö megszorítások közé tartoznak az alábbiak:
	- pályázat
	- törvények
	- rendeletek
	- szabványok és ajanlások
Tekintsük először a pályázatot. Pályázat elnyerése esetén eleget kell tenni a pályázatban leírt feltételeknek is. Nem elegendő a saját magunk elé kitűzott céldátum, 
hanem figyelembe kell venni azt is, hogy a pályázat mennyi időre szól és mikor jár le. Mindezek mellett pályázat esetén meghatározottak azok is, hogy a pályázaton 
elnyert pénzt, a projekt mely részében, a projekt mely elemeire használhatjuk fel.
Törvény esetében figyelembe kell venni azt a tényt, hogy a projekt mely országon belül készül és mely országban/országokban szeretnék a későbbiekben ezt forgalmazni 
és használni. A programnak eleget kell tennie az összes forgalmazni kívánt ország törvényeinek. Esetünkben, mivel egy játékos oktatásról van szó, így korhatáros tartalmakat nem tartalmazhat, illetve egyéb olyan ábrákat, szövegeket sem, amelyek a gyermekre káros hatással vannak és befolyásolják őt fejlődésében.
Ezeken kívül még lehetnek külön erre a célra alkalmazott rendeletek, amelyeket szinten figyelembe kell venni. Mivel Magyarországon készül el a program, így ez esetben
törvényileg a magyar törvénykönyv szabályozásainak is meg kell felelnie.
Összességét tekintve a gonololatjelek között és kapcsolat van, vagyis mindennek érvényesülnie kell egyszerre. Figyelembe kell venni a pályázati feltételeket,
a törvényeket és rendeleteket és ügyeli kell a szabványokra. Ha az összes tényező közül bármelyik is hiányzik vagy hibás, akkor a projekt nem megfelelő és nem 
tökéletes.

5. Jelenlegi üzleti folyamatok modellje

Az alábbi üzleti folyamatmodellt kell átalakítani az Igényelt üzleti folyamatok modellje c. fejezet alapján:
A jelenlegi üzleti modellben a megrendelő szoftvere minden szakmát ömlesztve jelenít meg. Ez azt jelenti, hogy ha egy pékségnek péksegédre van szüksége, akkor nem tud közvetlenül a péksegédekre szűrni, hanem biztonsági őrök, papok és boldog ministránsok is megjelennek a rekordok között. A rendszer nem mutatja meg a keresés találatainál, hogy ők mit keresnek. Például listázza a zenészeket, de nem tudjuk róluk, hogy bandatagok-e vagy éppen bandát keresnek.

6. Igényelt üzleti folyamatok modellje

1. A keresőmotor fejlesztése helyett a megrendelő egy zenészekre dedikált közvetítő szoftvert szeretne létrehozni. (Kliensszoftver)
2. Egy olyan szoftver fejlesztésére van szükség, amely könnyebbé teszi az egyedül levő zenészek bandakeresését, illetve a hiányos bandák zenészkeresését.
2. Az ügyfél igényeihez igazodva, a zenészek tulajdonságai jelenjenek meg, ha kell akkor referenciával.
3. A felhasználók kapcsolatba léphetnek egymással használata során, mely könnyebbé teszi az emberek közti kommunikációt.

7. Követelménylista
K0: Bejelentkező felület, ami elszeparálja a megjelenő felületet aszerint, hogy a felhasználó zenész vagy banda.
K1: A zenész felületen a képernyő bal oldalán jelenjen meg egy táblázat, amely kilistázza az adatbázisban lévő bandák adatait.
K2: A banda felületen a képernyő bal oldalán jelenlen meg egy táblázat, amely kilistázza az adatbázisban lévő zenészek adatait.
K3: A zenész és a banda felületen is legyen Keresés gomb, amely elindítja a táblázat adatainak listázását.
K4: Legyen lehetőség hangszerek alapján való szűrése.
K5: A zenész és a banda felületen legyen lehetőség chatelésre, amelyet egy chat ablak biztosít.
K6: Legyenek elérhetőek a zenészek és a bandák referenciaanyagai.
K7: A felhasználók jelszavait csak titkosított formában tárolhatja a rendszer.

8. Használati esetek

Szereplők:
	- Zenész
	- Banda

Zenész használati esetei:
	- Regisztráció: A zenész tud regisztrálni.
	- Bejelentkezés: A zenész be tud jelentkezni, ha már regisztrált.
	- A zenész képes keresést indítani bandák között.
	- A zenész a keresési eredményeknél meg tudja különböztetni a tagot kereső bandákat a teljes bandáktól.
	- A zenész láthatja a bandák referenciaanyagait.
	- A zenész indíthat publikus vagy privát csevegést akármelyik bandával.
	
Banda használati esetei: 
	- Regisztráció: A banda tud regisztrálni.
	- Bejelentkezés: A banda be tud jelentkezni, ha már regisztrált.
	- A banda képes keresést indítani zenészek között.
	- A banda a keresési eredményeknél meg tudja különböztetni a bandát kereső zenészeket a foglalt zenészektől.
	- A banda láthatja a zenészek referenciaanyagait.
	- A banda indíthat publikus vagy privát csevegést akármelyik zenésszel.

9. Követelményspecifikáció megfeleltetése
	☑ - Elkészül	? - Nem biztos, hogy release napi funkció	☒ - Nem készül el a release napig

	☑ - Regisztráció
	☑ - Bejelentkezés
	☑ - Zenész felület
	☑ - Banda felület
	?  - Csevegés
	?  - Adatbázis feltöltése adatokkal
	☒  - Jelszavak titkosítása
	☒  - Keresés funkció
	☒  - Referenciaanyagok megtekintése

10. Képernyőtervek

11. Forgatókönyvek:
 A szoftver futtatása közben kettő szereplõ figyelhetõ meg.

- Az első maga a kliens, ezen keresztül tudja a felhasználó használni, és élvezni az általunk készítendõ rendszert.
Regisztráció, majd bejelentkezés után használhatjuk a rendszer szolgáltatásait.
A zenészekre vagy bandákra szűrés után megjelenik a lehetőség, hogy a listázott elemekkel a felhasználó felvehesse a kapcsolatot.
- A második szereplõ a Web-service, ez felel azért, hogy a felhasználó által küldött adatokat el tudjuk tárolni, illetve a kliensek közötti kommunikáció működjön. (Például a csevegés.)

12. Funkció - követelmény megfeleltetés

F1: Zenész/banda keresés
	A K1, K2 és K3 követelmény adja a lelkét a programnak, így a zenész keresés release napi funkció. A funkció elkészítési prioritása a regisztráció és a bejelentkezés után a legmagasabb.
	
F2: Referenciaanyag megtekintése
	A K6 követelmény nem release napi funkció, megvalósítása akkor fog megtörténni, ha a Keresés tesztjei sikeresek voltak.

F3: Csevegés
	A K6-hoz hasonlóan a K5 követelmény nem release napi funkció, megvalósítása a Keresés sikeres tesztjei után fog megtörténni.
	
13. fejezet

Fogalomszótár:
--------------

	-[bug]: fejlesztési hiba ami által a program nem a várt eredményt hozza 
	-[backend]: A kiszolgáló, ahonnan az alkalmazást el lehet érni 
	-[frontend]:  egy réteg ami feladata a rendszerbõl kijutó adatok prezentálása, illetve a bejövõ adatok fogadása
	-[web-service]:különbözõ programnyelveken írt és különbözõ platformokon futó szoftveralkalmazások interneten keresztül történõ adatcseréjére használt webszolgáltatások.
	-[zenész felület]: A felhasználónak zenészként használja és bandákat keres.
	-[banda felület]: A felhasználó bandaként használja és zenészeket keres.