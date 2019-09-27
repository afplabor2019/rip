# Követelmény Specifikáció

## 1. Jelenlegi üzleti folyamatok modellje

	1. Egy közvetítő oldal szeretné kibővíteni kínálatát, zenészekre specializálva. 
	2. A zenészek az általános közvetítő oldalon találhatnak egymásra, vagyis a keresés nincs zenészekre specializálva.
	3. A megrendelő keresőmotorja fejletlen, ezért a zenészekre szűrés esetén is jelennek meg nem oda tartozó találatok.

## 2. Igényelt üzleti folyamatok modellje
	
	1. A keresőmotor fejlesztése helyett a megrendelő egy zenészekre dedikált közvetítő szoftvert szeretne létrehozni. (Kliensszoftver)
	2. Egy olyan szoftver fejlesztésére van szükség, amely könnyebbé teszi az egyedül levő zenészek bandakeresését, illetve a hiányos bandák zenészkeresését.
	2. Az ügyfél igényeihez igazodva, a zenészek tulajdonságai jelenjenek meg, ha kell akkor referenciával.
	3. A felhasználók kapcsolatba léphetnek egymással használata során, mely könnyebbé teszi az emberek közti kommunikációt.

## 3. Követelmény lista

	K1: Alap adatok személyekről:
		A programnak tartalmaznia kell a személyek adatait: Név, Lakcím, Elérhetőség, Email, Telefonszám

	K2:Tartalmaznia kell a bandák/zenészek tulajdonságait:
		Milyen hangszeren játszanak? Milyen tagokat keresnek? Tudnak-e énekelni? stb.

	K3: Tartalmaznia kell egy privát chatboxot, ahol az emberek tudnak üzenetet küldeni a másik felhasználó számára.
	K4: Tartalmaznia kell egy checkboxot, mely jelzi, hogy a zenész valamilyen banda tagja-e vagy sem.

## 4. Vágyálomrendszer

	A kliensprogram teremtse meg a zenészek és bandák közötti minél könnyebb kapcsolatfelvételt. A zenész szakma követelményeinek figyelembevételével tartalmazzon a zenészekről és a bandákról minden szükséges információt. Ezen felül létre kell hozni egy olyan felületet, ahol a felhasználók megjeleníthetik a referenciájukat videó vagy hangfelvétel formájában.