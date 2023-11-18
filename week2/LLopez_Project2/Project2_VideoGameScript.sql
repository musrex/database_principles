USE VideoGameSystems;

/* Part 1 */

INSERT INTO Game(GameName, ReleaseDate, ConsoleName, NumPlayers, IsOnline)
VALUES ("Ratchet & Clank: Going Commando", "2003-11-11", "Play Station 2", "1", False);

INSERT INTO Game(GameName, ReleaseDate, ConsoleName, NumPlayers, IsOnline)
VALUES ("Metal Gear Solid 3: Snake Eater", "2004-11-17", "Play Station 2", "1", False);

INSERT INTO Game(GameName, ReleaseDate, ConsoleName, NumPlayers, IsOnline)
VALUES ("God of War", "2018-04-20", "Play Station 4", "1", True);

/* Part 2 */

/* a */
SELECT * FROM Game WHERE ConsoleName="Play Station";
/* Spyro the Dragon, 1998-09-09 */

/* b */
SELECT * FROM Game WHERE NumPlayers IS NULL;
UPDATE Game SET NumPlayers = 1 WHERE GameName = "Spyro the Dragon";
UPDATE Game SET NumPlayers = 1 WHERE GameName = "Animal Crossing";
UPDATE Game SET NumPlayers = 2 WHERE GameName = "Sonic the Hedgehog";
UPDATE Game SET NumPlayers = 2 WHERE GameName = "Sonic the Heghehog 2";


/* c */
SELECT * FROM Game WHERE ReleaseDate < '2000-01-01'; 
/* # Id	GameName	ReleaseDate	ConsoleName
9	Yoshi	1991-04-01	Nintendo Entertainment System			
10	Yoshi's Cookie	1992-06-23	Nintendo Entertainment System			
11	Yoshi's Safari	1995-01-21	Super Nintendo			
12	Yoshi's Island	1995-11-19	Super Nintendo			
13	Yoshi's Story	1997-04-07	Nintendo 64			
18	Poochy and Yoshi's Wooly World	1991-11-09	Nintendo 3DS			
36	Sonic the Hedgehog	1991-11-09	Sega Genesis		
37	Sonic the Hedgehog 2	1992-11-09	Sega Genesis		
38	Sonic the Hedgehog 3	1994-11-21	Sega Genesis		
39	Sonic Adventures	1991-11-09	Sega Dreamcast		
40	Sonic Adventure 2 Battle	1998-11-13	Game Cube		
48	Spyro the Dragon	1998-09-09	Play Station		
*/

/* d */
SELECT
	Game.GameName,
    Game.ConsoleName,
    Series.SeriesName
FROM Game
JOIN Series ON Game.Series = Series.Id
WHERE Game.ReleaseDate BETWEEN '1995-01-01' AND '2016-01-01';
/* # GameName	ConsoleName	SeriesName
Animal Crossing	Nintendo 64	Animal Crossing
Wild World	Nintendo DS	Animal Crossing
City Folk	Wii	 Animal Crossing
New Leaf	Nintendo 3DS	Animal Crossing
Happy Home Designer	Nintendo 3DS	Animal Crossing
Amiibo Festival	Wii U	Animal Crossing
Call of Duty	XBox 360	Call of Duty
Call of Duty	Play Station 3	Call of Duty
Call of Duty 2	XBox 360	Call of Duty
Call of Duty 3	Play Station 2	Call of Duty
Call of Duty 3	Play Station 3	Call of Duty
Call of Duty 3	Wii	Call of Duty
Call of Duty 3	XBox	Call of Duty
Call of Duty 3	XBox 360	Call of Duty
Call of Duty 4	Nintendo DS	Call of Duty
Call of Duty 4: Modern Warfare	XBox	Call of Duty
Call of Duty 4: Modern Warfare	Play Station 3	Call of Duty
Call of Duty 4: Modern Warfare	Wii	Call of Duty
Call of Duty: World at War	XBox 360	Call of Duty
Call of Duty: World at War	Nintendo DS	Call of Duty
Call of Duty: World at War	Play Station 3	Call of Duty
Call of Duty: World at War	Wii	Call of Duty
Sonic Adventure 2 Battle	Game Cube	Sonic
Sonic Heroes	Play Station 2	Sonic
Sonic Heroes	XBox	Sonic
Sonic Heroes	Game Cube	Sonic
Sonic Unleashed	Play Station 2	Sonic
Sonic Unleashed	Wii	Sonic
Sonic Unleashed	XBox 360	Sonic
Sonic Unleashed	Play Station 3	Sonic
Spyro the Dragon	Play Station	Spyro
Spyro's Adventure	Wii	Spyro
Spyro's Adventure	Nintendo DS	Spyro
Spyro's Adventure	Play Station 3	Spyro
Spyro's Adventure	Wii U	Spyro
Spyro's Adventure	XBox 360	Spyro
*/

