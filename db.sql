use pettea;

/* mysql --host=mysql-vt2016.csc.kth.se */

/* TODO:
	Add every game played to a table ALT get eBot working on server
*/


CREATE TABLE users(
	uid VARCHAR(64) NOT NULL,
	userName VARCHAR(64), 
	mmr int, 
	cs int,
	cs1v1 int,
	dota int, 
	dota1v1 int,
	trivia int,
	gamesPlayed int,
	PRIMARY KEY (uid)
);

/*
UPDATE users SET cs = mmr, cs1v1 = 2500, dota = 2500, dota1v1 = 2500, trivia = 0;
UPDATE users SET cs = 2500, cs1v1 = 2500, dota = 2500, dota1v1 = 2500, trivia = 0, gamesPlayed = 0;

// This is left to do
ALTER TABLE users DROP mmr;

// New System to implement, easier to add new game rating

CREATE TABLE users(
	uid VARCHAR(64) NOT NULL,
	userName VARCHAR(64), 
	PRIMARY KEY (uid)
);
CREATE TABLE game(
	gameName VARCHAR(64) NOT NULL,
	PRIMARY KEY (gameName)
);
CREATE TABLE ratings(
	uid VARCHAR(64) NOT NULL,
	gameName VARCHAR(64) NOT NULL,
	userName VARCHAR(64),
	mmr int,
	gamesPlayed int,
	wins int,
	losses int,  
	PRIMARY KEY (uid, gameName),
	FOREIGN KEY (uid) REFERENCES users(uid),
	FOREIGN KEY (gameName) REFERENCES game(gameName),
	FOREIGN KEY (userName) REFERENCES users(userName)
);

*/