/* e */
SELECT * 
FROM Game 
WHERE ConsoleName LIKE "Play Station%"; 
/*
# Id	GameName	ReleaseDate	ConsoleName	Series	NumPlayers	IsOnline
1. 48	Spyro the Dragon	1998-09-09	Play Station	7		
2. 23	Call of Duty 3	2006-11-07	Play Station 2	4		
3. 41	Sonic Heroes	2003-11-09	Play Station 2	6		
4. 44	Sonic Unleashed	2008-06-29	Play Station 2	6		
5. 54	Ratchet & Clank: Going Commando	2003-11-11	Play Station 2		1	0
6. 55	Metal Gear Solid 3: Snake Eater	2004-11-17	Play Station 2		1	0
7. 21	Call of Duty	2003-10-29	Play Station 3	4		
8. 24	Call of Duty 3	2006-11-07	Play Station 3	4		
9. 30	Call of Duty 4: Modern Warfare	2007-11-06	Play Station 3	4		
10. 34	Call of Duty: World at War	2011-11-11	Play Station 3	4		
11. 47	Sonic Unleashed	2008-06-29	Play Station 3	6		
12. 51	Spyro's Adventure	2011-10-13	Play Station 3	7		
13. 56	God of War	2018-04-20	Play Station 4		1	1
*/

/* f */
SELECT *
FROM Game
WHERE ConsoleName NOT LIKE "Play Station%";
/* # Id	GameName	ReleaseDate	ConsoleName	Series	NumPlayers	IsOnline
1	Animal Crossing	2001-04-14	Nintendo 64	1	1	
2	Wild World	2005-11-15	Nintendo DS	1		
3	City Folk	2011-11-09	Wii	1		
4	New Leaf	2013-06-12	Nintendo 3DS	1		
5	Happy Home Designer	2015-07-05	Nintendo 3DS	1		
6	Amiibo Festival	2015-11-13	Wii U	1		
7	New Horizons	2020-03-20	Switch	1		1
8	New Horizons Happy Home Paradise	2021-11-05	Switch	1		1
9	Yoshi	1991-04-01	Nintendo Entertainment System			
10	Yoshi's Cookie	1992-06-23	Nintendo Entertainment System			
11	Yoshi's Safari	1995-01-21	Super Nintendo			
12	Yoshi's Island	1995-11-19	Super Nintendo			
13	Yoshi's Story	1997-04-07	Nintendo 64			
14	Yoshi's Universal Gravitation	2004-11-09	Game Boy Advance			
15	Yoshi Touch and Go	2005-12-27	Nintendo DS			
16	Yoshi's Wooly World	2015-06-15	Wii U			
17	Yoshi's Island	2016-11-13	Nintendo DS			
18	Poochy and Yoshi's Wooly World	1991-11-09	Nintendo 3DS			
19	Yoshi's Crafted World	2019-03-29	Switch			
20	Call of Duty	2003-10-29	XBox 360	4		
22	Call of Duty 2	2005-10-25	XBox 360	4		
25	Call of Duty 3	2006-11-07	Wii	4		
26	Call of Duty 3	2006-11-07	XBox	4		
27	Call of Duty 3	2006-11-07	XBox 360	4		
28	Call of Duty 4	2006-11-07	Nintendo DS	4		
29	Call of Duty 4: Modern Warfare	2007-11-06	XBox	4		
31	Call of Duty 4: Modern Warfare	2007-11-06	Wii	4		
32	Call of Duty: World at War	2011-11-11	XBox 360	4		
33	Call of Duty: World at War	2011-11-11	Nintendo DS	4		
35	Call of Duty: World at War	2011-11-11	Wii	4		
36	Sonic the Hedgehog	1991-11-09	Sega Genesis	6		
37	Sonic the Hedgehog 2	1992-11-09	Sega Genesis	6		
38	Sonic the Hedgehog 3	1994-11-21	Sega Genesis	6		
39	Sonic Adventures	1991-11-09	Sega Dreamcast	6		
40	Sonic Adventure 2 Battle	1998-11-13	Game Cube	6		
42	Sonic Heroes	2003-11-09	XBox	6		
43	Sonic Heroes	2003-11-09	Game Cube	6		
45	Sonic Unleashed	2008-06-29	Wii	6		
46	Sonic Unleashed	2008-06-29	XBox 360	6		
49	Spyro's Adventure	2011-10-13	Wii	7		
50	Spyro's Adventure	2011-10-13	Nintendo DS	7		
52	Spyro's Adventure	2011-10-13	Wii U	7		
53	Spyro's Adventure	2011-10-13	XBox 360	7		
*/

/* Part 3 */
/* a */
ALTER TABLE Game DROP CONSTRAINT ValidGameReleaseDate;

ALTER TABLE Game
ADD CONSTRAINT ValidGameReleaseDate 
CHECK (ReleaseDate BETWEEN '1975-08-12' AND '2023-11-01');

/* b */
INSERT INTO Game(GameName, ReleaseDate, ConsoleName, NumPlayers, IsOnline)
VALUES ("Armored Core VI", "2023-08-25", "Play Station 4", "1", True);